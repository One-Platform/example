package com.sinosoft.one.showcase.model;

/**
 * Created by bin on 14-3-4.
 */
public class Repository{

    private String id;
    private String name;
    private String url;
    private boolean snapshotsEnabled;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isSnapshotsEnabled() {
        return snapshotsEnabled;
    }

    public void setSnapshotsEnabled(boolean snapshotsEnabled) {
        this.snapshotsEnabled = snapshotsEnabled;
    }
}