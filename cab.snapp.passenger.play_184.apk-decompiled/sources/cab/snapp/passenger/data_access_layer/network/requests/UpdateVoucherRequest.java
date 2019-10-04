package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class UpdateVoucherRequest extends d {
    @c("voucher")
    private String voucher;

    public String getVoucher() {
        return this.voucher;
    }

    public void setVoucher(String str) {
        this.voucher = str;
    }
}
