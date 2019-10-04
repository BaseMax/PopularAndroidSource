package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzik;
import java.util.Iterator;
import java.util.Map;

public final class Xb<T> implements C0829hc<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Sb f10286a;

    /* renamed from: b  reason: collision with root package name */
    public final C0900zc<?, ?> f10287b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f10288c;

    /* renamed from: d  reason: collision with root package name */
    public final C0812db<?> f10289d;

    public Xb(C0900zc<?, ?> zcVar, C0812db<?> dbVar, Sb sb) {
        this.f10287b = zcVar;
        this.f10288c = dbVar.a(sb);
        this.f10289d = dbVar;
        this.f10286a = sb;
    }

    public static <T> Xb<T> a(C0900zc<?, ?> zcVar, C0812db<?> dbVar, Sb sb) {
        return new Xb<>(zcVar, dbVar, sb);
    }

    public final boolean b(T t, T t2) {
        if (!this.f10287b.d(t).equals(this.f10287b.d(t2))) {
            return false;
        }
        if (this.f10288c) {
            return this.f10289d.a((Object) t).equals(this.f10289d.a((Object) t2));
        }
        return true;
    }

    public final void c(T t) {
        this.f10287b.a((Object) t);
        this.f10289d.c(t);
    }

    public final int d(T t) {
        int hashCode = this.f10287b.d(t).hashCode();
        return this.f10288c ? (hashCode * 53) + this.f10289d.a((Object) t).hashCode() : hashCode;
    }

    public final T a() {
        return this.f10286a.c().n();
    }

    public final void a(T t, T t2) {
        C0841kc.a(this.f10287b, t, t2);
        if (this.f10288c) {
            C0841kc.a(this.f10289d, t, t2);
        }
    }

    public final void a(T t, Oc oc) {
        Iterator<Map.Entry<?, Object>> e2 = this.f10289d.a((Object) t).e();
        while (e2.hasNext()) {
            Map.Entry next = e2.next();
            C0832ib ibVar = (C0832ib) next.getKey();
            if (ibVar.b() != zzik.MESSAGE || ibVar.c() || ibVar.e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof C0895yb) {
                oc.a(ibVar.a(), (Object) ((C0895yb) next).a().a());
            } else {
                oc.a(ibVar.a(), next.getValue());
            }
        }
        C0900zc<?, ?> zcVar = this.f10287b;
        zcVar.b(zcVar.d(t), oc);
    }

    public final int b(T t) {
        C0900zc<?, ?> zcVar = this.f10287b;
        int f2 = zcVar.f(zcVar.d(t)) + 0;
        return this.f10288c ? f2 + this.f10289d.a((Object) t).i() : f2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v14, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v11, resolved type: c.e.a.b.g.f.nb$d} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(T r10, byte[] r11, int r12, int r13, c.e.a.b.g.f.Ia r14) {
        /*
            r9 = this;
            r0 = r10
            c.e.a.b.g.f.nb r0 = (c.e.a.b.g.f.C0852nb) r0
            c.e.a.b.g.f.Ac r1 = r0.zzagn
            c.e.a.b.g.f.Ac r2 = c.e.a.b.g.f.Ac.c()
            if (r1 != r2) goto L_0x0011
            c.e.a.b.g.f.Ac r1 = c.e.a.b.g.f.Ac.d()
            r0.zzagn = r1
        L_0x0011:
            c.e.a.b.g.f.nb$c r10 = (c.e.a.b.g.f.C0852nb.c) r10
            r10.q()
            r10 = 0
            r0 = r10
        L_0x0018:
            if (r12 >= r13) goto L_0x00a4
            int r4 = c.e.a.b.g.f.Ha.a(r11, r12, r14)
            int r2 = r14.f10177a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L_0x0051
            r12 = r2 & 7
            if (r12 != r3) goto L_0x004c
            c.e.a.b.g.f.db<?> r12 = r9.f10289d
            c.e.a.b.g.f.cb r0 = r14.f10180d
            c.e.a.b.g.f.Sb r3 = r9.f10286a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.a(r0, r3, r5)
            r0 = r12
            c.e.a.b.g.f.nb$d r0 = (c.e.a.b.g.f.C0852nb.d) r0
            if (r0 != 0) goto L_0x0043
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = c.e.a.b.g.f.Ha.a((int) r2, (byte[]) r3, (int) r4, (int) r5, (c.e.a.b.g.f.Ac) r6, (c.e.a.b.g.f.Ia) r7)
            goto L_0x0018
        L_0x0043:
            c.e.a.b.g.f.C0813dc.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L_0x004c:
            int r12 = c.e.a.b.g.f.Ha.a((int) r2, (byte[]) r11, (int) r4, (int) r13, (c.e.a.b.g.f.Ia) r14)
            goto L_0x0018
        L_0x0051:
            r12 = 0
            r2 = r10
        L_0x0053:
            if (r4 >= r13) goto L_0x0099
            int r4 = c.e.a.b.g.f.Ha.a(r11, r4, r14)
            int r5 = r14.f10177a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L_0x007b
            r8 = 3
            if (r6 == r8) goto L_0x0065
            goto L_0x0090
        L_0x0065:
            if (r0 != 0) goto L_0x0072
            if (r7 != r3) goto L_0x0090
            int r4 = c.e.a.b.g.f.Ha.e(r11, r4, r14)
            java.lang.Object r2 = r14.f10179c
            com.google.android.gms.internal.measurement.zzdp r2 = (com.google.android.gms.internal.measurement.zzdp) r2
            goto L_0x0053
        L_0x0072:
            c.e.a.b.g.f.C0813dc.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L_0x007b:
            if (r7 != 0) goto L_0x0090
            int r4 = c.e.a.b.g.f.Ha.a(r11, r4, r14)
            int r12 = r14.f10177a
            c.e.a.b.g.f.db<?> r0 = r9.f10289d
            c.e.a.b.g.f.cb r5 = r14.f10180d
            c.e.a.b.g.f.Sb r6 = r9.f10286a
            java.lang.Object r0 = r0.a(r5, r6, r12)
            c.e.a.b.g.f.nb$d r0 = (c.e.a.b.g.f.C0852nb.d) r0
            goto L_0x0053
        L_0x0090:
            r6 = 12
            if (r5 == r6) goto L_0x0099
            int r4 = c.e.a.b.g.f.Ha.a((int) r5, (byte[]) r11, (int) r4, (int) r13, (c.e.a.b.g.f.Ia) r14)
            goto L_0x0053
        L_0x0099:
            if (r2 == 0) goto L_0x00a1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.a((int) r12, (java.lang.Object) r2)
        L_0x00a1:
            r12 = r4
            goto L_0x0018
        L_0x00a4:
            if (r12 != r13) goto L_0x00a7
            return
        L_0x00a7:
            com.google.android.gms.internal.measurement.zzfh r10 = com.google.android.gms.internal.measurement.zzfh.h()
            goto L_0x00ad
        L_0x00ac:
            throw r10
        L_0x00ad:
            goto L_0x00ac
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Xb.a(java.lang.Object, byte[], int, int, c.e.a.b.g.f.Ia):void");
    }

    public final void a(T t, C0825gc gcVar, C0808cb cbVar) {
        boolean z;
        C0900zc<?, ?> zcVar = this.f10287b;
        C0812db<?> dbVar = this.f10289d;
        Object e2 = zcVar.e(t);
        C0824gb<?> b2 = dbVar.b(t);
        do {
            try {
                if (gcVar.e() == Integer.MAX_VALUE) {
                    zcVar.b((Object) t, e2);
                    return;
                }
                int tag = gcVar.getTag();
                if (tag == 11) {
                    Object obj = null;
                    zzdp zzdp = null;
                    int i2 = 0;
                    while (gcVar.e() != Integer.MAX_VALUE) {
                        int tag2 = gcVar.getTag();
                        if (tag2 == 16) {
                            i2 = gcVar.g();
                            obj = dbVar.a(cbVar, this.f10286a, i2);
                        } else if (tag2 == 26) {
                            if (obj == null) {
                                zzdp = gcVar.k();
                            } else {
                                dbVar.a(gcVar, obj, cbVar, b2);
                                throw null;
                            }
                        } else if (!gcVar.n()) {
                            break;
                        }
                    }
                    if (gcVar.getTag() == 12) {
                        if (zzdp != null) {
                            if (obj == null) {
                                zcVar.a(e2, i2, zzdp);
                            } else {
                                dbVar.a(zzdp, obj, cbVar, b2);
                                throw null;
                            }
                        }
                        z = true;
                        continue;
                    } else {
                        throw zzfh.e();
                    }
                } else if ((tag & 7) == 2) {
                    Object a2 = dbVar.a(cbVar, this.f10286a, tag >>> 3);
                    if (a2 == null) {
                        z = zcVar.a(e2, gcVar);
                        continue;
                    } else {
                        dbVar.a(gcVar, a2, cbVar, b2);
                        throw null;
                    }
                } else {
                    z = gcVar.n();
                    continue;
                }
            } finally {
                zcVar.b((Object) t, e2);
            }
        } while (z);
    }

    public final boolean a(T t) {
        return this.f10289d.a((Object) t).d();
    }
}
