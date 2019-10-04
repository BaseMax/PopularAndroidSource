package org.eclipse.paho.android.service;

import android.os.Binder;

final class f extends Binder {

    /* renamed from: a  reason: collision with root package name */
    String f8840a;

    /* renamed from: b  reason: collision with root package name */
    private MqttService f8841b;

    f(MqttService mqttService) {
        this.f8841b = mqttService;
    }

    public final MqttService getService() {
        return this.f8841b;
    }

    public final String getActivityToken() {
        return this.f8840a;
    }
}
