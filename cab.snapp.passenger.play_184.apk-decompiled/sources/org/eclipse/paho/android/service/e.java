package org.eclipse.paho.android.service;

import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;

final class e extends g implements f {

    /* renamed from: b  reason: collision with root package name */
    private q f8839b;

    e(MqttAndroidClient mqttAndroidClient, Object obj, c cVar, q qVar) {
        super(mqttAndroidClient, obj, cVar);
        this.f8839b = qVar;
    }

    public final q getMessage() throws p {
        return this.f8839b;
    }
}
