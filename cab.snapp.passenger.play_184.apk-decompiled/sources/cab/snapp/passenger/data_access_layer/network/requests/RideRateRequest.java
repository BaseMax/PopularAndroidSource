package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;
import java.util.List;

public class RideRateRequest extends d {
    @c("comment")
    private String comment;
    @c("rate")
    private int rate;
    @c("reasons")
    private List<Integer> rateReasons;
    @c("ride_id")
    private String rideId;

    public String getRideId() {
        return this.rideId;
    }

    public void setRideId(String str) {
        this.rideId = str;
    }

    public int getRate() {
        return this.rate;
    }

    public void setRate(int i) {
        this.rate = i;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public List<Integer> getRateReasons() {
        return this.rateReasons;
    }

    public void setRateReasons(List<Integer> list) {
        this.rateReasons = list;
    }

    public String toString() {
        return "SnappPassengerRateRequest{rideId='" + this.rideId + '\'' + ", rate=" + this.rate + ", comment='" + this.comment + '\'' + ", rateReasons=" + this.rateReasons + '}';
    }
}
