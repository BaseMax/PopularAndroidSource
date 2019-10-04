package c.e.a.b.h.b;

import android.content.SharedPreferences;
import c.e.a.b.d.d.r;

public final class H {

    /* renamed from: a  reason: collision with root package name */
    public final String f10635a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f10636b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10637c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10638d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F f10639e;

    public H(F f2, String str, boolean z) {
        this.f10639e = f2;
        r.b(str);
        this.f10635a = str;
        this.f10636b = z;
    }

    public final boolean a() {
        if (!this.f10637c) {
            this.f10637c = true;
            this.f10638d = this.f10639e.t().getBoolean(this.f10635a, this.f10636b);
        }
        return this.f10638d;
    }

    public final void a(boolean z) {
        SharedPreferences.Editor edit = this.f10639e.t().edit();
        edit.putBoolean(this.f10635a, z);
        edit.apply();
        this.f10638d = z;
    }
}
