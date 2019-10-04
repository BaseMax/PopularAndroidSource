package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.ProfileMeta;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class ProfileResponse extends f {
    @c("cellphone")
    private String cellphone;
    @c("email")
    private String email;
    @c("email_verified")
    private int emailVerified;
    @c("fullname")
    private String fullname;
    @c("has_message")
    private boolean hasMessage;
    @c("need_fingerprint")
    private boolean needFingerPrint;
    @c("photo_url")
    private String photoUrl;
    @c("meta")
    private ProfileMeta profileMeta;
    @c("referral_code")
    private String referralCode;

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getCellphone() {
        return this.cellphone;
    }

    public void setCellphone(String str) {
        this.cellphone = str;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public String getReferralCode() {
        return this.referralCode;
    }

    public void setReferralCode(String str) {
        this.referralCode = str;
    }

    public String getFullname() {
        return this.fullname;
    }

    public void setFullname(String str) {
        this.fullname = str;
    }

    public boolean isHasMessage() {
        return this.hasMessage;
    }

    public void setHasMessage(boolean z) {
        this.hasMessage = z;
    }

    public ProfileMeta getProfileMeta() {
        return this.profileMeta;
    }

    public void setProfileMeta(ProfileMeta profileMeta2) {
        this.profileMeta = profileMeta2;
    }

    public boolean isNeedFingerPrint() {
        return this.needFingerPrint;
    }

    public void setNeedFingerPrint(boolean z) {
        this.needFingerPrint = z;
    }

    public int getEmailVerified() {
        return this.emailVerified;
    }

    public void setEmailVerified(int i) {
        this.emailVerified = i;
    }

    public String toString() {
        return "SnappPassengerProfile{email='" + this.email + '\'' + ", fullname='" + this.fullname + '\'' + ", cellphone='" + this.cellphone + '\'' + ", photoUrl='" + this.photoUrl + '\'' + ", referralCode='" + this.referralCode + '\'' + ", hasMessage=" + this.hasMessage + ", profileMeta=" + this.profileMeta + ", needFingerPrint=" + this.needFingerPrint + ", emailVerified=" + this.emailVerified + '}';
    }
}
