package cab.snapp.passenger.data.models.snapp_group;

import com.google.gson.a.c;

public class BannerItem {
    @c("action_title")
    private String actionTitle;
    @c("track_id")
    private String appmetricaTrackId;
    @c("description")
    private String description;
    @c("image_url")
    private String imageUrl;
    @c("is_dark")
    private boolean isDark;
    @c("top_bar_hidden")
    private boolean isTopBarHidden;
    @c("referral_link")
    private String referralLink;
    @c("title")
    private String title;

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public boolean isDark() {
        return this.isDark;
    }

    public void setDark(boolean z) {
        this.isDark = z;
    }

    public String getActionTitle() {
        return this.actionTitle;
    }

    public void setActionTitle(String str) {
        this.actionTitle = str;
    }

    public String getReferralLink() {
        return this.referralLink;
    }

    public void setReferralLink(String str) {
        this.referralLink = str;
    }

    public String getAppmetricaTrackId() {
        return this.appmetricaTrackId;
    }

    public boolean isTopBarHidden() {
        return this.isTopBarHidden;
    }
}
