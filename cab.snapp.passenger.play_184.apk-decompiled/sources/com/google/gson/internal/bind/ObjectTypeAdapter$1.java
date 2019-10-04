package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;

class ObjectTypeAdapter$1 implements r {
    ObjectTypeAdapter$1() {
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.getRawType() == Object.class) {
            return new e(eVar);
        }
        return null;
    }
}
