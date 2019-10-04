package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.bs;
import com.yandex.metrica.impl.ob.at;

public class aw extends at.a {
    public aw(bs bsVar) {
        super(bsVar);
    }

    /* access modifiers changed from: protected */
    public boolean a(bs bsVar, CounterConfiguration counterConfiguration) {
        return !bsVar.b() && super.a(bsVar, counterConfiguration);
    }
}
