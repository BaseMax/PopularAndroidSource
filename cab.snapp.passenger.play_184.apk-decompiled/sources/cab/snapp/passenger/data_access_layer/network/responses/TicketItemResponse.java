package cab.snapp.passenger.data_access_layer.network.responses;

import android.os.Parcel;
import android.os.Parcelable;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.ArrayList;
import java.util.List;

public class TicketItemResponse extends f implements Parcelable {
    public static final Parcelable.Creator<TicketItemResponse> CREATOR = new Parcelable.Creator<TicketItemResponse>() {
        public final TicketItemResponse createFromParcel(Parcel parcel) {
            return new TicketItemResponse(parcel);
        }

        public final TicketItemResponse[] newArray(int i) {
            return new TicketItemResponse[i];
        }
    };
    @c("children")
    private List<TicketItemResponse> childList;
    @c("description")
    private String description;
    @c("id")
    private String id;
    @c("text")
    private String text;

    public int describeContents() {
        return 0;
    }

    public TicketItemResponse() {
    }

    protected TicketItemResponse(Parcel parcel) {
        this.id = parcel.readString();
        this.text = parcel.readString();
        this.description = parcel.readString();
        this.childList = new ArrayList();
        parcel.readList(this.childList, TicketItemResponse.class.getClassLoader());
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public List<TicketItemResponse> getChildList() {
        return this.childList;
    }

    public void setChildList(List<TicketItemResponse> list) {
        this.childList = list;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.text);
        parcel.writeString(this.description);
        parcel.writeList(this.childList);
    }

    public String toString() {
        return "TicketItem{id='" + this.id + '\'' + ", text='" + this.text + '\'' + ", description='" + this.description + '\'' + ", childList=" + this.childList + '}';
    }
}
