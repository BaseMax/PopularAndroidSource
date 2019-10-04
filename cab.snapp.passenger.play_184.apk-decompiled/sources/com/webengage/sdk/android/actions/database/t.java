package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.WebEngageConstant;

class t {

    /* renamed from: a  reason: collision with root package name */
    r f5376a;

    /* renamed from: b  reason: collision with root package name */
    private int f5377b = 5;
    private Context c = null;
    private e d = null;
    private m e = null;
    private j f = null;

    t(r rVar, Context context) {
        this.f5376a = rVar;
        this.c = context;
    }

    private s a(int i) {
        return (this.f5376a.a() || this.f5376a.c() <= this.f5377b) ? (i >= 2 || e() == ReportingStrategy.FORCE_SYNC) ? new c(c(), a()) : new d(c(), d(), this.c) : c();
    }

    private int b(l lVar) {
        if (lVar == null) {
            return 1;
        }
        if ("application".equals(lVar.f())) {
            return (lVar.l() == null || !((Boolean) lVar.l().get("high_reporting_priority")).booleanValue()) ? 1 : 2;
        }
        Integer num = WebEngageConstant.d.get(lVar.h());
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    private e c() {
        if (this.d == null) {
            this.d = new e(this.c);
        }
        return this.d;
    }

    private m d() {
        if (this.e == null) {
            this.e = new m(this.c);
        }
        return this.e;
    }

    private ReportingStrategy e() {
        return WebEngage.get().getWebEngageConfig().getEventReportingStrategy();
    }

    public j a() {
        if (this.f == null) {
            this.f = new j(this.c, d());
        }
        return this.f;
    }

    public s a(l lVar) {
        return a(b(lVar));
    }

    public r b() {
        return this.f5376a;
    }
}
