package i.a;

import h.c.e;
import h.f.a.c;
import h.f.b.f;
import h.f.b.j;
import i.a.La;

/* compiled from: CoroutineContext.kt */
public final class F extends h.c.a implements La<String> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f14635a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final long f14636b;

    /* compiled from: CoroutineContext.kt */
    public static final class a implements e.c<F> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public F(long j2) {
        super(f14635a);
        this.f14636b = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof F) {
                if (this.f14636b == ((F) obj).f14636b) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public <R> R fold(R r, c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return La.a.a(this, r, cVar);
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return La.a.a(this, cVar);
    }

    public int hashCode() {
        long j2 = this.f14636b;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public e minusKey(e.c<?> cVar) {
        j.b(cVar, "key");
        return La.a.b(this, cVar);
    }

    public e plus(e eVar) {
        j.b(eVar, "context");
        return La.a.a(this, eVar);
    }

    public String toString() {
        return "CoroutineId(" + this.f14636b + ')';
    }

    public final long x() {
        return this.f14636b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0013, code lost:
        if (r9 != null) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String a(h.c.e r9) {
        /*
            r8 = this;
            java.lang.String r0 = "context"
            h.f.b.j.b(r9, r0)
            i.a.G$a r0 = i.a.G.f14637a
            h.c.e$b r9 = r9.get(r0)
            i.a.G r9 = (i.a.G) r9
            if (r9 == 0) goto L_0x0016
            java.lang.String r9 = r9.x()
            if (r9 == 0) goto L_0x0016
            goto L_0x0018
        L_0x0016:
            java.lang.String r9 = "coroutine"
        L_0x0018:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r1 = "currentThread"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            java.lang.String r1 = r0.getName()
            java.lang.String r2 = "oldName"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r2)
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            java.lang.String r3 = " @"
            r2 = r1
            int r2 = h.k.n.b((java.lang.CharSequence) r2, (java.lang.String) r3, (int) r4, (boolean) r5, (int) r6, (java.lang.Object) r7)
            if (r2 >= 0) goto L_0x003b
            int r2 = r1.length()
        L_0x003b:
            int r3 = r9.length()
            int r3 = r3 + r2
            int r3 = r3 + 10
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            r3 = 0
            java.lang.String r2 = r1.substring(r3, r2)
            java.lang.String r3 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            h.f.b.j.a((java.lang.Object) r2, (java.lang.String) r3)
            r4.append(r2)
            java.lang.String r2 = " @"
            r4.append(r2)
            r4.append(r9)
            r9 = 35
            r4.append(r9)
            long r2 = r8.f14636b
            r4.append(r2)
            java.lang.String r9 = r4.toString()
            java.lang.String r2 = "StringBuilder(capacity).…builderAction).toString()"
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r2)
            r0.setName(r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.F.a(h.c.e):java.lang.String");
    }

    public void a(e eVar, String str) {
        j.b(eVar, "context");
        j.b(str, "oldState");
        Thread currentThread = Thread.currentThread();
        j.a((Object) currentThread, "Thread.currentThread()");
        currentThread.setName(str);
    }
}
