package com.google.gson.internal.bind;

import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$26 implements y {
    public <T> x<T> a(j jVar, a<T> aVar) {
        if (aVar.a() != Timestamp.class) {
            return null;
        }
        return new E(this, jVar.a(Date.class));
    }
}
