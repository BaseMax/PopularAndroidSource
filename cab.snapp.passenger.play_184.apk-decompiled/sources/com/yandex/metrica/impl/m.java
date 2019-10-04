package com.yandex.metrica.impl;

import android.content.ContentValues;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.ld;
import com.yandex.metrica.impl.ob.ne;
import java.util.LinkedHashMap;
import java.util.Map;

abstract class m extends ar {

    /* renamed from: a  reason: collision with root package name */
    static final ContentValues f5842a = new ContentValues();

    /* renamed from: b  reason: collision with root package name */
    final Map<String, String> f5843b = new LinkedHashMap();
    ld c;

    /* access modifiers changed from: package-private */
    public m a(ContentValues contentValues) {
        this.f5843b.clear();
        for (Map.Entry next : contentValues.valueSet()) {
            this.f5843b.put(next.getKey(), next.getValue().toString());
        }
        String asString = contentValues.getAsString("report_request_parameters");
        if (!TextUtils.isEmpty(asString)) {
            try {
                this.c = new ld(new ne.a(asString));
            } catch (Exception unused) {
            }
            return this;
        }
        D();
        return this;
    }

    private void D() {
        this.c = new ld();
    }

    public String a() {
        return super.a() + " [" + this.f5843b.toString() + "]";
    }
}
