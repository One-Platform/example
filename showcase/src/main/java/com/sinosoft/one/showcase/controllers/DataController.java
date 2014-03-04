package com.sinosoft.one.showcase.controllers;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;
import com.sinosoft.one.mvc.web.instruction.reply.Reply;
import com.sinosoft.one.mvc.web.instruction.reply.Replys;
import com.sinosoft.one.mvc.web.instruction.reply.transport.Json;
import com.sinosoft.one.showcase.model.ProjectRelease;
import com.sinosoft.one.showcase.model.Repository;
import com.sinosoft.one.showcase.model.Version;

/**
 * Created by bin on 14-3-4.
 */
@Path("")
public class DataController {

    @Get("webVersion")
    public Reply webVersion(){
        Version version = new Version();
        version.setId("one-web");
        version.setName("one-web");
        version.setRepoUrl("http://github.com/spring-projects/spring-framework");
        version.setSiteUrl("http://projects.spring.io/spring-framework");
        version.setCategory("active");
        ProjectRelease projectRelease = new ProjectRelease();
        projectRelease.setReleaseStatus("SNAPSHOT");
        projectRelease.setRefDocUrl("http://docs.spring.io/spring/docs/4.0.3.BUILD-SNAPSHOT/spring-framework-reference/htmlsingle/");
        projectRelease.setApiDocUrl("http://docs.spring.io/spring/docs/4.0.3.BUILD-SNAPSHOT/javadoc-api/");
        projectRelease.setGroupId("org.springframework");
        projectRelease.setArtifactId("spring-framework");
        Repository repository = new Repository();
        repository.setId("spring-snapshots");
        repository.setName("Spring Snapshots");
        repository.setUrl("http://repo.spring.io/snapshot");
        repository.setSnapshotsEnabled(true);
        projectRelease.setRepository(repository);
        projectRelease.setVersion("4.0.3.BUILD-SNAPSHOT");
        projectRelease.setVersionDisplayName("4.0.3");
        projectRelease.setCurrent(false);
        projectRelease.setGeneralAvailability(false);
        projectRelease.setPreRelease(false);
        projectRelease.setSnapshot(true);
        version.getProjectReleases().add(projectRelease);
        return Replys.with(version).as(Json.class);
    }
}
