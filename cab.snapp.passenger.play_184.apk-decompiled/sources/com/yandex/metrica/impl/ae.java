package com.yandex.metrica.impl;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.c;
import com.yandex.metrica.impl.ob.u;

class ae extends c {
    ae(Context context, u uVar, c cVar, bi biVar) {
        super(context, biVar, new bf(uVar, new CounterConfiguration(cVar)));
        this.f5812a.b().g(false);
    }
}
