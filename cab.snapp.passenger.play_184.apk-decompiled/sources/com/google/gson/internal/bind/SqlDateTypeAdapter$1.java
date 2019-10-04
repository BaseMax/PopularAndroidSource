package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import java.sql.Date;

class SqlDateTypeAdapter$1 implements r {
    SqlDateTypeAdapter$1() {
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.getRawType() == Date.class) {
            return new f();
        }
        return null;
    }
}
