package cab.snapp.d.a;

import com.google.gson.a.c;
import java.io.Serializable;

public final class a implements Serializable {
    @c("protocol")

    /* renamed from: a  reason: collision with root package name */
    private String f204a;
    @c("host")

    /* renamed from: b  reason: collision with root package name */
    private String f205b;
    @c("port")
    private String c;
    @c("tls")
    private boolean d;
    @c("qos")
    private int e;
    @c("ping_intval")
    private int f = 60;
    @c("channels")
    private C0012a g;
    @c("clean_session")
    private boolean h;
    @c("timeout_intval")
    private int i = 30;
    private String j;

    /* renamed from: cab.snapp.d.a.a$a  reason: collision with other inner class name */
    public static class C0012a implements Serializable {
        @c("events")

        /* renamed from: a  reason: collision with root package name */
        private String f206a;

        public final String getEvents() {
            return this.f206a;
        }

        public final void setEvents(String str) {
            this.f206a = str;
        }

        public final String toString() {
            return "ChannelsBean{events='" + this.f206a + '\'' + '}';
        }
    }

    public final String toString() {
        return "EmqBean{protocol='" + this.f204a + '\'' + ", host='" + this.f205b + '\'' + ", port='" + this.c + '\'' + ", tls=" + this.d + ", qos='" + this.e + '\'' + ", pingInterval='" + this.f + '\'' + ", channels=" + this.g + ", cleanSession=" + this.h + '\'' + ", timeout=" + this.i + '\'' + '}';
    }

    public final String getProtocol() {
        return this.f204a;
    }

    public final void setProtocol(String str) {
        this.f204a = str;
    }

    public final String getHost() {
        return this.f205b;
    }

    public final void setHost(String str) {
        this.f205b = str;
    }

    public final String getPort() {
        return this.c;
    }

    public final void setPort(String str) {
        this.c = str;
    }

    public final boolean isTls() {
        return this.d;
    }

    public final void setTls(boolean z) {
        this.d = z;
    }

    public final int getQos() {
        return this.e;
    }

    public final void setQos(int i2) {
        this.e = i2;
    }

    public final int getPingInterval() {
        return this.f;
    }

    public final void setPingInterval(int i2) {
        this.f = i2;
    }

    public final C0012a getChannels() {
        return this.g;
    }

    public final void setChannels(C0012a aVar) {
        this.g = aVar;
    }

    public final String getJwtToken() {
        return this.j;
    }

    public final void setJwtToken(String str) {
        this.j = str;
    }

    public final boolean shouldCleanSession() {
        return this.h;
    }

    public final void setShouldCleanSession(boolean z) {
        this.h = z;
    }

    public final int getTimeout() {
        return this.i;
    }

    public final void setTimeout(int i2) {
        this.i = i2;
    }
}
