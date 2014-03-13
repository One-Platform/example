package com.sinosoft.one.showcase.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by bin on 14-3-4.
 * Ajax请求返回的数据，版本信息
 */
public class Version {

    private String id;
    private String name;
    private String repoUrl;
    private String siteUrl;
    private String category;
    private List<ProjectRelease> projectReleases = new ArrayList<ProjectRelease>();

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

    public String getRepoUrl() {
        return repoUrl;
    }

    public void setRepoUrl(String repoUrl) {
        this.repoUrl = repoUrl;
    }

    public String getSiteUrl() {
        return siteUrl;
    }

    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<ProjectRelease> getProjectReleases() {
        return projectReleases;
    }

    public void setProjectReleases(List<ProjectRelease> projectReleases) {
        this.projectReleases = projectReleases;
    }


}
