package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class RideHistoryDetailRow implements Parcelable {
    public static final Parcelable.Creator<RideHistoryDetailRow> CREATOR = new Parcelable.Creator<RideHistoryDetailRow>() {
        public final RideHistoryDetailRow createFromParcel(Parcel parcel) {
            return new RideHistoryDetailRow(parcel);
        }

        public final RideHistoryDetailRow[] newArray(int i) {
            return new RideHistoryDetailRow[i];
        }
    };
    @c("description")
    private String description;
    @c("title")
    private String title;
    @c("type")
    private String type;

    public int describeContents() {
        return 0;
    }

    public RideHistoryDetailRow() {
    }

    protected RideHistoryDetailRow(Parcel parcel) {
        this.description = parcel.readString();
        this.title = parcel.readString();
        this.type = parcel.readString();
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.description);
        parcel.writeString(this.title);
        parcel.writeString(this.type);
    }

    public String toString() {
        return "RideHistoryDetailRow{description='" + this.description + '\'' + ", title='" + this.title + '\'' + ", type='" + this.type + '\'' + '}';
    }
}
