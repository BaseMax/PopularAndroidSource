package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class LoginByPhoneNumberRequest extends d {
    @c("device_id")
    public String deviceId;
    @c("cellphone")
    String phoneNumber;

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public String toString() {
        return "LoginByPhoneNumberRequest{phoneNumber='" + this.phoneNumber + '\'' + ", deviceId='" + this.deviceId + '\'' + '}';
    }
}
