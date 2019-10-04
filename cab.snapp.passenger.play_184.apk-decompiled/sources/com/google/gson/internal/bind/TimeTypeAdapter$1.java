package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import java.sql.Time;

class TimeTypeAdapter$1 implements r {
    TimeTypeAdapter$1() {
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.getRawType() == Time.class) {
            return new g();
        }
        return null;
    }
}
