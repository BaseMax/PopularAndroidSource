package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.PlaceLatLng;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class CachedPlaceResponse extends f {
    @c("address")
    private String address;
    @c("id")
    private String id;
    @c("latLng")
    private PlaceLatLng latLng;
    @c("name")
    private String name;

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public PlaceLatLng getLatLng() {
        return this.latLng;
    }

    public void setLatLng(PlaceLatLng placeLatLng) {
        this.latLng = placeLatLng;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "CachedPlaceResponse{address='" + this.address + '\'' + ", id='" + this.id + '\'' + ", latLng=" + this.latLng + ", name='" + this.name + '\'' + '}';
    }
}
