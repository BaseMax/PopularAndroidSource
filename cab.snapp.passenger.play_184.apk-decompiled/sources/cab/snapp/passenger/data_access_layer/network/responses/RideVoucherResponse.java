package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.Options;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class RideVoucherResponse extends f {
    @c("current_credit")
    private double currentCredit;
    @c("message")
    private String message;
    @c("options")
    private Options options;
    @c("ride_price")
    private double ridePrice;
    @c("status")
    private int status;

    public double getCurrentCredit() {
        return this.currentCredit;
    }

    public void setCurrentCredit(double d) {
        this.currentCredit = d;
    }

    public double getRidePrice() {
        return this.ridePrice;
    }

    public void setRidePrice(double d) {
        this.ridePrice = d;
    }

    public Options getOptions() {
        return this.options;
    }

    public void setOptions(Options options2) {
        this.options = options2;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
