package cab.snapp.passenger.data_access_layer.network.responses;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class PaymentType implements Parcelable {
    public static final int AP_WALLET = 5;
    public static final int CASH = 0;
    public static final Parcelable.Creator<PaymentType> CREATOR = new Parcelable.Creator<PaymentType>() {
        public final PaymentType createFromParcel(Parcel parcel) {
            return new PaymentType(parcel);
        }

        public final PaymentType[] newArray(int i) {
            return new PaymentType[i];
        }
    };
    public static final int ONLINE = 2;
    public static final int UNDONE = -1;
    public static final int USSD = 1;
    @c("title")
    private String title;
    @c("type")
    private int type;

    public int describeContents() {
        return 0;
    }

    public PaymentType() {
    }

    protected PaymentType(Parcel parcel) {
        this.title = parcel.readString();
        this.type = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeInt(this.type);
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.type == ((PaymentType) obj).type;
    }

    public int hashCode() {
        return this.type;
    }
}
