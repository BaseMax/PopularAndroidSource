package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SendTicketRequest extends d {
    @c("relation")
    private String relation;
    @c("text")
    private String text;
    @c("ticket_type")
    private int ticketType;
    @c("type")
    private String type;

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public int getTicketType() {
        return this.ticketType;
    }

    public void setTicketType(int i) {
        this.ticketType = i;
    }

    public String getRelation() {
        return this.relation;
    }

    public void setRelation(String str) {
        this.relation = str;
    }

    public String toString() {
        return "SnappPassengerSendTicketRequest{type='" + this.type + '\'' + ", text='" + this.text + '\'' + ", ticketType=" + this.ticketType + ", relation='" + this.relation + '\'' + '}';
    }
}
