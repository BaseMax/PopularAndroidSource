package org.eclipse.paho.a.a.e;

import java.util.Enumeration;
import java.util.Properties;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8784a = org.eclipse.paho.a.a.a.a.class.getName();
    private static final String c = System.getProperty("line.separator", "\n");

    /* renamed from: b  reason: collision with root package name */
    private b f8785b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8784a);
    private String d;
    private org.eclipse.paho.a.a.a.a e;

    public a(String str, org.eclipse.paho.a.a.a.a aVar) {
        this.d = str;
        this.e = aVar;
        this.f8785b.setResourceName(str);
    }

    public final void dumpClientDebug() {
        dumpClientComms();
        dumpConOptions();
        dumpClientState();
        dumpBaseDebug();
    }

    public final void dumpSystemProperties() {
        this.f8785b.fine(f8784a, "dumpSystemProperties", dumpProperties(System.getProperties(), "SystemProperties").toString());
    }

    public final void dumpClientState() {
        org.eclipse.paho.a.a.a.a aVar = this.e;
        if (aVar != null && aVar.getClientState() != null) {
            Properties debug = this.e.getClientState().getDebug();
            b bVar = this.f8785b;
            String str = f8784a;
            bVar.fine(str, "dumpClientState", dumpProperties(debug, String.valueOf(this.d) + " : ClientState").toString());
        }
    }

    public final void dumpClientComms() {
        org.eclipse.paho.a.a.a.a aVar = this.e;
        if (aVar != null) {
            Properties debug = aVar.getDebug();
            b bVar = this.f8785b;
            String str = f8784a;
            bVar.fine(str, "dumpClientComms", dumpProperties(debug, String.valueOf(this.d) + " : ClientComms").toString());
        }
    }

    public final void dumpConOptions() {
        org.eclipse.paho.a.a.a.a aVar = this.e;
        if (aVar != null) {
            Properties debug = aVar.getConOptions().getDebug();
            b bVar = this.f8785b;
            String str = f8784a;
            bVar.fine(str, "dumpConOptions", dumpProperties(debug, String.valueOf(this.d) + " : Connect Options").toString());
        }
    }

    public static String dumpProperties(Properties properties, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<?> propertyNames = properties.propertyNames();
        stringBuffer.append(String.valueOf(c) + "============== " + str + " ==============" + c);
        while (propertyNames.hasMoreElements()) {
            String str2 = (String) propertyNames.nextElement();
            stringBuffer.append(String.valueOf(left(str2, 28, ' ')) + ":  " + properties.get(str2) + c);
        }
        stringBuffer.append("==========================================" + c);
        return stringBuffer.toString();
    }

    public static String left(String str, int i, char c2) {
        if (str.length() >= i) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        stringBuffer.append(str);
        int length = i - str.length();
        while (true) {
            length--;
            if (length < 0) {
                return stringBuffer.toString();
            }
            stringBuffer.append(c2);
        }
    }

    public final void dumpBaseDebug() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.valueOf(c) + "============== Version Info ==============" + c);
        stringBuffer.append(String.valueOf(left("Version", 20, ' ')) + ":  " + org.eclipse.paho.a.a.a.a.VERSION + c);
        stringBuffer.append(String.valueOf(left("Build Level", 20, ' ')) + ":  " + org.eclipse.paho.a.a.a.a.BUILD_LEVEL + c);
        StringBuilder sb = new StringBuilder("==========================================");
        sb.append(c);
        stringBuffer.append(sb.toString());
        this.f8785b.fine(f8784a, "dumpVersion", stringBuffer.toString());
        dumpSystemProperties();
        this.f8785b.dumpTrace();
    }
}
