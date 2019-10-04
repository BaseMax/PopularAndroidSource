package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class VerificationCodeForEditPhoneNumberRequest extends d {
    @c("cellphone")
    private String cellphone;
    @c("phone")
    private String phone;

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public String getCellphone() {
        return this.cellphone;
    }

    public void setCellphone(String str) {
        this.cellphone = str;
    }
}
