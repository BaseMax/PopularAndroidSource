package org.eclipse.paho.a.a.a;

public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private static l f8765a;

    /* access modifiers changed from: protected */
    public abstract String a(int i);

    public static final String getMessage(int i) {
        if (f8765a == null) {
            if (i.isClassAvailable("java.util.ResourceBundle")) {
                try {
                    f8765a = (l) Class.forName("org.eclipse.paho.a.a.a.p").newInstance();
                } catch (Exception unused) {
                    return "";
                }
            } else if (i.isClassAvailable("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog")) {
                try {
                    f8765a = (l) Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
                } catch (Exception unused2) {
                    return "";
                }
            }
        }
        return f8765a.a(i);
    }
}
