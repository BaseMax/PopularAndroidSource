package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class SnappPusher {
    @c("app_key")
    private String appKey;
    @c("auth_url")
    private String authUrl;
    @c("channel")
    private String channel;
    @c("cluster")
    private String cluster;
    @c("is_enabled")
    private boolean isEnabled = true;

    public String getAppKey() {
        return this.appKey;
    }

    public void setAppKey(String str) {
        this.appKey = str;
    }

    public String getChannel() {
        return this.channel;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public String getAuthUrl() {
        return this.authUrl;
    }

    public void setAuthUrl(String str) {
        this.authUrl = str;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public String getCluster() {
        return this.cluster;
    }

    public void setCluster(String str) {
        this.cluster = str;
    }

    public String toString() {
        return "SnappPusher{appKey='" + this.appKey + '\'' + ", channel='" + this.channel + '\'' + ", authUrl='" + this.authUrl + '\'' + ", isEnabled=" + this.isEnabled + ", cluster='" + this.cluster + '\'' + '}';
    }
}
