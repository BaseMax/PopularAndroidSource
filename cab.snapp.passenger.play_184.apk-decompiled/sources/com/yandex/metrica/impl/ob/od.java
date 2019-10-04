package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.s;

public class od {

    /* renamed from: a  reason: collision with root package name */
    private final nh<oe, oc> f6473a;

    /* renamed from: b  reason: collision with root package name */
    private final nh<s.a, oc> f6474b;

    public od(Context context) {
        this(new oa(), new of(), new nx(context));
    }

    public od(oc ocVar, oc ocVar2, oc ocVar3) {
        this.f6473a = new nh<>(ocVar);
        this.f6473a.a(oe.NONE, ocVar);
        this.f6473a.a(oe.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, ocVar2);
        this.f6473a.a(oe.AES_VALUE_ENCRYPTION, ocVar3);
        this.f6474b = new nh<>(ocVar);
        this.f6474b.a(s.a.EVENT_TYPE_IDENTITY, ocVar3);
    }

    public oc a(oe oeVar) {
        return this.f6473a.a(oeVar);
    }

    public oc a(i iVar) {
        return this.f6474b.a(s.a.a(iVar.e()));
    }
}
