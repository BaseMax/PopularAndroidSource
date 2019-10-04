package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.LocationInfo;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class CancelRideRequestResponse extends f {
    @c("driver")
    private DriverInfo driverInfo;
    @c("driver_location_info")
    private LocationInfo locationInfo;
    @c("message")
    private String message;
    @c("options")
    private Options options;
    @c("ride_info")
    private RideInformation rideInformation;
    @c("service_type")
    private ServiceTypeModel serviceTypeModel;

    public DriverInfo getDriverInfo() {
        return this.driverInfo;
    }

    public void setDriverInfo(DriverInfo driverInfo2) {
        this.driverInfo = driverInfo2;
    }

    public LocationInfo getLocationInfo() {
        return this.locationInfo;
    }

    public void setLocationInfo(LocationInfo locationInfo2) {
        this.locationInfo = locationInfo2;
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

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public ServiceTypeModel getServiceTypeModel() {
        return this.serviceTypeModel;
    }

    public void setServiceTypeModel(ServiceTypeModel serviceTypeModel2) {
        this.serviceTypeModel = serviceTypeModel2;
    }
}
