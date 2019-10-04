package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class FinishRide {
    @c("driver")
    private DriverInfo driverInfo;
    @c("ride_info")
    private RideInformation rideInformation;

    public DriverInfo getDriverInfo() {
        return this.driverInfo;
    }

    public void setDriverInfo(DriverInfo driverInfo2) {
        this.driverInfo = driverInfo2;
    }

    public RideInformation getRideInformation() {
        return this.rideInformation;
    }

    public void setRideInformation(RideInformation rideInformation2) {
        this.rideInformation = rideInformation2;
    }

    public String toString() {
        return "FinishRide{driverInfo=" + this.driverInfo + ", rideInformation=" + this.rideInformation + '}';
    }
}
