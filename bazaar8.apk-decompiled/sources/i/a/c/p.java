package i.a.c;

import h.c.e;
import h.f.b.f;
import h.f.b.j;
import i.a.Ca;
import i.a.P;

/* compiled from: MainDispatchers.kt */
public final class p extends Ca implements P {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f14776a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14777b;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(Throwable th, String str, int i2, f fVar) {
        this(th, (i2 & 2) != 0 ? null : str);
    }

    public boolean b(e eVar) {
        j.b(eVar, "context");
        x();
        throw null;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Main[missing");
        if (this.f14776a != null) {
            str = ", cause=" + this.f14776a;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r1 != null) goto L_0x0028;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Void x() {
        /*
            r4 = this;
            java.lang.Throwable r0 = r4.f14776a
            if (r0 == 0) goto L_0x0037
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            r0.append(r1)
            java.lang.String r1 = r4.f14777b
            if (r1 == 0) goto L_0x0026
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ". "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            if (r1 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            java.lang.String r1 = ""
        L_0x0028:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.Throwable r2 = r4.f14776a
            r1.<init>(r0, r2)
            throw r1
        L_0x0037:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android'"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.c.p.x():java.lang.Void");
    }

    public p(Throwable th, String str) {
        this.f14776a = th;
        this.f14777b = str;
    }

    public Void a(e eVar, Runnable runnable) {
        j.b(eVar, "context");
        j.b(runnable, "block");
        x();
        throw null;
    }
}
