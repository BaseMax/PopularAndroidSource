package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.OptionalConfig;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class OptionalConfigResponse extends f {
    @c("last_build")
    private OptionalConfig optionalConfig;

    public OptionalConfig getOptionalConfig() {
        return this.optionalConfig;
    }

    public void setOptionalConfig(OptionalConfig optionalConfig2) {
        this.optionalConfig = optionalConfig2;
    }

    public String toString() {
        return "OptionalConfigResponse{optionalConfig=" + this.optionalConfig + '}';
    }
}
