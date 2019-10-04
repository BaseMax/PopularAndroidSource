package com.b.a;

import android.text.TextUtils;
import com.google.gson.e;
import com.google.gson.p;
import java.lang.reflect.Type;

public final class f implements o {

    /* renamed from: a  reason: collision with root package name */
    private final e f1963a;

    public f(e eVar) {
        this.f1963a = eVar;
    }

    public final <T> T fromJson(String str, Type type) throws p {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f1963a.fromJson(str, type);
    }

    public final String toJson(Object obj) {
        return this.f1963a.toJson(obj);
    }
}
