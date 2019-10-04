package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class SafeCall {
    @c("can_call")
    private boolean canCall;
    @c("enabled")
    private boolean isEnabled;
    @c("timeout")
    private long timeOut;
    @c("token")
    private String token;
    @c("uri")
    private String uri;

    public long getTimeOut() {
        return this.timeOut;
    }

    public void setTimeOut(long j) {
        this.timeOut = j;
    }

    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public boolean isCanCallEnabled() {
        return this.canCall;
    }

    public void setCanCall(boolean z) {
        this.canCall = z;
    }

    public String toString() {
        return "SafeCall{uri='" + this.uri + '\'' + ", timeOut=" + this.timeOut + ", isEnabled=" + this.isEnabled + ", canCall=" + this.canCall + ", token='" + this.token + '\'' + '}';
    }
}
