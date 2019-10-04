package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jv;
import com.yandex.metrica.impl.ob.oq;
import com.yandex.metrica.impl.ob.ot;

public class NameAttribute extends StringAttribute {
    NameAttribute() {
        super("appmetrica_name", new oq(100, "Name attribute"), new ot(), new jv());
    }
}
