package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class OnlinePaymentRequest extends d {
    @c("amount")
    private double amount;

    public OnlinePaymentRequest() {
    }

    public OnlinePaymentRequest(double d) {
        this.amount = d;
    }

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(double d) {
        this.amount = d;
    }

    public String toString() {
        return "OnlinePaymentRequest{amount=" + this.amount + '}';
    }
}
