package cab.snapp.a;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class b extends f {
    @c("time")

    /* renamed from: a  reason: collision with root package name */
    private long f168a;
    @c("events")

    /* renamed from: b  reason: collision with root package name */
    private List<a> f169b;

    public long getServerTime() {
        return this.f168a;
    }

    public void setServerTime(long j) {
        this.f168a = j;
    }

    public List<a> getRideEventModels() {
        return this.f169b;
    }

    public void setRideEventModels(List<a> list) {
        this.f169b = list;
    }

    public String toString() {
        return "SnappEventResponse{serverTime=" + this.f168a + ", rideEventModels=" + this.f169b + '}';
    }
}
