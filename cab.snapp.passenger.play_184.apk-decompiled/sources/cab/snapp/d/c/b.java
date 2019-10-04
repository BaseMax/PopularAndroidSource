package cab.snapp.d.c;

import com.google.gson.a.c;

public final class b {
    @c("app_key")

    /* renamed from: a  reason: collision with root package name */
    private String f227a;
    @c("cluster")

    /* renamed from: b  reason: collision with root package name */
    private String f228b;
    @c("channel")
    private String c;
    @c("event")
    private String d;
    @c("auth_url")
    private String e;

    public b() {
    }

    public b(String str, String str2, String str3, String str4, String str5) {
        this.f227a = str;
        this.f228b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final String getAppKey() {
        return this.f227a;
    }

    public final void setAppKey(String str) {
        this.f227a = str;
    }

    public final String getAppCluster() {
        return this.f228b;
    }

    public final void setAppCluster(String str) {
        this.f228b = str;
    }

    public final String getChannel() {
        return this.c;
    }

    public final void setChannel(String str) {
        this.c = str;
    }

    public final String getEvent() {
        return this.d;
    }

    public final void setEvent(String str) {
        this.d = str;
    }

    public final String getAuthUrl() {
        return this.e;
    }

    public final void setAuthUrl(String str) {
        this.e = str;
    }

    public final String toString() {
        return "PusherConfig{appKey='" + this.f227a + '\'' + ", appCluster='" + this.f228b + '\'' + ", channel='" + this.c + '\'' + ", event='" + this.d + '\'' + ", authUrl='" + this.e + '\'' + '}';
    }
}
