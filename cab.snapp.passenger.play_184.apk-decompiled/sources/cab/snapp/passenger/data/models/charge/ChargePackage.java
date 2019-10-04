package cab.snapp.passenger.data.models.charge;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import java.util.ArrayList;

public class ChargePackage implements Parcelable {
    public static final Parcelable.Creator<ChargePackage> CREATOR = new Parcelable.Creator<ChargePackage>() {
        public final ChargePackage createFromParcel(Parcel parcel) {
            return new ChargePackage(parcel);
        }

        public final ChargePackage[] newArray(int i) {
            return new ChargePackage[i];
        }
    };
    @c("amounts")
    private ArrayList<Long> amounts;
    @c("customAmountEnable")
    private boolean customAmountEnable;
    @c("id")
    private long id;
    @c("isDefault")
    private boolean isDefault = false;
    @c("maxAmount")
    private long maxAmount;
    @c("minAmount")
    private long minAmount;
    @c("displayType")
    private String persianType;
    @c("type")
    private SIMChargeType type;

    public int describeContents() {
        return 0;
    }

    public ChargePackage(String str, SIMChargeType sIMChargeType) {
        this.persianType = str;
        this.type = sIMChargeType;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getPersianType() {
        return this.persianType;
    }

    public void setPersianType(String str) {
        this.persianType = str;
    }

    public SIMChargeType getType() {
        return this.type;
    }

    public void setType(SIMChargeType sIMChargeType) {
        this.type = sIMChargeType;
    }

    public ArrayList<Long> getAmounts() {
        return this.amounts;
    }

    public void setAmounts(ArrayList<Long> arrayList) {
        this.amounts = arrayList;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public void setDefault(boolean z) {
        this.isDefault = z;
    }

    public boolean isCustomAmountEnable() {
        return this.customAmountEnable;
    }

    public void setCustomAmountEnable(boolean z) {
        this.customAmountEnable = z;
    }

    public long getMinAmount() {
        return this.minAmount;
    }

    public void setMinAmount(long j) {
        this.minAmount = j;
    }

    public long getMaxAmount() {
        return this.maxAmount;
    }

    public void setMaxAmount(long j) {
        this.maxAmount = j;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.persianType);
        SIMChargeType sIMChargeType = this.type;
        parcel.writeInt(sIMChargeType == null ? -1 : sIMChargeType.ordinal());
        parcel.writeList(this.amounts);
        parcel.writeByte(this.isDefault ? (byte) 1 : 0);
        parcel.writeByte(this.customAmountEnable ? (byte) 1 : 0);
        parcel.writeLong(this.minAmount);
        parcel.writeLong(this.maxAmount);
    }

    public ChargePackage() {
    }

    protected ChargePackage(Parcel parcel) {
        SIMChargeType sIMChargeType;
        boolean z = false;
        this.id = parcel.readLong();
        this.persianType = parcel.readString();
        int readInt = parcel.readInt();
        if (readInt == -1) {
            sIMChargeType = null;
        } else {
            sIMChargeType = SIMChargeType.values()[readInt];
        }
        this.type = sIMChargeType;
        this.amounts = new ArrayList<>();
        parcel.readList(this.amounts, Long.class.getClassLoader());
        this.isDefault = parcel.readByte() != 0;
        this.customAmountEnable = parcel.readByte() != 0 ? true : z;
        this.minAmount = parcel.readLong();
        this.maxAmount = parcel.readLong();
    }
}
