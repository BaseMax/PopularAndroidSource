package cab.snapp.passenger.data.models.events;

import com.google.gson.a.c;

public class OfferingRestartedEvent {
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
