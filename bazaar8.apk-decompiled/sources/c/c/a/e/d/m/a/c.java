package c.c.a.e.d.m.a;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.e.d.b.I;
import h.a.l;
import h.c.b;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: PaymentLocalDataSource.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f5242a = l.c("com.farsitel.bazaar", "com.farsitel.bazaar.video");

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f5243b = f5242a;

    /* renamed from: c  reason: collision with root package name */
    public static final a f5244c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public final Set<e> f5245d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    public final t<Set<e>> f5246e = new t<>();

    /* renamed from: f  reason: collision with root package name */
    public final f f5247f;

    /* renamed from: g  reason: collision with root package name */
    public final I f5248g;

    /* compiled from: PaymentLocalDataSource.kt */
    public static final class a {
        public a() {
        }

        public final List<String> a() {
            return c.f5242a;
        }

        public final List<String> b() {
            return c.f5243b;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(f fVar, I i2) {
        j.b(fVar, "purchaseDao");
        j.b(i2, "sharedDataSource");
        this.f5247f = fVar;
        this.f5248g = i2;
    }

    public final void c() {
        this.f5245d.clear();
        this.f5246e.a(this.f5245d);
    }

    public final long d() {
        return ((Number) this.f5248g.a("userCredit", 0L)).longValue();
    }

    public final LiveData<Set<e>> e() {
        return this.f5246e;
    }

    public final long f() {
        return ((Number) this.f5248g.a("purchases_fetch_time_stamp", 0L)).longValue();
    }

    public final Object a(String str, String str2, String str3, b<? super List<a>> bVar) {
        return this.f5247f.a(str, str2, str3, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(h.c.b<? super h.h> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$1 r0 = (com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$1 r0 = new com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.a.c r0 = (c.c.a.e.d.m.a.c) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0046
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.m.a.f r5 = r4.f5247f
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L_0x0045
            return r1
        L_0x0045:
            r0 = r4
        L_0x0046:
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            h.j.d r5 = h.a.u.a(r5)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$2 r1 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$2.f12265a
            h.j.d r5 = h.j.o.a(r5, r1)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$3 r1 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$initializePurchasesLiveData$3.f12266a
            h.j.d r5 = h.j.o.b(r5, r1)
            java.util.List r5 = h.j.o.c(r5)
            r0.a((java.util.List<c.c.a.e.d.m.a.e>) r5)
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.a.c.b(h.c.b):java.lang.Object");
    }

    public final Object a(String str, String str2, b<? super h> bVar) {
        return this.f5247f.a(str, str2, bVar);
    }

    public final void a(long j2) {
        I.a(this.f5248g, "userCredit", Long.valueOf(j2), false, 4, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.util.List<c.c.a.e.d.m.f> r5, h.c.b<? super h.h> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$1 r0 = (com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$1 r0 = new com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x003d
            if (r2 != r3) goto L_0x0035
            java.lang.Object r5 = r0.L$2
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r5 = r0.L$1
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.a.c r0 = (c.c.a.e.d.m.a.c) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x0066
        L_0x0035:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x003d:
            h.e.a((java.lang.Object) r6)
            h.j.d r6 = h.a.u.a(r5)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$2 r2 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$2.f12261a
            h.j.d r6 = h.j.o.a(r6, r2)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$3 r2 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$3.f12262a
            h.j.d r6 = h.j.o.b(r6, r2)
            java.util.List r6 = h.j.o.c(r6)
            c.c.a.e.d.m.a.f r2 = r4.f5247f
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L_0x0065
            return r1
        L_0x0065:
            r0 = r4
        L_0x0066:
            h.j.d r5 = h.a.u.a(r5)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$5 r6 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$5.f12263a
            h.j.d r5 = h.j.o.a(r5, r6)
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$6 r6 = com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$addPurchases$6.f12264a
            h.j.d r5 = h.j.o.b(r5, r6)
            java.util.List r5 = h.j.o.c(r5)
            r0.a((java.util.List<c.c.a.e.d.m.a.e>) r5)
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.a.c.a(java.util.List, h.c.b):java.lang.Object");
    }

    public final void b(long j2) {
        I.a(this.f5248g, "purchases_fetch_time_stamp", Long.valueOf(j2), false, 4, null);
    }

    public final void a(List<e> list) {
        this.f5245d.addAll(list);
        this.f5246e.a(this.f5245d);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super h.h> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$clearAll$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$clearAll$1 r0 = (com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$clearAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$clearAll$1 r0 = new com.farsitel.bazaar.data.feature.payment.local.PaymentLocalDataSource$clearAll$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.a.c r0 = (c.c.a.e.d.m.a.c) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x004b
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.b.I r5 = r4.f5248g
            r5.a()
            c.c.a.e.d.m.a.f r5 = r4.f5247f
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L_0x004a
            return r1
        L_0x004a:
            r0 = r4
        L_0x004b:
            r0.c()
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.a.c.a(h.c.b):java.lang.Object");
    }
}
