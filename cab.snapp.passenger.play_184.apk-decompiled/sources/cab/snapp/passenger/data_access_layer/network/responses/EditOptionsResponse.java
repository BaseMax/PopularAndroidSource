package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class EditOptionsResponse extends f {
    @c("message")
    private String message;
    @c("tag")
    private String tag;
    @c("final")
    private int totalPrice;

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
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
        return "EditOptionsResponse{tag='" + this.tag + '\'' + ", totalPrice=" + this.totalPrice + ", message='" + this.message + '\'' + '}';
    }
}
