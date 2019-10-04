package cab.snapp.passenger.data.models.charge;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import java.util.List;

public class SIMChargeOperator implements Parcelable {
    public static final Parcelable.Creator<SIMChargeOperator> CREATOR = new Parcelable.Creator<SIMChargeOperator>() {
        public final SIMChargeOperator createFromParcel(Parcel parcel) {
            return new SIMChargeOperator(parcel);
        }

        public final SIMChargeOperator[] newArray(int i) {
            return new SIMChargeOperator[i];
        }
    };
    @c("onImage")
    private String activeUrl;
    @c("color")
    private String colorHexCode;
    @c("id")
    private long id;
    @c("offImage")
    private String inactiveUrl;
    @c("active")
    private boolean isActive;
    @c("name")
    private String name;
    @c("displayName")
    private String persianName;
    @c("preNumbers")
    private List<String> preNumbers;

    public int describeContents() {
        return 0;
    }

    public SIMChargeOperator() {
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getPersianName() {
        return this.persianName;
    }

    public void setPersianName(String str) {
        this.persianName = str;
    }

    public Boolean getActive() {
        return Boolean.valueOf(this.isActive);
    }

    public void setActive(Boolean bool) {
        this.isActive = bool.booleanValue();
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setActive(boolean z) {
        this.isActive = z;
    }

    public String getActiveUrl() {
        return this.activeUrl;
    }

    public void setActiveUrl(String str) {
        this.activeUrl = str;
    }

    public String getInactiveUrl() {
        return this.inactiveUrl;
    }

    public void setInactiveUrl(String str) {
        this.inactiveUrl = str;
    }

    public List<String> getPreNumbers() {
        return this.preNumbers;
    }

    public void setPreNumbers(List<String> list) {
        this.preNumbers = list;
    }

    public String getColorHexCode() {
        return this.colorHexCode;
    }

    public int getBackgroundColor() {
        int rgb = Color.rgb(127, 127, 127);
        try {
            return this.colorHexCode != null ? Color.parseColor(this.colorHexCode) : rgb;
        } catch (Exception unused) {
            return rgb;
        }
    }

    public void setColorHexCode(String str) {
        this.colorHexCode = str;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof SIMChargeOperator)) {
            return super.equals(obj);
        }
        if (this.id == ((SIMChargeOperator) obj).id) {
            return true;
        }
        return false;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isActive ? (byte) 1 : 0);
        parcel.writeString(this.colorHexCode);
        parcel.writeLong(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.persianName);
        parcel.writeString(this.activeUrl);
        parcel.writeString(this.inactiveUrl);
        parcel.writeStringList(this.preNumbers);
    }

    protected SIMChargeOperator(Parcel parcel) {
        this.isActive = parcel.readByte() != 0;
        this.colorHexCode = parcel.readString();
        this.id = parcel.readLong();
        this.name = parcel.readString();
        this.persianName = parcel.readString();
        this.activeUrl = parcel.readString();
        this.inactiveUrl = parcel.readString();
        this.preNumbers = parcel.createStringArrayList();
    }
}
