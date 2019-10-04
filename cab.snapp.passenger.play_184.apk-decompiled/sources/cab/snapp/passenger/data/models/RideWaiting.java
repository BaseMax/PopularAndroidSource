package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class RideWaiting implements Parcelable {
    public static final Parcelable.Creator<RideWaiting> CREATOR = new Parcelable.Creator<RideWaiting>() {
        public final RideWaiting createFromParcel(Parcel parcel) {
            return new RideWaiting(parcel);
        }

        public final RideWaiting[] newArray(int i) {
            return new RideWaiting[i];
        }
    };
    @c("key")
    private String key;
    @c("price")
    private double price;
    @c("text")
    private String text;

    public int describeContents() {
        return 0;
    }

    public RideWaiting() {
    }

    protected RideWaiting(Parcel parcel) {
        this.key = parcel.readString();
        this.price = parcel.readDouble();
        this.text = parcel.readString();
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double d) {
        this.price = d;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeDouble(this.price);
        parcel.writeString(this.text);
    }

    public String toString() {
        return "RideWaiting{key='" + this.key + '\'' + ", price=" + this.price + ", text='" + this.text + '\'' + '}';
    }
}
