package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class RideResponse extends f {
    @c("message")
    private String message;
    @c("ride_id")
    private String rideId;

    public String getRideId() {
        return this.rideId;
    }

    public void setRideId(String str) {
        this.rideId = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
