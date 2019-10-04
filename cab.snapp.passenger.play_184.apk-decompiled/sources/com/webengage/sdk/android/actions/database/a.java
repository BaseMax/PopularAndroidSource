package com.webengage.sdk.android.actions.database;

import android.content.Context;
import java.util.Map;

class a extends com.webengage.sdk.android.a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5344b = null;

    protected a(Context context) {
        super(context);
        this.f5344b = context.getApplicationContext();
    }

    public Object a(Object obj) {
        String h = h();
        y a2 = y.a(this.f5344b);
        if (h.isEmpty()) {
            h = i();
        }
        Map<String, Object> a3 = a2.a(h);
        if (a3 != null && a3.size() > 0) {
            DataHolder.get().a(a3);
        }
        return null;
    }

    public Object a(Map<String, Object> map) {
        return null;
    }

    public void b(Object obj) {
    }
}
