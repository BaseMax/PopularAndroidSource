package cab.snapp.passenger.data.models.charge;

import android.os.Parcel;
import android.os.Parcelable;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class SubmitChargeResponse extends f implements Parcelable {
    public static final Parcelable.Creator<SubmitChargeResponse> CREATOR = new Parcelable.Creator<SubmitChargeResponse>() {
        public final SubmitChargeResponse createFromParcel(Parcel parcel) {
            return new SubmitChargeResponse(parcel);
        }

        public final SubmitChargeResponse[] newArray(int i) {
            return new SubmitChargeResponse[i];
        }
    };
    @c("amount")
    private long amount;
    @c("description")
    private String description;
    @c("url")
    private String url;

    public int describeContents() {
        return 0;
    }

    public long getAmount() {
        return this.amount;
    }

    public void setAmount(long j) {
        this.amount = j;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.amount);
        parcel.writeString(this.url);
        parcel.writeString(this.description);
    }

    public SubmitChargeResponse() {
    }

    protected SubmitChargeResponse(Parcel parcel) {
        this.amount = parcel.readLong();
        this.url = parcel.readString();
        this.description = parcel.readString();
    }
}
