package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class ServiceTypeModel {
    @c("can_use_voucher")
    private boolean canUseVoucher;
    @c("is_enabled")
    private boolean isEnabled;
    @c("is_new")
    private boolean isNew;
    @c("is_ride_options_enabled")
    private boolean isRideOptionsEnabled;
    @c("type")
    private int serviceType;
    @c("description")
    private String stDesc;
    @c("photo_url")
    private String stImageURl;
    @c("name")
    private String stName;

    public int getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(int i) {
        this.serviceType = i;
    }

    public String getStImageURl() {
        return this.stImageURl;
    }

    public void setStImageURl(String str) {
        this.stImageURl = str;
    }

    public String getStDesc() {
        return this.stDesc;
    }

    public void setStDesc(String str) {
        this.stDesc = str;
    }

    public boolean isRideOptionsEnabled() {
        return this.isRideOptionsEnabled;
    }

    public void setRideOptionsEnabled(boolean z) {
        this.isRideOptionsEnabled = z;
    }

    public boolean isCanUseVoucher() {
        return this.canUseVoucher;
    }

    public void setCanUseVoucher(boolean z) {
        this.canUseVoucher = z;
    }

    public String getStName() {
        return this.stName;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public void setNew(boolean z) {
        this.isNew = z;
    }
}
