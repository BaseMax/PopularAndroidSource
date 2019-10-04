package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class RidePaymentStatusResponse extends f {
    public static final int ERROR = -1;
    public static final int INSUFFICIENT = 0;
    public static final int LOADING = -2;
    public static final int SUFFICIENT = 1;
    @c("status")
    private int status;
    @c("text")
    private String text;

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public String toString() {
        return "RidePaymentStatusResponse{status=" + this.status + ", text='" + this.text + '\'' + "} " + super.toString();
    }
}
