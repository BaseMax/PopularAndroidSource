package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.d;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.ns;

public class cz extends cm {
    public cz(ac acVar) {
        super(acVar);
    }

    public boolean a(i iVar) {
        b(iVar);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void b(i iVar) {
        String m = iVar.m();
        d a2 = ns.a(m);
        String j = a().j();
        d a3 = ns.a(j);
        if (!a2.equals(a3)) {
            boolean z = true;
            if (TextUtils.isEmpty(a2.a()) && !TextUtils.isEmpty(a3.a())) {
                iVar.a(j);
                a(iVar, ns.a.LOGOUT);
            } else {
                if (!TextUtils.isEmpty(a2.a()) && TextUtils.isEmpty(a3.a())) {
                    a(iVar, ns.a.LOGIN);
                } else {
                    if (TextUtils.isEmpty(a2.a()) || a2.a().equals(a3.a())) {
                        z = false;
                    }
                    if (z) {
                        a(iVar, ns.a.SWITCH);
                    } else {
                        a(iVar, ns.a.d);
                    }
                }
            }
            a().a(m);
        }
    }

    private void a(i iVar, ns.a aVar) {
        iVar.c(ns.a(aVar));
        a().d(iVar);
    }
}
