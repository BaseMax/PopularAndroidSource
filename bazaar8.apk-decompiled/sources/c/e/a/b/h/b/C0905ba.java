package c.e.a.b.h.b;

import android.os.Binder;
import android.text.TextUtils;
import c.e.a.b.d.d.r;
import c.e.a.b.d.e;
import c.e.a.b.d.f;
import c.e.a.b.d.g.q;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* renamed from: c.e.a.b.h.b.ba  reason: case insensitive filesystem */
public final class C0905ba extends C0937m {

    /* renamed from: a  reason: collision with root package name */
    public final Tb f10827a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f10828b;

    /* renamed from: c  reason: collision with root package name */
    public String f10829c;

    public C0905ba(Tb tb) {
        this(tb, null);
    }

    public final void a(zzaj zzaj, zzm zzm) {
        r.a(zzaj);
        b(zzm, false);
        a((Runnable) new C0938ma(this, zzaj, zzm));
    }

    public final void b(zzm zzm) {
        b(zzm, false);
        a((Runnable) new C0908ca(this, zzm));
    }

    public final String c(zzm zzm) {
        b(zzm, false);
        return this.f10827a.e(zzm);
    }

    public final void d(zzm zzm) {
        b(zzm, false);
        a((Runnable) new C0955sa(this, zzm));
    }

    public C0905ba(Tb tb, String str) {
        r.a(tb);
        this.f10827a = tb;
        this.f10829c = null;
    }

    public final zzaj b(zzaj zzaj, zzm zzm) {
        boolean z = false;
        if ("_cmp".equals(zzaj.f13232a)) {
            zzag zzag = zzaj.f13233b;
            if (!(zzag == null || zzag.size() == 0)) {
                String g2 = zzaj.f13233b.g("_cis");
                if (!TextUtils.isEmpty(g2) && (("referrer broadcast".equals(g2) || "referrer API".equals(g2)) && this.f10827a.i().r(zzm.f13244a))) {
                    z = true;
                }
            }
        }
        if (!z) {
            return zzaj;
        }
        this.f10827a.e().z().a("Event has been filtered ", zzaj.toString());
        zzaj zzaj2 = new zzaj("_cmpx", zzaj.f13233b, zzaj.f13234c, zzaj.f13235d);
        return zzaj2;
    }

    public final void a(zzaj zzaj, String str, String str2) {
        r.a(zzaj);
        r.b(str);
        a(str, true);
        a((Runnable) new C0941na(this, zzaj, str));
    }

    public final byte[] a(zzaj zzaj, String str) {
        r.b(str);
        r.a(zzaj);
        a(str, true);
        this.f10827a.e().A().a("Log and bundle. event", this.f10827a.g().a(zzaj.f13232a));
        long b2 = this.f10827a.c().b() / RetryManager.NANOSECONDS_IN_MS;
        try {
            byte[] bArr = (byte[]) this.f10827a.d().b(new C0944oa(this, zzaj, str)).get();
            if (bArr == null) {
                this.f10827a.e().t().a("Log and bundle returned null. appId", C0957t.a(str));
                bArr = new byte[0];
            }
            this.f10827a.e().A().a("Log and bundle processed. event, size, time_ms", this.f10827a.g().a(zzaj.f13232a), Integer.valueOf(bArr.length), Long.valueOf((this.f10827a.c().b() / RetryManager.NANOSECONDS_IN_MS) - b2));
            return bArr;
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to log and bundle. appId, event, error", C0957t.a(str), this.f10827a.g().a(zzaj.f13232a), e2);
            return null;
        }
    }

    public final void b(zzm zzm, boolean z) {
        r.a(zzm);
        a(zzm.f13244a, false);
        this.f10827a.h().d(zzm.f13245b, zzm.r);
    }

    public final void a(zzga zzga, zzm zzm) {
        r.a(zzga);
        b(zzm, false);
        if (zzga.x() == null) {
            a((Runnable) new C0947pa(this, zzga, zzm));
        } else {
            a((Runnable) new C0950qa(this, zzga, zzm));
        }
    }

