package c.e.a.b.h.b;

import android.content.SharedPreferences;
import c.e.a.b.d.d.r;

public final class K {

    /* renamed from: a  reason: collision with root package name */
    public final String f10673a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10674b = null;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10675c;

    /* renamed from: d  reason: collision with root package name */
    public String f10676d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F f10677e;

    public K(F f2, String str, String str2) {
        this.f10677e = f2;
        r.b(str);
        this.f10673a = str;
    }

    public final String a() {
        if (!this.f10675c) {
            this.f10675c = true;
            this.f10676d = this.f10677e.t().getString(this.f10673a, null);
        }
        return this.f10676d;
    }

    public final void a(String str) {
        if (!cc.e(str, this.f10676d)) {
            SharedPreferences.Editor edit = this.f10677e.t().edit();
            edit.putString(this.f10673a, str);
            edit.apply();
            this.f10676d = str;
        }
    }
}
