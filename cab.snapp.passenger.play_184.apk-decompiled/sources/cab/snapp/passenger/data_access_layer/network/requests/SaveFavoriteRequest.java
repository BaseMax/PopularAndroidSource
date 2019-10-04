package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SaveFavoriteRequest extends d {
    @c("detailed_address")
    private String detailedAddress;
    @c("lat")
    private String lat;
    @c("lng")
    private String lng;
    @c("name")
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getLat() {
        return this.lat;
    }

    public void setLat(String str) {
        this.lat = str;
    }

    public String getLng() {
        return this.lng;
    }

    public void setLng(String str) {
        this.lng = str;
    }

    public String getDetailedAddress() {
        return this.detailedAddress;
    }

    public void setDetailedAddress(String str) {
        this.detailedAddress = str;
    }

    public String toString() {
        return "SnappPassengerSaveFavoriteRequest{name='" + this.name + '\'' + ", lat='" + this.lat + '\'' + ", lng='" + this.lng + '\'' + ", detailedAddress='" + this.detailedAddress + '\'' + '}';
    }
}
