package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;
import java.util.Map;

public class FollowedAppsRequest extends d {
    @c("statuses")
    private Map<String, Integer> statuses;

    public void setStatuses(Map<String, Integer> map) {
        this.statuses = map;
    }

    public String toString() {
        return "SnappPassengerFollowedAppsRequest{statuses=" + this.statuses + '}';
    }
}
