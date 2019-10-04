package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.ArrayList;

public class RideRatingReasonsResponse extends f {
    @c("negative")
    ArrayList<RideRatingReason> negativeReasons;
    @c("positive")
    ArrayList<RideRatingReason> positiveReasons;

    public ArrayList<RideRatingReason> getNegativeReasons() {
        return this.negativeReasons;
    }

    public void setNegativeReasons(ArrayList<RideRatingReason> arrayList) {
        this.negativeReasons = arrayList;
    }

    public ArrayList<RideRatingReason> getPositiveReasons() {
        return this.positiveReasons;
    }

    public void setPositiveReasons(ArrayList<RideRatingReason> arrayList) {
        this.positiveReasons = arrayList;
    }

    public String toString() {
        return "SnappPassengerRatingReasonsResponse{negativeReasons=" + this.negativeReasons + ", positiveReasons=" + this.positiveReasons + '}';
    }
}
