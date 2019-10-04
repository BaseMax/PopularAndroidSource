package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jh;
import com.yandex.metrica.impl.ob.jk;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jo;
import com.yandex.metrica.impl.ob.jp;
import com.yandex.metrica.impl.ob.jr;
import com.yandex.metrica.impl.ob.jt;
import com.yandex.metrica.impl.ob.ju;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.ok;
import com.yandex.metrica.impl.ob.pa;

public final class NumberAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final jn f6534a;

    NumberAttribute(String str, pa<String> paVar, jh jhVar) {
        this.f6534a = new jn(str, paVar, jhVar);
    }

    public final UserProfileUpdate<? extends jz> withValue(double d) {
        jr jrVar = new jr(this.f6534a.a(), d, new jo(), new jk(new jp(new ok(100))));
        return new UserProfileUpdate<>(jrVar);
    }

    public final UserProfileUpdate<? extends jz> withValueIfUndefined(double d) {
        jr jrVar = new jr(this.f6534a.a(), d, new jo(), new ju(new jp(new ok(100))));
        return new UserProfileUpdate<>(jrVar);
    }

    public final UserProfileUpdate<? extends jz> withValueReset() {
        return new UserProfileUpdate<>(new jt(1, this.f6534a.a(), new jo(), new jp(new ok(100))));
    }
}
