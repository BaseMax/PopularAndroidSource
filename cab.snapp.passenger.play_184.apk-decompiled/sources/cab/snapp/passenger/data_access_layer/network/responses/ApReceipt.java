package cab.snapp.passenger.data_access_layer.network.responses;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class ApReceipt implements Parcelable {
    public static final Parcelable.Creator<ApReceipt> CREATOR = new Parcelable.Creator<ApReceipt>() {
        public final ApReceipt createFromParcel(Parcel parcel) {
            return new ApReceipt(parcel);
        }

        public final ApReceipt[] newArray(int i) {
            return new ApReceipt[i];
        }
    };
    public static final int CREDIT_INSUFFICIENT = 0;
    public static final int CREDIT_SUFFICIENT = 1;
    public static final int ERROR = 2;
    @c("credit")
    private double credit;
    @c("message")
    private String message;
    @c("show_retry_button")
    private boolean showRetryButton;
    @c("status")
    private int status;
    @c("transfer_credit")
    private boolean transferCredit;

    public int describeContents() {
        return 0;
    }

    protected ApReceipt(Parcel parcel) {
        this.credit = parcel.readDouble();
        this.message = parcel.readString();
        this.showRetryButton = parcel.readByte() != 0;
        this.status = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.credit);
        parcel.writeString(this.message);
        parcel.writeByte(this.showRetryButton ? (byte) 1 : 0);
        parcel.writeInt(this.status);
    }

    public double getCredit() {
        return this.credit;
    }

    public void setCredit(double d) {
        this.credit = d;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public boolean isShowRetryButton() {
        return this.showRetryButton;
    }

    public void setShowRetryButton(boolean z) {
        this.showRetryButton = z;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean canTransferCredit() {
        return this.transferCredit;
    }
}
