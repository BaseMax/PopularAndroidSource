package cab.snapp.passenger.data.models.events;

import com.google.gson.a.c;

public class CancelEvent {
    @c("message")
    private String message;
    @c("reallotted")
    private String reallottedRideId;
    @c("ride_id")
    private String rideId;

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getRideId() {
        return this.rideId;
    }

    public void setRideId(String str) {
        this.rideId = str;
    }

    public String getReallottedRideId() {
        return this.reallottedRideId;
    }
}
