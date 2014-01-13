package com.sinosoft.one.showcase.component;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.RemovalListener;
import com.google.common.cache.RemovalListeners;
import com.google.common.cache.RemovalNotification;
import com.sinosoft.one.showcase.controllers.component.CacheController;

public class CacheTest {

	private static final Logger logger=LoggerFactory.getLogger(CacheController.class);

	/**
	 * 方式1：使用CacheLoader，需要重写原子操作load(Objece key)。
	 */
	private Cache<String, String> loaderCache=CacheBuilder.newBuilder()
			.maximumSize(10)
			.expireAfterWrite(100, TimeUnit.SECONDS)
			.expireAfterAccess(80, TimeUnit.SECONDS)
			.refreshAfterWrite(50, TimeUnit.SECONDS)
			.build(
					new CacheLoader<String, String>() {
						@Override
						public String load(String key) throws Exception {
							return "your query";
						}
						
					}
				);
	
	/**
	 * 方式2：使用Callable，不需要指定原子操作，调用get时再指定。
	 */
	private Cache<String, String> callableCache=CacheBuilder.newBuilder()
			.maximumSize(10)
			.expireAfterWrite(100, TimeUnit.SECONDS)
			.expireAfterAccess(80, TimeUnit.SECONDS)
			.refreshAfterWrite(50, TimeUnit.SECONDS)
			.build();
	
	public void callableExample() throws ExecutionException{
		/**
		 * 在get方法内，重写Callable.call()。
		 */
		String callableValue=callableCache.get("key", new Callable<String>() {
			@Override
			public String call() throws Exception {
				return "your query";
			}
		});
	}
	
	/**
	 * 为自己的缓存设置删除监听器，只需重写RemovalNotification.onRemoval()。
	 */
	RemovalListener<String,String> removalListener = new RemovalListener<String,String>(){
		  public void onRemoval(RemovalNotification<String,String> removal){
		    logger.info("listener executor,remove reason:{}",removal.getCause().name());
		  }
		};
	CacheLoader<String,String> loader =new CacheLoader<String,String>(){
			public String load(String key)throws Exception{
			    return "loading"+key;
			  }
			};
	/**
	 * 删除的监听器操作默认是以同步方式执行的，这会降低缓存的性能，所以建议使用异步方式（RemovalListeners.asynchronous()）。
	 * Executors.newSingleThreadExecutor()是执行该监听器的线程。
	 */
	Cache listenerCache=CacheBuilder.newBuilder()
			.maximumSize(10)
			.expireAfterAccess(2, TimeUnit.SECONDS)
			.expireAfterWrite(2, TimeUnit.SECONDS)
			.removalListener(RemovalListeners.asynchronous(removalListener, Executors.newSingleThreadExecutor()))
			.build(loader);
}
