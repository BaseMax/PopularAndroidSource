package cab.snapp.a;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.JsonObject;
import com.google.gson.a.c;

public class a extends f {
    @c("type")

    /* renamed from: a  reason: collision with root package name */
    private String f166a;
    @c("data")

    /* renamed from: b  reason: collision with root package name */
    private JsonObject f167b;
    @c("evt_id")
    private String c;
    @c("expires_in")
    private long d;
    private int e;

    public String getEventType() {
        return this.f166a;
    }

    public void setEventType(String str) {
        this.f166a = str;
    }

    public JsonObject getData() {
        return this.f167b;
    }

    public void setData(JsonObject jsonObject) {
        this.f167b = jsonObject;
    }

    public String getEventId() {
        return this.c;
    }

    public void setEventId(String str) {
        this.c = str;
    }

    public long getExpiresIn() {
        return this.d;
    }

    public void setExpiresIn(long j) {
        this.d = j;
    }

    public int getAckId() {
        return this.e;
    }

    public void setAckId(int i) {
        this.e = i;
    }

    public String toString() {
        return "SnappEventModel{eventType='" + this.f166a + '\'' + ", data=" + this.f167b.toString() + ", eventId='" + this.c + '\'' + ", expiresIn=" + this.d + ", ackId=" + this.e + '}';
    }
}
