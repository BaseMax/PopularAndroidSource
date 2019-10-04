package cab.snapp.passenger.data.models.snapp_group;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class ServiceItem implements Parcelable {
    public static final int CAB = 1;
    public static final int CHARGE = 4;
    public static final Parcelable.Creator<ServiceItem> CREATOR = new Parcelable.Creator<ServiceItem>() {
        public final ServiceItem createFromParcel(Parcel parcel) {
            return new ServiceItem(parcel);
        }

        public final ServiceItem[] newArray(int i) {
            return new ServiceItem[i];
        }
    };
    public static final int FOOD = 6;
    public static final int HOTEL = 7;
    public static final int MALL = 5;
    public static final int TRIP = 2;
    @c("track_id")
    private String appmetricaTrackId;
    @c("badge_background_color")
    private String badgeBackgroundColor;
    @c("badge_text")
    private String badgeText;
    @c("badge_text_color")
    private String badgeTextColor;
    @c("icon")
    private String iconUrl;
    @c("id")
    private int id;
    @c("status")
    private boolean isActive;
    @c("top_bar_hidden")
    private boolean isTopBarHidden;
    @c("meta")
    private ServiceMeta meta;
    @c("name")
    private String name;
    @c("referral_link")
    private String referralLink;

    public int describeContents() {
        return 0;
    }

    public ServiceItem() {
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setActive(boolean z) {
        this.isActive = z;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
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

    public void setAppmetricaTrackId(String str) {
        this.appmetricaTrackId = str;
    }

    public boolean isTopBarHidden() {
        return this.isTopBarHidden;
    }

    public String getBadgeBackgroundColor() {
        return this.badgeBackgroundColor;
    }

    public String getBadgeTextColor() {
        return this.badgeTextColor;
    }

    public String getBadgeText() {
        return this.badgeText;
    }

    public ServiceMeta getMeta() {
        return this.meta;
    }

    public void setMeta(ServiceMeta serviceMeta) {
        this.meta = serviceMeta;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeByte(this.isActive ? (byte) 1 : 0);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.referralLink);
        parcel.writeString(this.appmetricaTrackId);
        parcel.writeByte(this.isTopBarHidden ? (byte) 1 : 0);
        parcel.writeString(this.badgeBackgroundColor);
        parcel.writeString(this.badgeTextColor);
        parcel.writeString(this.badgeText);
        parcel.writeParcelable(this.meta, i);
    }

    protected ServiceItem(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        boolean z = true;
        this.isActive = parcel.readByte() != 0;
        this.iconUrl = parcel.readString();
        this.referralLink = parcel.readString();
        this.appmetricaTrackId = parcel.readString();
        this.isTopBarHidden = parcel.readByte() == 0 ? false : z;
        this.badgeBackgroundColor = parcel.readString();
        this.badgeTextColor = parcel.readString();
        this.badgeText = parcel.readString();
        this.meta = (ServiceMeta) parcel.readParcelable(ServiceMeta.class.getClassLoader());
    }
}
