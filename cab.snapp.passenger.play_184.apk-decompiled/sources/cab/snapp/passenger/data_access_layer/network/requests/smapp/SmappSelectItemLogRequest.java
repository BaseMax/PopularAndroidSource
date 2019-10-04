package cab.snapp.passenger.data_access_layer.network.requests.smapp;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SmappSelectItemLogRequest extends d {
    @c("action")
    private int action = 0;
    @c("destination_uuid")
    private String destination_uuid;
    @c("origin_uuid")
    private String origin_uuid;

    public int getAction() {
        return this.action;
    }

    public String getOrigin_uuid() {
        return this.origin_uuid;
    }

    public void setOrigin_uuid(String str) {
        this.origin_uuid = str;
    }

    public String getDestination_uuid() {
        return this.destination_uuid;
    }

    public void setDestination_uuid(String str) {
        this.destination_uuid = str;
    }

    public String toString() {
        return "SnappPassengerSmappSelectItemLogRequest{action=" + this.action + ", origin_uuid='" + this.origin_uuid + '\'' + ", destination_uuid='" + this.destination_uuid + '\'' + '}';
    }
}
