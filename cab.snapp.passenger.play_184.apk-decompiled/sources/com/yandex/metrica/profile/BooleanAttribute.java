package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jh;
import com.yandex.metrica.impl.ob.jj;
import com.yandex.metrica.impl.ob.jk;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jt;
import com.yandex.metrica.impl.ob.ju;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.pa;

public class BooleanAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final jn f6531a;

    BooleanAttribute(String str, pa<String> paVar, jh jhVar) {
        this.f6531a = new jn(str, paVar, jhVar);
    }

    public UserProfileUpdate<? extends jz> withValue(boolean z) {
        return new UserProfileUpdate<>(new jj(this.f6531a.a(), z, this.f6531a.c(), new jk(this.f6531a.b())));
    }

    public UserProfileUpdate<? extends jz> withValueIfUndefined(boolean z) {
        return new UserProfileUpdate<>(new jj(this.f6531a.a(), z, this.f6531a.c(), new ju(this.f6531a.b())));
    }

    public UserProfileUpdate<? extends jz> withValueReset() {
        return new UserProfileUpdate<>(new jt(3, this.f6531a.a(), this.f6531a.c(), this.f6531a.b()));
    }
}
