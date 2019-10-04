package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.passenger.data.models.ProfileMeta;
import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class UpdateProfileRequest extends d {
    @c("fullname")
    private String fullName;
    @c("phone")
    private String phone;
    @c("meta")
    private ProfileMeta snappPAssengerProfileMeta;

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public ProfileMeta getProfileMeta() {
        return this.snappPAssengerProfileMeta;
    }

    public void setProfileMeta(ProfileMeta profileMeta) {
        this.snappPAssengerProfileMeta = profileMeta;
    }

    public String toString() {
        return "UpdateProfileRequest{fullName='" + this.fullName + '\'' + ", phone='" + this.phone + '\'' + ", snappPAssengerProfileMeta=" + this.snappPAssengerProfileMeta + '}';
    }
}
