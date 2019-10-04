package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class RideMessageRequest extends d {
    @c("message")
    private String message;
    @c("message_id")
    private int messageId;

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public int getMessageId() {
        return this.messageId;
    }

    public void setMessageId(int i) {
        this.messageId = i;
    }

    public String toString() {
        return "SnappPassengerRideMessageRequest{message='" + this.message + '\'' + ", messageId='" + this.messageId + '\'' + '}';
    }
}
