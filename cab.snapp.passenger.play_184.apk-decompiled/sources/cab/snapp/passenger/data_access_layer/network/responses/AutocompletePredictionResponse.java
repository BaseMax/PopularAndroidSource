package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.AutocompletePrediction;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class AutocompletePredictionResponse extends f {
    @c("powered-by")
    private String poweredBy;
    @c("predictions")
    private List<AutocompletePrediction> predictions;
    @c("status")
    private String status;

    public List<AutocompletePrediction> getPredictions() {
        return this.predictions;
    }

    public void setPredictions(List<AutocompletePrediction> list) {
        this.predictions = list;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getPoweredBy() {
        return this.poweredBy;
    }

    public void setPoweredBy(String str) {
        this.poweredBy = str;
    }

    public String toString() {
        return "AutocompletePredictionResponse{predictions=" + this.predictions + ", status='" + this.status + '\'' + ", poweredBy='" + this.poweredBy + '\'' + '}';
    }
}
