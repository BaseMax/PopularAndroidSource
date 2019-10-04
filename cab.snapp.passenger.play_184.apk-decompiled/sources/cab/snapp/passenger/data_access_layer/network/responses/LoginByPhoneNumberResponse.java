package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class LoginByPhoneNumberResponse extends f {
    @c("status")
    String staus;

    public String getStaus() {
        return this.staus;
    }

    public void setStaus(String str) {
        this.staus = str;
    }

    public String toString() {
        return "LoginByPhoneNumberResponse{staus='" + this.staus + '\'' + '}';
    }
}