    public final List<zzga> a(zzm zzm, boolean z) {
        b(zzm, false);
        try {
            List<bc> list = (List) this.f10827a.d().a(new C0952ra(this, zzm)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (bc bcVar : list) {
                if (z || !cc.g(bcVar.f10832c)) {
                    arrayList.add(new zzga(bcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to get user attributes. appId", C0957t.a(zzm.f13244a), e2);
            return null;
        }
    }

    public final void a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f10828b == null) {
                        if (!"com.google.android.gms".equals(this.f10829c) && !q.a(this.f10827a.b(), Binder.getCallingUid())) {
                            if (!f.a(this.f10827a.b()).a(Binder.getCallingUid())) {
                                z2 = false;
                                this.f10828b = Boolean.valueOf(z2);
                            }
                        }
                        z2 = true;
                        this.f10828b = Boolean.valueOf(z2);
                    }
                    if (this.f10828b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e2) {
                    this.f10827a.e().t().a("Measurement Service called with invalid calling package. appId", C0957t.a(str));
                    throw e2;
                }
            }
            if (this.f10829c == null && e.uidHasPackageName(this.f10827a.b(), Binder.getCallingUid(), str)) {
                this.f10829c = str;
            }
            if (!str.equals(this.f10829c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[]{str}));
            }
            return;
        }
        this.f10827a.e().t().a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    public final void a(long j2, String str, String str2, String str3) {
        C0958ta taVar = new C0958ta(this, str2, str3, str, j2);
        a((Runnable) taVar);
    }

    public final void a(zzr zzr, zzm zzm) {
        r.a(zzr);
        r.a(zzr.f13258c);
        b(zzm, false);
        zzr zzr2 = new zzr(zzr);
        zzr2.f13256a = zzm.f13244a;
        if (zzr.f13258c.x() == null) {
            a((Runnable) new C0911da(this, zzr2, zzm));
        } else {
            a((Runnable) new C0914ea(this, zzr2, zzm));
        }
    }

    public final void a(zzr zzr) {
        r.a(zzr);
        r.a(zzr.f13258c);
        a(zzr.f13256a, true);
        zzr zzr2 = new zzr(zzr);
        if (zzr.f13258c.x() == null) {
            a((Runnable) new C0917fa(this, zzr2));
        } else {
            a((Runnable) new C0920ga(this, zzr2));
        }
    }

    public final List<zzga> a(String str, String str2, boolean z, zzm zzm) {
        b(zzm, false);
        try {
            List<bc> list = (List) this.f10827a.d().a(new C0923ha(this, zzm, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (bc bcVar : list) {
                if (z || !cc.g(bcVar.f10832c)) {
                    arrayList.add(new zzga(bcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to get user attributes. appId", C0957t.a(zzm.f13244a), e2);
            return Collections.emptyList();
        }
    }

    public final List<zzga> a(String str, String str2, String str3, boolean z) {
        a(str, true);
        try {
            List<bc> list = (List) this.f10827a.d().a(new C0926ia(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (bc bcVar : list) {
                if (z || !cc.g(bcVar.f10832c)) {
                    arrayList.add(new zzga(bcVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to get user attributes. appId", C0957t.a(str), e2);
            return Collections.emptyList();
        }
    }

    public final List<zzr> a(String str, String str2, zzm zzm) {
        b(zzm, false);
        try {
            return (List) this.f10827a.d().a(new C0929ja(this, zzm, str, str2)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    public final List<zzr> a(String str, String str2, String str3) {
        a(str, true);
        try {
            return (List) this.f10827a.d().a(new C0932ka(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f10827a.e().t().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    public final void a(zzm zzm) {
        a(zzm.f13244a, false);
        a((Runnable) new C0935la(this, zzm));
    }

    public final void a(Runnable runnable) {
        r.a(runnable);
        if (!C0931k.ha.a(null).booleanValue() || !this.f10827a.d().t()) {
            this.f10827a.d().a(runnable);
        } else {
            runnable.run();
        }
    }
}
