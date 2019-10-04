package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.i;

public class cp extends cm {

    /* renamed from: a  reason: collision with root package name */
    private final dw f5921a;

    public cp(ac acVar) {
        this(acVar, acVar.H());
    }

    public boolean a(i iVar) {
        if (!TextUtils.isEmpty(iVar.b())) {
            iVar.a(this.f5921a.a(iVar.b()));
        }
        return false;
    }

    cp(ac acVar, dw dwVar) {
        super(acVar);
        this.f5921a = dwVar;
    }
}
