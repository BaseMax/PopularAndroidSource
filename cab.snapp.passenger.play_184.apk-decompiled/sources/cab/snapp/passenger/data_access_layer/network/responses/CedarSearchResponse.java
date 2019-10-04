package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.CedarGeocodeResult;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class CedarSearchResponse extends f {
    @c("auto_move_to_first")
    private boolean autoMoveToFirst;
    @c("results")
    private List<CedarGeocodeResult> cedarGeocodeResults;
    @c("status")
    private String status;

    public List<CedarGeocodeResult> getCedarGeocodeResults() {
        return this.cedarGeocodeResults;
    }

    public void setCedarGeocodeResults(List<CedarGeocodeResult> list) {
        this.cedarGeocodeResults = list;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public boolean isAutoMoveToFirst() {
        return this.autoMoveToFirst;
    }

    public void setAutoMoveToFirst(boolean z) {
        this.autoMoveToFirst = z;
    }

    public String toString() {
        return "CedarSearchResponse{cedarGeocodeResults=" + this.cedarGeocodeResults + ", status='" + this.status + '\'' + ", autoMoveToFirst=" + this.autoMoveToFirst + '}';
    }
}
