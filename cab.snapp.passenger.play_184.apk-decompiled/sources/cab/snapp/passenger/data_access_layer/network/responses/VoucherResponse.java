package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class VoucherResponse extends f {
    @c("amount")
    private double amount;

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(double d) {
        this.amount = d;
    }

    public String toString() {
        return "VoucherResponse{amount=" + this.amount + '}';
    }
}
