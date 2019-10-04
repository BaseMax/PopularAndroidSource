package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;

public class t {

    /* renamed from: a  reason: collision with root package name */
    private final u f6502a;

    /* renamed from: b  reason: collision with root package name */
    private final CounterConfiguration f6503b;

    public t(Bundle bundle) {
        this.f6502a = u.a(bundle);
        this.f6503b = CounterConfiguration.c(bundle);
    }

    public u a() {
        return this.f6502a;
    }

    public CounterConfiguration b() {
        return this.f6503b;
    }

    public String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.f6502a + ", mCounterConfiguration=" + this.f6503b + '}';
    }
}
