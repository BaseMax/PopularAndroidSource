package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class Options implements Parcelable {
    public static final Parcelable.Creator<Options> CREATOR = new Parcelable.Creator<Options>() {
        public final Options createFromParcel(Parcel parcel) {
            return new Options(parcel);
        }

        public final Options[] newArray(int i) {
            return new Options[i];
        }
    };
    @c("extra_destination")
    private FormattedAddress extraDestination;
    @c("round_trip_price")
    private double roundTripPrice;
    @c("handling_services")
    private double servicePrice;
    @c("waiting")
    private RideWaiting snappWaiting;

    public int describeContents() {
        return 0;
    }

    public Options() {
    }

    protected Options(Parcel parcel) {
        this.servicePrice = parcel.readDouble();
        this.snappWaiting = (RideWaiting) parcel.readParcelable(RideWaiting.class.getClassLoader());
        this.roundTripPrice = parcel.readDouble();
        this.extraDestination = (FormattedAddress) parcel.readParcelable(FormattedAddress.class.getClassLoader());
    }

    public FormattedAddress getExtraDestination() {
        return this.extraDestination;
    }

    public void setExtraDestination(FormattedAddress formattedAddress) {
        this.extraDestination = formattedAddress;
    }

    public double getRoundTripPrice() {
        return this.roundTripPrice;
    }

    public void setRoundTripPrice(double d) {
        this.roundTripPrice = d;
    }

    public RideWaiting getSnappWaiting() {
        return this.snappWaiting;
    }

    public void setSnappWaiting(RideWaiting rideWaiting) {
        this.snappWaiting = rideWaiting;
    }

    public double getServicePrice() {
        return this.servicePrice;
    }

    public void setServicePrice(double d) {
        this.servicePrice = d;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.servicePrice);
        parcel.writeParcelable(this.snappWaiting, i);
        parcel.writeDouble(this.roundTripPrice);
        parcel.writeParcelable(this.extraDestination, i);
    }

    public String toString() {
        return "Options{servicePrice=" + this.servicePrice + ", snappWaiting=" + this.snappWaiting + ", roundTripPrice=" + this.roundTripPrice + ", extraDestination=" + this.extraDestination + '}';
    }
}
