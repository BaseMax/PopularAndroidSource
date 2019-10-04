package com.google.gson.internal.bind;

import c.e.d.b.a.C1016j;
import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import java.sql.Date;

class SqlDateTypeAdapter$1 implements y {
    public <T> x<T> a(j jVar, a<T> aVar) {
        if (aVar.a() == Date.class) {
            return new C1016j();
        }
        return null;
    }
}
