package kotlin.jvm.internal;

import h.f.b.h;
import h.f.b.k;
import h.i.b;
import h.i.f;

public class FunctionReference extends CallableReference implements h, f {
    public final int arity;

    public FunctionReference(int i2) {
        this.arity = i2;
    }

    public b c() {
        k.a(this);
        return this;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004e, code lost:
        if (h.f.b.j.a(d(), r5.d()) != false) goto L_0x0052;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 != r4) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r5 instanceof kotlin.jvm.internal.FunctionReference
            r2 = 0
            if (r1 == 0) goto L_0x0053
            kotlin.jvm.internal.FunctionReference r5 = (kotlin.jvm.internal.FunctionReference) r5
            h.i.e r1 = r4.e()
            if (r1 != 0) goto L_0x0018
            h.i.e r1 = r5.e()
            if (r1 != 0) goto L_0x0051
            goto L_0x0026
        L_0x0018:
            h.i.e r1 = r4.e()
            h.i.e r3 = r5.e()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0051
        L_0x0026:
            java.lang.String r1 = r4.getName()
            java.lang.String r3 = r5.getName()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0051
            java.lang.String r1 = r4.g()
            java.lang.String r3 = r5.g()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0051
            java.lang.Object r1 = r4.d()
            java.lang.Object r5 = r5.d()
            boolean r5 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r5)
            if (r5 == 0) goto L_0x0051
            goto L_0x0052
        L_0x0051:
            r0 = 0
        L_0x0052:
            return r0
        L_0x0053:
            boolean r0 = r5 instanceof h.i.f
            if (r0 == 0) goto L_0x0060
            h.i.b r0 = r4.b()
            boolean r5 = r5.equals(r0)
            return r5
        L_0x0060:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.FunctionReference.equals(java.lang.Object):boolean");
    }

    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return (((e() == null ? 0 : e().hashCode() * 31) + getName().hashCode()) * 31) + g().hashCode();
    }

    public String toString() {
        String str;
        b b2 = b();
        if (b2 != this) {
            return b2.toString();
        }
        if ("<init>".equals(getName())) {
            str = "constructor (Kotlin reflection is not available)";
        } else {
            str = "function " + getName() + " (Kotlin reflection is not available)";
        }
        return str;
    }

    public FunctionReference(int i2, Object obj) {
        super(obj);
        this.arity = i2;
    }
}
