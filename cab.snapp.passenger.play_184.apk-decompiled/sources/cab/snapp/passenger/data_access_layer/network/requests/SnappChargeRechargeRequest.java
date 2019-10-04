package cab.snapp.passenger.data_access_layer.network.requests;

import android.os.Parcel;
import android.os.Parcelable;
import cab.snapp.passenger.data.models.charge.SIMChargeType;
import cab.snapp.snappnetwork.model.d;

public class SnappChargeRechargeRequest extends d implements Parcelable {
    public static final Parcelable.Creator<SnappChargeRechargeRequest> CREATOR = new Parcelable.Creator<SnappChargeRechargeRequest>() {
        public final SnappChargeRechargeRequest createFromParcel(Parcel parcel) {
            return new SnappChargeRechargeRequest(parcel);
        }

        public final SnappChargeRechargeRequest[] newArray(int i) {
            return new SnappChargeRechargeRequest[i];
        }
    };
    public static final String DEEP_LINK_AFTER_CHARGE = "snapp://open/charge";
    private long amount;
    private String mobileNumber;
    private String operator;
    private String returnUrl;
    private SIMChargeType type;
    private String userMobileNumber;

    public int describeContents() {
        return 0;
    }

    public SnappChargeRechargeRequest(long j, String str, String str2, String str3, SIMChargeType sIMChargeType, String str4) {
        this.amount = j;
        this.mobileNumber = str;
        this.operator = str2;
        this.returnUrl = str3;
        this.type = sIMChargeType;
        this.userMobileNumber = str4;
    }

    public long getAmount() {
        return this.amount;
    }

    public void setAmount(long j) {
        this.amount = j;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public String getOperator() {
        return this.operator;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public String getReturnUrl() {
        return this.returnUrl;
    }

    public void setReturnUrl(String str) {
        this.returnUrl = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.amount);
        parcel.writeString(this.mobileNumber);
        parcel.writeString(this.operator);
        parcel.writeString(this.returnUrl);
        SIMChargeType sIMChargeType = this.type;
        parcel.writeInt(sIMChargeType == null ? -1 : sIMChargeType.ordinal());
        parcel.writeString(this.userMobileNumber);
    }

    protected SnappChargeRechargeRequest(Parcel parcel) {
        SIMChargeType sIMChargeType;
        this.amount = parcel.readLong();
        this.mobileNumber = parcel.readString();
        this.operator = parcel.readString();
        this.returnUrl = parcel.readString();
        int readInt = parcel.readInt();
        if (readInt == -1) {
            sIMChargeType = null;
        } else {
            sIMChargeType = SIMChargeType.values()[readInt];
        }
        this.type = sIMChargeType;
        this.userMobileNumber = parcel.readString();
    }
}
