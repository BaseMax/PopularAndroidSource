package cab.snapp.passenger.f;

import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import java.util.UUID;

public final class e {
    public final String IUDXU() {
        return UUID.randomUUID().toString();
    }

    public final String IUDXH(String str) {
        return IUDXU();
    }

    public final boolean IUDFU(ConfigResponse configResponse) {
        return (configResponse == null || configResponse.getAppData() == null || configResponse.getAppData().getLatestSupportedVersionCode() <= 184) ? false : true;
    }
}
