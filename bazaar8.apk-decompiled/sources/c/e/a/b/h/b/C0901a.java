package c.e.a.b.h.b;

import android.os.Bundle;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import java.util.Map;

/* renamed from: c.e.a.b.h.b.a  reason: case insensitive filesystem */
public final class C0901a extends _a {

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, Long> f10821b = new C0243b();

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, Integer> f10822c = new C0243b();

    /* renamed from: d  reason: collision with root package name */
    public long f10823d;

    public C0901a(Y y) {
        super(y);
    }

    public final void a(String str, long j2) {
        if (str == null || str.length() == 0) {
            e().t().a("Ad unit id must be a non-empty string");
        } else {
            d().a((Runnable) new C0975z(this, str, j2));
        }
    }

    public final void b(String str, long j2) {
        if (str == null || str.length() == 0) {
            e().t().a("Ad unit id must be a non-empty string");
        } else {
            d().a((Runnable) new C0902aa(this, str, j2));
        }
    }

    public final void c(String str, long j2) {
        j();
        l();
        r.b(str);
        if (this.f10822c.isEmpty()) {
            this.f10823d = j2;
        }
        Integer num = this.f10822c.get(str);
        if (num != null) {
            this.f10822c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f10822c.size() >= 100) {
            e().w().a("Too many ads visible");
        } else {
            this.f10822c.put(str, 1);
            this.f10821b.put(str, Long.valueOf(j2));
        }
    }

    public final void d(String str, long j2) {
        j();
        l();
        r.b(str);
        Integer num = this.f10822c.get(str);
        if (num != null) {
            C0909cb B = s().B();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f10822c.remove(str);
                Long l2 = this.f10821b.get(str);
                if (l2 == null) {
                    e().t().a("First ad unit exposure time was never set");
                } else {
                    this.f10821b.remove(str);
                    a(str, j2 - l2.longValue(), B);
                }
                if (this.f10822c.isEmpty()) {
                    long j3 = this.f10823d;
                    if (j3 == 0) {
                        e().t().a("First ad exposure time was never set");
                        return;
                    } else {
                        a(j2 - j3, B);
                        this.f10823d = 0;
                    }
                }
                return;
            }
            this.f10822c.put(str, Integer.valueOf(intValue));
            return;
        }
        e().t().a("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    public final void a(long j2, C0909cb cbVar) {
        if (cbVar == null) {
            e().B().a("Not logging ad exposure. No active activity");
        } else if (j2 < 1000) {
            e().B().a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j2);
            C0912db.a(cbVar, bundle, true);
            p().b("am", "_xa", bundle);
        }
    }

    public final void b(long j2) {
        for (String put : this.f10821b.keySet()) {
            this.f10821b.put(put, Long.valueOf(j2));
        }
        if (!this.f10821b.isEmpty()) {
            this.f10823d = j2;
        }
    }

    public final void a(String str, long j2, C0909cb cbVar) {
        if (cbVar == null) {
            e().B().a("Not logging ad unit exposure. No active activity");
        } else if (j2 < 1000) {
            e().B().a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j2);
            C0912db.a(cbVar, bundle, true);
            p().b("am", "_xu", bundle);
        }
    }

    public final void a(long j2) {
        C0909cb B = s().B();
        for (String next : this.f10821b.keySet()) {
            a(next, j2 - this.f10821b.get(next).longValue(), B);
        }
        if (!this.f10821b.isEmpty()) {
            a(j2 - this.f10823d, B);
        }
        b(j2);
    }
}
