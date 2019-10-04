package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class DonationStatus implements Parcelable {
    public static final Parcelable.Creator<DonationStatus> CREATOR = new Parcelable.Creator<DonationStatus>() {
        public final DonationStatus createFromParcel(Parcel parcel) {
            return new DonationStatus(parcel);
        }

        public final DonationStatus[] newArray(int i) {
            return new DonationStatus[i];
        }
    };
    @c("general")
    private boolean isDonationEnabledGenerally;
    @c("online")
    private boolean isDonationEnabledOnOnline;
    @c("ussd")
    private boolean isDonationEnabledOnUssd;

    public int describeContents() {
        return 0;
    }

    public DonationStatus() {
    }

    protected DonationStatus(Parcel parcel) {
        boolean z = true;
        this.isDonationEnabledGenerally = parcel.readByte() != 0;
        this.isDonationEnabledOnOnline = parcel.readByte() != 0;
        this.isDonationEnabledOnUssd = parcel.readByte() == 0 ? false : z;
    }

    public boolean isDonationEnabledGenerally() {
        return this.isDonationEnabledGenerally;
    }

    public void setDonationEnabledGenerally(boolean z) {
        this.isDonationEnabledGenerally = z;
    }

    public boolean isDonationEnabledOnOnline() {
        return this.isDonationEnabledOnOnline;
    }

    public void setDonationEnabledOnOnline(boolean z) {
        this.isDonationEnabledOnOnline = z;
    }

    public boolean isDonationEnabledOnUssd() {
        return this.isDonationEnabledOnUssd;
    }

    public void setDonationEnabledOnUssd(boolean z) {
        this.isDonationEnabledOnUssd = z;
    }

    public String toString() {
        return "DonationStatus{isDonationEnabledGenerally=" + this.isDonationEnabledGenerally + ", isDonationEnabledOnOnline=" + this.isDonationEnabledOnOnline + ", isDonationEnabledOnUssd=" + this.isDonationEnabledOnUssd + '}';
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isDonationEnabledGenerally ? (byte) 1 : 0);
        parcel.writeByte(this.isDonationEnabledOnOnline ? (byte) 1 : 0);
        parcel.writeByte(this.isDonationEnabledOnUssd ? (byte) 1 : 0);
    }
}
