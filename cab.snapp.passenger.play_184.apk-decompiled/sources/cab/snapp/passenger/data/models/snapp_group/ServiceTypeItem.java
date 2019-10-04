package cab.snapp.passenger.data.models.snapp_group;

import com.google.gson.a.c;

public class ServiceTypeItem {
    @c("track_id")
    private String appmetricaTrackId;
    @c("icon")
    private String iconUrl;
    @c("top_bar_hidden")
    private boolean isTopBarHidden;
    @c("name")
    private String name;
    @c("should_redirect_to_pwa")
    private boolean shouldRedirectToPWA;
    @c("type")
    private int type;
    @c("pwa_url")
    private String url;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public boolean isShouldRedirectToPWA() {
        return this.shouldRedirectToPWA;
    }

    public void setShouldRedirectToPWA(boolean z) {
        this.shouldRedirectToPWA = z;
    }

    public String getAppmetricaTrackId() {
        return this.appmetricaTrackId;
    }

    public boolean isTopBarHidden() {
        return this.isTopBarHidden;
    }
}
