package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.internal.b;
import com.google.gson.q;
import com.google.gson.r;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

class ArrayTypeAdapter$1 implements r {
    ArrayTypeAdapter$1() {
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        Type type = aVar.getType();
        if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type arrayComponentType = b.getArrayComponentType(type);
        return new a(eVar, eVar.getAdapter(a.get(arrayComponentType)), b.getRawType(arrayComponentType));
    }
}
