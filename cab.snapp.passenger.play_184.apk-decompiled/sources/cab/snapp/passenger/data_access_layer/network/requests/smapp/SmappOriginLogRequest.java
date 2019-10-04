package cab.snapp.passenger.data_access_layer.network.requests.smapp;

import cab.snapp.passenger.data.models.PlaceLatLng;
import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SmappOriginLogRequest extends d {
    @c("action")
    private int action = 1;
    @c("origin")
    private PlaceLatLng location;
    @c("origin_uuid")
    private String uuid;

    public int getAction() {
        return this.action;
    }

    public void setAction(int i) {
        this.action = i;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public PlaceLatLng getLocation() {
        return this.location;
    }

    public void setLocation(PlaceLatLng placeLatLng) {
        this.location = placeLatLng;
    }

    public String toString() {
        return "SnappPassengerSmappOriginLogRequest{action=" + this.action + ", uuid='" + this.uuid + '\'' + ", location=" + this.location + '}';
    }
}
