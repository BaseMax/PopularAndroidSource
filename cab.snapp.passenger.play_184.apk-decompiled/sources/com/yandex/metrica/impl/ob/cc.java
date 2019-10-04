package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.bt;
import com.yandex.metrica.impl.ob.cb;
import com.yandex.metrica.impl.ob.x;

public class cc<T extends cb, C extends x> extends bt<T, C> {
    public cc(bz<T> bzVar) {
        super(bzVar);
    }

    public boolean a(i iVar, final bd bdVar) {
        return a(iVar, new bt.a<T>() {
            public boolean a(T t, i iVar) {
                return t.a(iVar, bd.this);
            }
        });
    }
}
