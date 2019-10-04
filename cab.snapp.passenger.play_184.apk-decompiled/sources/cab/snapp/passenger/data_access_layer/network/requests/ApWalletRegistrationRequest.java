package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class ApWalletRegistrationRequest extends d {
    @c("cellphone")
    private String cellphone;

    public String getCellPhone() {
        return this.cellphone;
    }

    public void setCellPhone(String str) {
        this.cellphone = str;
    }
}
