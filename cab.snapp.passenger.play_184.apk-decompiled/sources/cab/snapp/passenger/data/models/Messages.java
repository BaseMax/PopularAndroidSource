package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class Messages {
    @c("date")
    private String messageDate;
    @c("description")
    private String messageDesc;
    @c("seen")
    private int messageSeen;
    @c("url")
    private String messageUrl;

    public String getMessageDate() {
        return this.messageDate;
    }

    public void setMessageDate(String str) {
        this.messageDate = str;
    }

    public String getMessageDesc() {
        return this.messageDesc;
    }

    public void setMessageDesc(String str) {
        this.messageDesc = str;
    }

    public String getMessageUrl() {
        return this.messageUrl;
    }

    public void setMessageUrl(String str) {
        this.messageUrl = str;
    }

    public int getMessageSeen() {
        return this.messageSeen;
    }

    public void setMessageSeen(int i) {
        this.messageSeen = i;
    }

    public String toString() {
        return "Messages{messageDate='" + this.messageDate + '\'' + ", messageDesc='" + this.messageDesc + '\'' + ", messageSeen=" + this.messageSeen + ", messageUrl='" + this.messageUrl + '\'' + '}';
    }
}
