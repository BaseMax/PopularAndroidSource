package com.google.gson.internal.bind;

import c.e.d.b.a.C1007a;
import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

class ArrayTypeAdapter$1 implements y {
    public <T> x<T> a(j jVar, a<T> aVar) {
        Type b2 = aVar.b();
        if (!(b2 instanceof GenericArrayType) && (!(b2 instanceof Class) || !((Class) b2).isArray())) {
            return null;
        }
        Type d2 = C$Gson$Types.d(b2);
        return new C1007a(jVar, jVar.a(a.a(d2)), C$Gson$Types.e(d2));
    }
}
