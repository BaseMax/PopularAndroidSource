package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import java.util.List;

public class ChargeRecentlyMobileNumbersResponse extends f {
    private List<String> mobileNumbers;

    public List<String> getMobileNumbers() {
        return this.mobileNumbers;
    }

    public void setMobileNumbers(List<String> list) {
        this.mobileNumbers = list;
    }
}
