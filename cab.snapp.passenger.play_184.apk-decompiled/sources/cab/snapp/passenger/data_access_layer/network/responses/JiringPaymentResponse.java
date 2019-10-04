package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class JiringPaymentResponse extends f {
    @c("code")
    private String code;

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public String toString() {
        return "JiringPaymentResponse{code='" + this.code + '\'' + '}';
    }
}
