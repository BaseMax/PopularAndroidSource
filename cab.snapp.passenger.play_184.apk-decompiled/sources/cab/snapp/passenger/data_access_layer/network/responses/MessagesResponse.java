package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.Messages;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class MessagesResponse extends f {
    @c("messages")
    private List<Messages> messages;

    public List<Messages> getMessages() {
        return this.messages;
    }

    public void setMessages(List<Messages> list) {
        this.messages = list;
    }

    public String toString() {
        return "MessagesResponse{messages=" + this.messages + '}';
    }
}
