package org.eclipse.paho.a.a.a;

import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.u;

public final class i {
    public static p createMqttException(int i) {
        if (i == 4 || i == 5) {
            return new u(i);
        }
        return new p(i);
    }

    public static p createMqttException(Throwable th) {
        if (th.getClass().getName().equals("java.security.GeneralSecurityException")) {
            return new u(th);
        }
        return new p(th);
    }

    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private i() {
    }
}
