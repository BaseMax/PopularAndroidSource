package com.pusher.client;

import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.pusher.java_websocket.WebSocket;
import java.net.Proxy;

public class d {
    public static final String LIB_VERSION = a();

    /* renamed from: a  reason: collision with root package name */
    private static final String f5057a = ("?client=java-client&protocol=5&version=" + LIB_VERSION);

    /* renamed from: b  reason: collision with root package name */
    private String f5058b = "ws.pusherapp.com";
    private int c = 80;
    private int d = WebSocket.DEFAULT_WSS_PORT;
    private boolean e = true;
    private long f = 120000;
    private long g = IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION;
    private b h;
    private Proxy i = Proxy.NO_PROXY;
    private int j = 6;
    private int k = 30;

    public boolean isEncrypted() {
        return this.e;
    }

    public d setEncrypted(boolean z) {
        this.e = z;
        return this;
    }

    public b getAuthorizer() {
        return this.h;
    }

    public d setAuthorizer(b bVar) {
        this.h = bVar;
        return this;
    }

    public d setHost(String str) {
        this.f5058b = str;
        return this;
    }

    public d setWsPort(int i2) {
        this.c = i2;
        return this;
    }

    public d setWssPort(int i2) {
        this.d = i2;
        return this;
    }

    public d setCluster(String str) {
        this.f5058b = "ws-" + str + ".pusher.com";
        this.c = 80;
        this.d = WebSocket.DEFAULT_WSS_PORT;
        return this;
    }

    public d setActivityTimeout(long j2) {
        if (j2 >= 1000) {
            this.f = j2;
            return this;
        }
        throw new IllegalArgumentException("Activity timeout must be at least 1,000ms (and is recommended to be much higher)");
    }

    public long getActivityTimeout() {
        return this.f;
    }

    public d setPongTimeout(long j2) {
        if (j2 >= 1000) {
            this.g = j2;
            return this;
        }
        throw new IllegalArgumentException("Pong timeout must be at least 1,000ms (and is recommended to be much higher)");
    }

    public d setMaxReconnectionAttempts(int i2) {
        this.j = i2;
        return this;
    }

    public d setMaxReconnectGapInSeconds(int i2) {
        this.k = i2;
        return this;
    }

    public long getPongTimeout() {
        return this.g;
    }

    public String buildUrl(String str) {
        Object[] objArr = new Object[5];
        objArr[0] = this.e ? "wss" : "ws";
        objArr[1] = this.f5058b;
        objArr[2] = Integer.valueOf(this.e ? this.d : this.c);
        objArr[3] = str;
        objArr[4] = f5057a;
        return String.format("%s://%s:%s/app/%s%s", objArr);
    }

    public d setProxy(Proxy proxy) {
        if (proxy != null) {
            this.i = proxy;
            return this;
        }
        throw new IllegalArgumentException("proxy must not be null (instead use Proxy.NO_PROXY)");
    }

    public Proxy getProxy() {
        return this.i;
    }

    public int getMaxReconnectionAttempts() {
        return this.j;
    }

    public int getMaxReconnectGapInSeconds() {
        return this.k;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (r0 != null) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003e, code lost:
        if (r0 == null) goto L_0x0041;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a() {
        /*
            r0 = 0
            java.util.Properties r1 = new java.util.Properties     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            r1.<init>()     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            java.lang.Class<com.pusher.client.d> r2 = com.pusher.client.d.class
            java.lang.String r3 = "/pusher.properties"
            java.io.InputStream r0 = r2.getResourceAsStream(r3)     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            r1.load(r0)     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            java.lang.String r2 = "version"
            java.lang.Object r1 = r1.get(r2)     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            java.lang.String r2 = "@version@"
            boolean r2 = r1.equals(r2)     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            if (r2 == 0) goto L_0x0023
            java.lang.String r1 = "0.0.0-dev"
        L_0x0023:
            if (r1 == 0) goto L_0x0031
            int r2 = r1.length()     // Catch:{ Exception -> 0x003e, all -> 0x0037 }
            if (r2 <= 0) goto L_0x0031
            if (r0 == 0) goto L_0x0030
            r0.close()     // Catch:{ IOException -> 0x0030 }
        L_0x0030:
            return r1
        L_0x0031:
            if (r0 == 0) goto L_0x0041
        L_0x0033:
            r0.close()     // Catch:{ IOException -> 0x0041 }
            goto L_0x0041
        L_0x0037:
            r1 = move-exception
            if (r0 == 0) goto L_0x003d
            r0.close()     // Catch:{ IOException -> 0x003d }
        L_0x003d:
            throw r1
        L_0x003e:
            if (r0 == 0) goto L_0x0041
            goto L_0x0033
        L_0x0041:
            java.lang.String r0 = "0.0.0"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.client.d.a():java.lang.String");
    }
}
