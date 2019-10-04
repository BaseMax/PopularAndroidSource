package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class EditFavoriteRequest extends d {
    @c("detailed_address")
    private String detailedAddress;
    @c("name")
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getDetailedAddress() {
        return this.detailedAddress;
    }

    public void setDetailedAddress(String str) {
        this.detailedAddress = str;
    }

    public String toString() {
        return "SnappPassengerEditFavRequest{name='" + this.name + '\'' + ", detailedAddress='" + this.detailedAddress + '\'' + '}';
    }
}
