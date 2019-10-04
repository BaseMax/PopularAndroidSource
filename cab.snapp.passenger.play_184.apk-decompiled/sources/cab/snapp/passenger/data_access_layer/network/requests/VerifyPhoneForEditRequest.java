package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class VerifyPhoneForEditRequest extends d {
    @c("code")
    private String code;

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }
}
