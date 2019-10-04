package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class VoucherRequest extends d {
    @c("voucher_code")
    private String voucherCode;

    public VoucherRequest() {
    }

    public VoucherRequest(String str) {
        this.voucherCode = String.valueOf(str);
    }

    public String getVoucherCode() {
        return this.voucherCode;
    }

    public void setVoucherCode(String str) {
        this.voucherCode = str;
    }

    public String toString() {
        return "VoucherRequest{voucherCode='" + this.voucherCode + '\'' + '}';
    }
}
