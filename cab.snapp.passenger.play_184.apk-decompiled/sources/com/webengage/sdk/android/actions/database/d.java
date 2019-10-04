package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.l;

class d implements s {

    /* renamed from: a  reason: collision with root package name */
    e f5351a = null;

    /* renamed from: b  reason: collision with root package name */
    m f5352b = null;
    Context c = null;

    d(e eVar, m mVar, Context context) {
        this.f5351a = eVar;
        this.f5352b = mVar;
        this.c = context;
    }

    public boolean a(l lVar) {
        this.f5351a.a(lVar);
        if (this.f5351a.a() >= 5 && r.e()) {
            this.f5352b.a(this.f5351a.a(5));
        }
        return true;
    }
}
