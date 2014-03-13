package com.sinosoft.one.showcase.model;

/**
 * Created by bin on 14-3-4.
 */
public class ProjectRelease {

    private String releaseStatus;
    private String refDocUrl;
    private String apiDocUrl;
    private String groupId;
    private String artifactId;
    private Repository repository;
    private String version;
    private String versionDisplayName;
    private boolean current;
    private boolean generalAvailability;
    private boolean preRelease;
    private boolean snapshot;

    public String getReleaseStatus() {
        return releaseStatus;
    }

    public void setReleaseStatus(String releaseStatus) {
        this.releaseStatus = releaseStatus;
    }

    public String getRefDocUrl() {
        return refDocUrl;
    }

    public void setRefDocUrl(String refDocUrl) {
        this.refDocUrl = refDocUrl;
    }

    public String getApiDocUrl() {
        return apiDocUrl;
    }

    public void setApiDocUrl(String apiDocUrl) {
        this.apiDocUrl = apiDocUrl;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getArtifactId() {
        return artifactId;
    }

    public void setArtifactId(String artifactId) {
        this.artifactId = artifactId;
    }

    public Repository getRepository() {
        return repository;
    }

    public void setRepository(Repository repository) {
        this.repository = repository;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getVersionDisplayName() {
        return versionDisplayName;
    }

    public void setVersionDisplayName(String versionDisplayName) {
        this.versionDisplayName = versionDisplayName;
    }

    public boolean isCurrent() {
        return current;
    }

    public void setCurrent(boolean current) {
        this.current = current;
    }

    public boolean isGeneralAvailability() {
        return generalAvailability;
    }

    public void setGeneralAvailability(boolean generalAvailability) {
        this.generalAvailability = generalAvailability;
    }

    public boolean isPreRelease() {
        return preRelease;
    }

    public void setPreRelease(boolean preRelease) {
        this.preRelease = preRelease;
    }

    public boolean isSnapshot() {
        return snapshot;
    }

    public void setSnapshot(boolean snapshot) {
        this.snapshot = snapshot;
    }


}