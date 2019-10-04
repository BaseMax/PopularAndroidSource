package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.PlaceDetail;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class PlaceDetailResponse extends f {
    @c("result")
    private PlaceDetail placeDetail;
    @c("status")
    private String status;

    public PlaceDetail getPlaceDetail() {
        return this.placeDetail;
    }

    public void setPlaceDetail(PlaceDetail placeDetail2) {
        this.placeDetail = placeDetail2;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String toString() {
        return "PlaceDetailResponse{placeDetail=" + this.placeDetail + ", status='" + this.status + '\'' + '}';
    }
}
