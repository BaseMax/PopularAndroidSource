package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class ChangeLogItem {
    @c("message")
    private String message;
    @c("version")
    private int version;

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
