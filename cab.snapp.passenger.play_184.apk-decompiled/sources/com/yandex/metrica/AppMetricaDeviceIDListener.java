package com.yandex.metrica;

public interface AppMetricaDeviceIDListener {

    public enum Reason {
        UNKNOWN,
        NETWORK,
        INVALID_RESPONSE
    }

    void onError(Reason reason);

    void onLoaded(String str);
}
