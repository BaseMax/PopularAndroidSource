package org.eclipse.paho.a.a;

import java.util.Properties;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import org.eclipse.paho.a.a.a.o;
import org.eclipse.paho.a.a.e.a;

public final class n {
    public static final boolean CLEAN_SESSION_DEFAULT = true;
    public static final int CONNECTION_TIMEOUT_DEFAULT = 30;
    public static final int KEEP_ALIVE_INTERVAL_DEFAULT = 60;
    public static final int MAX_INFLIGHT_DEFAULT = 10;
    public static final int MQTT_VERSION_3_1 = 3;
    public static final int MQTT_VERSION_3_1_1 = 4;
    public static final int MQTT_VERSION_DEFAULT = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f8795a = 60;

    /* renamed from: b  reason: collision with root package name */
    private int f8796b = 10;
    private String c = null;
    private q d = null;
    private String e;
    private char[] f;
    private SocketFactory g;
    private Properties h = null;
    private boolean i = true;
    private HostnameVerifier j = null;
    private boolean k = true;
    private int l = 30;
    private String[] m = null;
    private int n = 0;
    private boolean o = false;
    private int p = 128000;
    private Properties q = null;
    private int r = 1;

    public final char[] getPassword() {
        return this.f;
    }

    public final void setPassword(char[] cArr) {
        this.f = (char[]) cArr.clone();
    }

    public final String getUserName() {
        return this.e;
    }

    public final void setUserName(String str) {
        this.e = str;
    }

    public final int getMaxReconnectDelay() {
        return this.p;
    }

    public final void setMaxReconnectDelay(int i2) {
        this.p = i2;
    }

    public final void setWill(w wVar, byte[] bArr, int i2, boolean z) {
        String name = wVar.getName();
        a(name, bArr);
        a(name, new q(bArr), i2, z);
    }

    public final void setWill(String str, byte[] bArr, int i2, boolean z) {
        a(str, bArr);
        a(str, new q(bArr), i2, z);
    }

    private static void a(String str, Object obj) {
        if (str == null || obj == null) {
            throw new IllegalArgumentException();
        }
        w.validate(str, false);
    }

    private void a(String str, q qVar, int i2, boolean z) {
        this.c = str;
        this.d = qVar;
        this.d.setQos(i2);
        this.d.setRetained(z);
        this.d.f8800b = false;
    }

    public final int getKeepAliveInterval() {
        return this.f8795a;
    }

    public final int getMqttVersion() {
        return this.n;
    }

    public final void setKeepAliveInterval(int i2) throws IllegalArgumentException {
        if (i2 >= 0) {
            this.f8795a = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final int getMaxInflight() {
        return this.f8796b;
    }

    public final void setMaxInflight(int i2) {
        if (i2 >= 0) {
            this.f8796b = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final int getConnectionTimeout() {
        return this.l;
    }

    public final void setConnectionTimeout(int i2) {
        if (i2 >= 0) {
            this.l = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final SocketFactory getSocketFactory() {
        return this.g;
    }

    public final void setSocketFactory(SocketFactory socketFactory) {
        this.g = socketFactory;
    }

    public final String getWillDestination() {
        return this.c;
    }

    public final q getWillMessage() {
        return this.d;
    }

    public final Properties getSSLProperties() {
        return this.h;
    }

    public final void setSSLProperties(Properties properties) {
        this.h = properties;
    }

    public final boolean isHttpsHostnameVerificationEnabled() {
        return this.i;
    }

    public final void setHttpsHostnameVerificationEnabled(boolean z) {
        this.i = z;
    }

    public final HostnameVerifier getSSLHostnameVerifier() {
        return this.j;
    }

    public final void setSSLHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.j = hostnameVerifier;
    }

    public final boolean isCleanSession() {
        return this.k;
    }

    public final void setCleanSession(boolean z) {
        this.k = z;
    }

    public final String[] getServerURIs() {
        return this.m;
    }

    public final void setServerURIs(String[] strArr) {
        for (String validateURI : strArr) {
            o.validateURI(validateURI);
        }
        this.m = (String[]) strArr.clone();
    }

    public final void setMqttVersion(int i2) throws IllegalArgumentException {
        if (i2 == 0 || i2 == 3 || i2 == 4) {
            this.n = i2;
            return;
        }
        throw new IllegalArgumentException("An incorrect version was used \"" + i2 + "\". Acceptable version options are 0, 3 and 4.");
    }

    public final boolean isAutomaticReconnect() {
        return this.o;
    }

    public final void setAutomaticReconnect(boolean z) {
        this.o = z;
    }

    public final int getExecutorServiceTimeout() {
        return this.r;
    }

    public final void setExecutorServiceTimeout(int i2) {
        this.r = i2;
    }

    public final Properties getDebug() {
        String str;
        Properties properties = new Properties();
        properties.put("MqttVersion", Integer.valueOf(getMqttVersion()));
        properties.put("CleanSession", Boolean.valueOf(isCleanSession()));
        properties.put("ConTimeout", Integer.valueOf(getConnectionTimeout()));
        properties.put("KeepAliveInterval", Integer.valueOf(getKeepAliveInterval()));
        properties.put("UserName", getUserName() == null ? "null" : getUserName());
        if (getWillDestination() == null) {
            str = "null";
        } else {
            str = getWillDestination();
        }
        properties.put("WillDestination", str);
        if (getSocketFactory() == null) {
            properties.put("SocketFactory", "null");
        } else {
            properties.put("SocketFactory", getSocketFactory());
        }
        if (getSSLProperties() == null) {
            properties.put("SSLProperties", "null");
        } else {
            properties.put("SSLProperties", getSSLProperties());
        }
        return properties;
    }

    public final void setCustomWebSocketHeaders(Properties properties) {
        this.q = properties;
    }

    public final Properties getCustomWebSocketHeaders() {
        return this.q;
    }

    public final String toString() {
        return a.dumpProperties(getDebug(), "Connection options");
    }
}
