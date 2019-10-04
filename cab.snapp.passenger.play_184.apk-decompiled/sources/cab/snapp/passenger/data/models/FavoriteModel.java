package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class FavoriteModel implements Parcelable {
    public static final Parcelable.Creator<FavoriteModel> CREATOR = new Parcelable.Creator<FavoriteModel>() {
        public final FavoriteModel createFromParcel(Parcel parcel) {
            return new FavoriteModel(parcel);
        }

        public final FavoriteModel[] newArray(int i) {
            return new FavoriteModel[i];
        }
    };
    @c("detailed_address")
    private String detailAddress;
    @c("location")
    private FormattedAddress formattedAddress;
    @c("id")
    private int id;
    @c("map_url")
    private String mapUtl;
    @c("name")
    private String name;

    public int describeContents() {
        return 0;
    }

    public FavoriteModel() {
    }

    protected FavoriteModel(Parcel parcel) {
        this.name = parcel.readString();
        this.formattedAddress = (FormattedAddress) parcel.readParcelable(FormattedAddress.class.getClassLoader());
        this.id = parcel.readInt();
        this.detailAddress = parcel.readString();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public FormattedAddress getFormattedAddress() {
        return this.formattedAddress;
    }

    public void setFormattedAddress(FormattedAddress formattedAddress2) {
        this.formattedAddress = formattedAddress2;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getDetailAddress() {
        return this.detailAddress;
    }

    public void setDetailAddress(String str) {
        this.detailAddress = str;
    }

    public String getMapUrl() {
        return this.mapUtl;
    }

    public void setMapUtl(String str) {
        this.mapUtl = str;
    }

    public String toString() {
        return "FavoriteModel{name='" + this.name + '\'' + ", formattedAddress=" + this.formattedAddress + ", id=" + this.id + ", detailAddress='" + this.detailAddress + '\'' + ", mapUtl='" + this.mapUtl + '\'' + '}';
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeParcelable(this.formattedAddress, i);
        parcel.writeInt(this.id);
        parcel.writeString(this.detailAddress);
    }
}
