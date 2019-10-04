package cab.snapp.passenger.data.models;

import com.google.gson.a.c;
import java.util.List;

public class Ride {
    @c("driver")
    private DriverInfo driverInfo;
    @c("driver_location_info")
    private LocationInfo driverLocationInfo;
    @c("options")
    private Options options;
    @c("ride_info")
    private RideInformation rideInformation;
    @c("waitings")
    private List<RideWaiting> rideWaitingList;
    @c("call")
    private SafeCall safeCall;
    @c("service_type")
    private ServiceTypeModel serviceType;

    public SafeCall getSafeCall() {
        return this.safeCall;
    }

    public void setSafeCall(SafeCall safeCall2) {
        this.safeCall = safeCall2;
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

    public List<RideWaiting> getRideWaitingList() {
        return this.rideWaitingList;
    }

    public void setRideWaitingList(List<RideWaiting> list) {
        this.rideWaitingList = list;
    }

    public ServiceTypeModel getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(ServiceTypeModel serviceTypeModel) {
        this.serviceType = serviceTypeModel;
    }

    public String toString() {
        return "Ride{driverInfo=" + this.driverInfo + ", driverLocationInfo=" + this.driverLocationInfo + ", rideInformation=" + this.rideInformation + ", options=" + this.options + ", rideWaitingList=" + this.rideWaitingList + ", serviceType=" + this.serviceType + ", safeCall=" + this.safeCall + '}';
    }
}
