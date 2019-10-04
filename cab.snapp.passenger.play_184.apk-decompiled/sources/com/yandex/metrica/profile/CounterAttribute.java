package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jh;
import com.yandex.metrica.impl.ob.jm;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.pa;

public final class CounterAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final jn f6532a;

    CounterAttribute(String str, pa<String> paVar, jh jhVar) {
        this.f6532a = new jn(str, paVar, jhVar);
    }

    public final UserProfileUpdate<? extends jz> withDelta(double d) {
        return new UserProfileUpdate<>(new jm(this.f6532a.a(), d));
    }
}
