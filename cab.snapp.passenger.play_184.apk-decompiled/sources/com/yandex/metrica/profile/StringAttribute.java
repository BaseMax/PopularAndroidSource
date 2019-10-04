package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jh;
import com.yandex.metrica.impl.ob.jk;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jt;
import com.yandex.metrica.impl.ob.ju;
import com.yandex.metrica.impl.ob.jw;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.os;
import com.yandex.metrica.impl.ob.pa;

public class StringAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final os<String> f6535a;

    /* renamed from: b  reason: collision with root package name */
    private final jn f6536b;

    StringAttribute(String str, os<String> osVar, pa<String> paVar, jh jhVar) {
        this.f6536b = new jn(str, paVar, jhVar);
        this.f6535a = osVar;
    }

    public UserProfileUpdate<? extends jz> withValue(String str) {
        jw jwVar = new jw(this.f6536b.a(), str, this.f6535a, this.f6536b.c(), new jk(this.f6536b.b()));
        return new UserProfileUpdate<>(jwVar);
    }

    public UserProfileUpdate<? extends jz> withValueIfUndefined(String str) {
        jw jwVar = new jw(this.f6536b.a(), str, this.f6535a, this.f6536b.c(), new ju(this.f6536b.b()));
        return new UserProfileUpdate<>(jwVar);
    }

    public UserProfileUpdate<? extends jz> withValueReset() {
        return new UserProfileUpdate<>(new jt(0, this.f6536b.a(), this.f6536b.c(), this.f6536b.b()));
    }
}
