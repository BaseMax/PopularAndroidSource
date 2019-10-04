package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.RideWaiting;
import cab.snapp.passenger.data.models.price.PriceModel;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class PriceResponse extends f {
    @c("confirm_before_ride_message")
    private String confirmRideMessage;
    @c("message")
    private String message;
    @c("confirm_before_ride")
    private boolean needConfirmRide;
    @c("prices")
    private List<PriceModel> priceModels;
    @c("waiting")
    private List<RideWaiting> rideWaitingList;
    @c("tag")
    private String tag;

    public List<PriceModel> getPriceModels() {
        return this.priceModels;
    }

    public void setPriceModels(List<PriceModel> list) {
        this.priceModels = list;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public boolean isNeedConfirmRide() {
        return this.needConfirmRide;
    }

    public void setNeedConfirmRide(boolean z) {
        this.needConfirmRide = z;
    }

    public String getConfirmRideMessage() {
        return this.confirmRideMessage;
    }

    public void setConfirmRideMessage(String str) {
        this.confirmRideMessage = str;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public List<RideWaiting> getRideWaitingList() {
        return this.rideWaitingList;
    }

    public void setRideWaitingList(List<RideWaiting> list) {
        this.rideWaitingList = list;
    }
}
