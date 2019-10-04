package cab.snapp.passenger.data_access_layer.network.responses;

import android.os.Parcel;
import android.os.Parcelable;
import cab.snapp.passenger.data.models.Donation;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class RideReceiptResponse extends f implements Parcelable {
    public static final Parcelable.Creator<RideReceiptResponse> CREATOR = new Parcelable.Creator<RideReceiptResponse>() {
        public final RideReceiptResponse createFromParcel(Parcel parcel) {
            return new RideReceiptResponse(parcel);
        }

        public final RideReceiptResponse[] newArray(int i) {
            return new RideReceiptResponse[i];
        }
    };
    @c("ap")
    private ApReceipt apReceipt;
    @c("can_pay_in_cash")
    private boolean canPayInCash;
    @c("current_credit")
    private double currentCredit;
    @c("donation")
    private Donation donation;
    @c("ap_authorized")
    private int isApWalletRegistered;
    @c("message")
    private String message;
    @c("payment_types")
    private List<PaymentType> paymentTypes;
    @c("ride_price")
    private double ridePrice;
    @c("status")
    private int status;

    public int describeContents() {
        return 0;
    }

    public RideReceiptResponse() {
    }

    protected RideReceiptResponse(Parcel parcel) {
        this.currentCredit = parcel.readDouble();
        this.ridePrice = parcel.readDouble();
        this.message = parcel.readString();
        this.status = parcel.readInt();
        this.canPayInCash = parcel.readByte() != 0;
        this.donation = (Donation) parcel.readParcelable(Donation.class.getClassLoader());
        this.paymentTypes = parcel.createTypedArrayList(PaymentType.CREATOR);
        this.apReceipt = (ApReceipt) parcel.readParcelable(ApReceipt.class.getClassLoader());
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.currentCredit);
        parcel.writeDouble(this.ridePrice);
        parcel.writeString(this.message);
        parcel.writeInt(this.status);
        parcel.writeByte(this.canPayInCash ? (byte) 1 : 0);
        parcel.writeParcelable(this.donation, i);
        parcel.writeTypedList(this.paymentTypes);
        parcel.writeParcelable(this.apReceipt, i);
    }

    public double getCurrentCredit() {
        return this.currentCredit;
    }

    public double getRidePrice() {
        return this.ridePrice;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean getCanPayInCash() {
        return this.canPayInCash;
    }

    public Donation getDonation() {
        return this.donation;
    }

    public String toString() {
        return "RideReceiptResponse{currentCredit=" + this.currentCredit + ", ridePrice=" + this.ridePrice + ", message='" + this.message + '\'' + ", status=" + this.status + ", canPayInCash=" + this.canPayInCash + ", donation=" + this.donation + '}';
    }

    public ApReceipt getApReceipt() {
        return this.apReceipt;
    }

    public void setApReceipt(ApReceipt apReceipt2) {
        this.apReceipt = apReceipt2;
    }

    public List<PaymentType> getPaymentTypes() {
        return this.paymentTypes;
    }

    public void setPaymentTypes(List<PaymentType> list) {
        this.paymentTypes = list;
    }

    public boolean isApWalletRegistered() {
        return this.isApWalletRegistered == 1;
    }

    public void setApWalletRegistered(int i) {
        this.isApWalletRegistered = i;
    }

    public void setCurrentCredit(double d) {
        this.currentCredit = d;
    }
}
