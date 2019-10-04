package org.eclipse.paho.a.a.a;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class p extends l {

    /* renamed from: a  reason: collision with root package name */
    private ResourceBundle f8770a = ResourceBundle.getBundle("org.eclipse.paho.client.mqttv3.internal.nls.messages");

    /* access modifiers changed from: protected */
    public final String a(int i) {
        try {
            return this.f8770a.getString(Integer.toString(i));
        } catch (MissingResourceException unused) {
            return "MqttException";
        }
    }
}
