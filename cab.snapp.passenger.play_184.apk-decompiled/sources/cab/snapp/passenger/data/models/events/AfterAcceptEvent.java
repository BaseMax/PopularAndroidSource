package cab.snapp.passenger.data.models.events;

import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.LocationInfo;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.data.models.RideWaiting;
import cab.snapp.passenger.data.models.SafeCall;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import com.google.gson.a.c;
import java.util.List;

public class AfterAcceptEvent {
    @c("driver")
    private DriverInfo driverInfo;
    @c("driver_location_info")
    private LocationInfo driverLocationInfo;
    @c("waitings")
    private List<RideWaiting> listWaitingTips;
    @c("options")
    private Options options;
    @c("ride_info")
    private RideInformation rideInformation;
    @c("call")
    private SafeCall safeCall;
    @c("service_type")
    private ServiceTypeModel serviceTypeModel;

    public List<RideWaiting> getListWaitingTips() {
        return this.listWaitingTips;
    }

    public DriverInfo getDriverInfo() {
        return this.driverInfo;
    }

    public void setDriverInfo(DriverInfo driverInfo2) {
        this.driverInfo = driverInfo2;
    }

    public LocationInfo getDriverLocationInfo() {
        return this.driverLocationInfo;
    }

    public void setDriverLocationInfo(LocationInfo locationInfo) {
        this.driverLocationInfo = locationInfo;
    }

    public RideInformation getRideInformation() {
        return this.rideInformation;
    }

    public void setRideInformation(RideInformation rideInformation2) {
        this.rideInformation = rideInformation2;
    }

    public Options getOptions() {
        return this.options;
    }

    public void setOptions(Options options2) {
        this.options = options2;
    }

    public ServiceTypeModel getServiceTypeModel() {
        return this.serviceTypeModel;
    }

    public void setServiceTypeModel(ServiceTypeModel serviceTypeModel2) {
        this.serviceTypeModel = serviceTypeModel2;
    }

    public SafeCall getSafeCall() {
        return this.safeCall;
    }

    public void setSafeCall(SafeCall safeCall2) {
        this.safeCall = safeCall2;
    }
}
