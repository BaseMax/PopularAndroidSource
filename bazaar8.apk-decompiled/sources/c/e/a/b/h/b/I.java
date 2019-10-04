package c.e.a.b.h.b;

import android.content.SharedPreferences;
import c.e.a.b.d.d.r;

public final class I {

    /* renamed from: a  reason: collision with root package name */
    public final String f10651a;

    /* renamed from: b  reason: collision with root package name */
    public final long f10652b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10653c;

    /* renamed from: d  reason: collision with root package name */
    public long f10654d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F f10655e;

    public I(F f2, String str, long j2) {
        this.f10655e = f2;
        r.b(str);
        this.f10651a = str;
        this.f10652b = j2;
    }

    public final long a() {
        if (!this.f10653c) {
            this.f10653c = true;
            this.f10654d = this.f10655e.t().getLong(this.f10651a, this.f10652b);
        }
        return this.f10654d;
    }

    public final void a(long j2) {
        SharedPreferences.Editor edit = this.f10655e.t().edit();
        edit.putLong(this.f10651a, j2);
        edit.apply();
        this.f10654d = j2;
    }
}
