package c.e.a.b.h.b;

import android.content.SharedPreferences;
import android.util.Pair;
import c.e.a.b.d.d.r;

public final class J {

    /* renamed from: a  reason: collision with root package name */
    public final String f10661a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10662b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10663c;

    /* renamed from: d  reason: collision with root package name */
    public final long f10664d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F f10665e;

    public J(F f2, String str, long j2) {
        this.f10665e = f2;
        r.b(str);
        r.a(j2 > 0);
        this.f10661a = String.valueOf(str).concat(":start");
        this.f10662b = String.valueOf(str).concat(":count");
        this.f10663c = String.valueOf(str).concat(":value");
        this.f10664d = j2;
    }

    public final void a() {
        this.f10665e.l();
        long c2 = this.f10665e.c().c();
        SharedPreferences.Editor edit = this.f10665e.t().edit();
        edit.remove(this.f10662b);
        edit.remove(this.f10663c);
        edit.putLong(this.f10661a, c2);
        edit.apply();
    }

    public final Pair<String, Long> b() {
        long j2;
        this.f10665e.l();
        this.f10665e.l();
        long c2 = c();
        if (c2 == 0) {
            a();
            j2 = 0;
        } else {
            j2 = Math.abs(c2 - this.f10665e.c().c());
        }
        long j3 = this.f10664d;
        if (j2 < j3) {
            return null;
        }
        if (j2 > (j3 << 1)) {
            a();
            return null;
        }
        String string = this.f10665e.t().getString(this.f10663c, null);
        long j4 = this.f10665e.t().getLong(this.f10662b, 0);
        a();
        if (string == null || j4 <= 0) {
            return F.f10610c;
        }
        return new Pair<>(string, Long.valueOf(j4));
    }

    public final long c() {
        return this.f10665e.t().getLong(this.f10661a, 0);
    }

    public final void a(String str, long j2) {
        this.f10665e.l();
        if (c() == 0) {
            a();
        }
        if (str == null) {
            str = "";
        }
        long j3 = this.f10665e.t().getLong(this.f10662b, 0);
        if (j3 <= 0) {
            SharedPreferences.Editor edit = this.f10665e.t().edit();
            edit.putString(this.f10663c, str);
            edit.putLong(this.f10662b, 1);
            edit.apply();
            return;
        }
        long j4 = j3 + 1;
        boolean z = (this.f10665e.g().v().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j4;
        SharedPreferences.Editor edit2 = this.f10665e.t().edit();
        if (z) {
            edit2.putString(this.f10663c, str);
        }
        edit2.putLong(this.f10662b, j4);
        edit2.apply();
    }
}
