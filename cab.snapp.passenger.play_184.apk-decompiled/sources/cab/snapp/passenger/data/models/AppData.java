package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class AppData {
    @c("supported")
    private int latestSupportedVersionCode;
    @c("latest")
    private int latestVersionCode;
    @c("update_uri")
    private String updateUri;

    public int getLatestVersionCode() {
        return this.latestVersionCode;
    }

    public void setLatestVersionCode(int i) {
        this.latestVersionCode = i;
    }

    public int getLatestSupportedVersionCode() {
        return this.latestSupportedVersionCode;
    }

    public void setLatestSupportedVersionCode(int i) {
        this.latestSupportedVersionCode = i;
    }

    public String getUpdateUri() {
        return this.updateUri;
    }

    public void setUpdateUri(String str) {
        this.updateUri = str;
    }

    public String toString() {
        return "AppData{latestVersionCode=" + this.latestVersionCode + ", latestSupportedVersionCode=" + this.latestSupportedVersionCode + ", updateUri='" + this.updateUri + '\'' + '}';
    }
}
