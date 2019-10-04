package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.Options;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class UpdateOptionsResponse extends f {
    @c("message")
    private String message;
    @c("options")
    private Options options;
    @c("final")
    private int totalPrice;

    public Options getOptions() {
        return this.options;
    }

    public void setOptions(Options options2) {
        this.options = options2;
    }

    public int getTotalPrice() {
        return this.totalPrice;
    }

    public void setTotalPrice(int i) {
        this.totalPrice = i;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "UpdateOptionsResponse{options=" + this.options + ", totalPrice=" + this.totalPrice + ", message='" + this.message + '\'' + '}';
    }
}
