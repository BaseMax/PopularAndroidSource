package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.ac;
import com.yandex.metrica.impl.ob.bt;
import com.yandex.metrica.impl.ob.ch;

public class ca<T extends ch, C extends ac<?>> extends bt<T, C> {
    public ca(bz<T> bzVar) {
        super(bzVar);
    }

    public boolean b(i iVar) {
        return a(iVar, new bt.a<T>() {
            public boolean a(T t, i iVar) {
                return t.a(iVar);
            }
        });
    }
}
