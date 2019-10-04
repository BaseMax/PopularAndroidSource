package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class EditOptionsRequest extends d {
    @c("extra_destination_lat")
    private Double extraDestinationLat;
    @c("extra_destination_lng")
    private Double extraDestinationLng;
    @c("services")
    private Boolean packageDelivery;
    @c("round_trip")
    private Boolean roundTrip;
    @c("tag")
    private String tag;
    @c("waiting")
    private String waiting;

    public Double getExtraDestinationLat() {
        return this.extraDestinationLat;
    }

    public void setExtraDestinationLat(Double d) {
        this.extraDestinationLat = d;
    }

    public Double getExtraDestinationLng() {
        return this.extraDestinationLng;
    }

    public void setExtraDestinationLng(Double d) {
        this.extraDestinationLng = d;
    }

    public boolean isRoundTrip() {
        return this.roundTrip.booleanValue();
    }

    public void setRoundTrip(Boolean bool) {
        this.roundTrip = bool;
    }

    public String getWaiting() {
        return this.waiting;
    }

    public void setWaiting(String str) {
        this.waiting = str;
    }

    public boolean isPackageDelivery() {
        return this.packageDelivery.booleanValue();
    }

    public void setPackageDelivery(boolean z) {
        this.packageDelivery = Boolean.valueOf(z);
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public String toString() {
        return "SnappPassengerEditOptionsRequest{extraDestinationLat=" + this.extraDestinationLat + ", extraDestinationLng=" + this.extraDestinationLng + ", roundTrip=" + this.roundTrip + ", waiting='" + this.waiting + '\'' + ", packageDelivery=" + this.packageDelivery + ", tag='" + this.tag + '\'' + '}';
    }
}
