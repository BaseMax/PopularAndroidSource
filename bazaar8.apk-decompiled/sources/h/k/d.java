package h.k;

import h.f.b.a.a;
import h.h.g;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.TypeCastException;

/* compiled from: Strings.kt */
public final class d implements Iterator<h.h.d>, a {

    /* renamed from: a  reason: collision with root package name */
    public int f14620a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f14621b;

    /* renamed from: c  reason: collision with root package name */
    public int f14622c;

    /* renamed from: d  reason: collision with root package name */
    public h.h.d f14623d;

    /* renamed from: e  reason: collision with root package name */
    public int f14624e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f14625f;

    public d(e eVar) {
        this.f14625f = eVar;
        this.f14621b = g.a(eVar.f14627b, 0, eVar.f14626a.length());
        this.f14622c = this.f14621b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0023, code lost:
        if (r6.f14624e < r6.f14625f.f14628c) goto L_0x0025;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r6 = this;
            int r0 = r6.f14622c
            r1 = 0
            if (r0 >= 0) goto L_0x000c
            r6.f14620a = r1
            r0 = 0
            r6.f14623d = r0
            goto L_0x00a2
        L_0x000c:
            h.k.e r0 = r6.f14625f
            int r0 = r0.f14628c
            r2 = -1
            r3 = 1
            if (r0 <= 0) goto L_0x0025
            int r0 = r6.f14624e
            int r0 = r0 + r3
            r6.f14624e = r0
            int r0 = r6.f14624e
            h.k.e r4 = r6.f14625f
            int r4 = r4.f14628c
            if (r0 >= r4) goto L_0x0033
        L_0x0025:
            int r0 = r6.f14622c
            h.k.e r4 = r6.f14625f
            java.lang.CharSequence r4 = r4.f14626a
            int r4 = r4.length()
            if (r0 <= r4) goto L_0x0049
        L_0x0033:
            int r0 = r6.f14621b
            h.h.d r1 = new h.h.d
            h.k.e r4 = r6.f14625f
            java.lang.CharSequence r4 = r4.f14626a
            int r4 = h.k.n.c(r4)
            r1.<init>(r0, r4)
            r6.f14623d = r1
            r6.f14622c = r2
            goto L_0x00a0
        L_0x0049:
            h.k.e r0 = r6.f14625f
            h.f.a.c r0 = r0.f14629d
            h.k.e r4 = r6.f14625f
            java.lang.CharSequence r4 = r4.f14626a
            int r5 = r6.f14622c
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r0 = r0.b(r4, r5)
            kotlin.Pair r0 = (kotlin.Pair) r0
            if (r0 != 0) goto L_0x0079
            int r0 = r6.f14621b
            h.h.d r1 = new h.h.d
            h.k.e r4 = r6.f14625f
            java.lang.CharSequence r4 = r4.f14626a
            int r4 = h.k.n.c(r4)
            r1.<init>(r0, r4)
            r6.f14623d = r1
            r6.f14622c = r2
            goto L_0x00a0
        L_0x0079:
            java.lang.Object r2 = r0.a()
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            java.lang.Object r0 = r0.b()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r4 = r6.f14621b
            h.h.d r4 = h.h.g.d(r4, r2)
            r6.f14623d = r4
            int r2 = r2 + r0
            r6.f14621b = r2
            int r2 = r6.f14621b
            if (r0 != 0) goto L_0x009d
            r1 = 1
        L_0x009d:
            int r2 = r2 + r1
            r6.f14622c = r2
        L_0x00a0:
            r6.f14620a = r3
        L_0x00a2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h.k.d.a():void");
    }

    public boolean hasNext() {
        if (this.f14620a == -1) {
            a();
        }
        return this.f14620a == 1;
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public h.h.d next() {
        if (this.f14620a == -1) {
            a();
        }
        if (this.f14620a != 0) {
            h.h.d dVar = this.f14623d;
            if (dVar != null) {
                this.f14623d = null;
                this.f14620a = -1;
                return dVar;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.ranges.IntRange");
        }
        throw new NoSuchElementException();
    }
}
