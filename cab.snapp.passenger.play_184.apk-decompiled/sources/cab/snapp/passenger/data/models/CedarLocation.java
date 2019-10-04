package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class CedarLocation {
    @c("bb")
    private CedarBB cedarBB;
    @c("center")
    private String center;

    public Double getLatitude() {
        return Double.valueOf(Double.parseDouble(this.center.split(",")[0]));
    }

    public Double getLongitude() {
        return Double.valueOf(Double.parseDouble(this.center.split(",")[1]));
    }

    public void setCenter(String str) {
        this.center = str;
    }
}
