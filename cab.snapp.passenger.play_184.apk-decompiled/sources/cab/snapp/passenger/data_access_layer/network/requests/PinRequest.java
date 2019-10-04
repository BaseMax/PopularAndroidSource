package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class PinRequest extends d {
    @c("formatted_address")
    private int formattedAddress = 0;
    @c("lat")
    private double lat;
    @c("lng")
    private double lng;
    @c("service_type")
    private int serviceType;
    @c("vehicles")
    private int vehicles = 0;

    public PinRequest() {
    }

    public PinRequest(double d, double d2) {
        this.lat = d;
        this.lng = d2;
    }

    public double getLat() {
        return this.lat;
    }

    public void setLat(double d) {
        this.lat = d;
    }

    public double getLng() {
        return this.lng;
    }

    public void setLng(double d) {
        this.lng = d;
    }

    public int getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(int i) {
        this.serviceType = i;
    }

    public int getVehicles() {
        return this.vehicles;
    }

    public void setVehicles() {
        this.vehicles = 1;
    }

    public void setFormattedAddress() {
        this.formattedAddress = 1;
    }
}
