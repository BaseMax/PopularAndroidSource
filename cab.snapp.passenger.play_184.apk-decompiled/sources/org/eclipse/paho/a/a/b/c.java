package org.eclipse.paho.a.a.b;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class c {
    public static final String MQTT_CLIENT_MSG_CAT = "org.eclipse.paho.client.mqttv3.internal.nls.logcat";

    /* renamed from: a  reason: collision with root package name */
    private static final String f8777a = c.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private static String f8778b = null;
    private static String c = a.class.getName();

    public static b getLogger(String str, String str2) {
        String str3 = f8778b;
        if (str3 == null) {
            str3 = c;
        }
        b a2 = a(str3, ResourceBundle.getBundle(str), str2);
        if (a2 != null) {
            return a2;
        }
        throw new MissingResourceException("Error locating the logging class", f8777a, str2);
    }

    private static b a(String str, ResourceBundle resourceBundle, String str2) {
        b bVar;
        try {
            Class<?> cls = Class.forName(str);
            if (cls != null) {
                try {
                    bVar = (b) cls.newInstance();
                    bVar.initialise(resourceBundle, str2, null);
                } catch (ExceptionInInitializerError | IllegalAccessException | InstantiationException | SecurityException unused) {
                    return null;
                }
            } else {
                bVar = null;
            }
            return bVar;
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
            return null;
        }
    }

    public static String getLoggingProperty(String str) {
        try {
            Class<?> cls = Class.forName("java.util.logging.LogManager");
            Object invoke = cls.getMethod("getLogManager", new Class[0]).invoke(null, null);
            return (String) cls.getMethod("getProperty", new Class[]{String.class}).invoke(invoke, new Object[]{str});
        } catch (Exception unused) {
            return null;
        }
    }

    public static void setLogger(String str) {
        f8778b = str;
    }
}
