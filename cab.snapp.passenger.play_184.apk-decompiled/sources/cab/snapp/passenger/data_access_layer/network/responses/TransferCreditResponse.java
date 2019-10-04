package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class TransferCreditResponse extends f {
    @c("message")
    String message;

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "TransferCreditResponse{message='" + this.message + '\'' + "} " + super.toString();
    }
}
