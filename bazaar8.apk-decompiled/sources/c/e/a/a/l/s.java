package c.e.a.a.l;

import c.e.a.a.T;
import c.e.a.a.o.I;

/* compiled from: TrackSelectorResult */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final int f9341a;

    /* renamed from: b  reason: collision with root package name */
    public final T[] f9342b;

    /* renamed from: c  reason: collision with root package name */
    public final o f9343c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f9344d;

    public s(T[] tArr, n[] nVarArr, Object obj) {
        this.f9342b = tArr;
        this.f9343c = new o(nVarArr);
        this.f9344d = obj;
        this.f9341a = tArr.length;
    }

    public boolean a(int i2) {
        return this.f9342b[i2] != null;
    }

    public boolean a(s sVar) {
        if (sVar == null || sVar.f9343c.f9336a != this.f9343c.f9336a) {
            return false;
        }
        for (int i2 = 0; i2 < this.f9343c.f9336a; i2++) {
            if (!a(sVar, i2)) {
                return false;
            }
        }
        return true;
    }

    public boolean a(s sVar, int i2) {
        boolean z = false;
        if (sVar == null) {
            return false;
        }
        if (I.a((Object) this.f9342b[i2], (Object) sVar.f9342b[i2]) && I.a((Object) this.f9343c.a(i2), (Object) sVar.f9343c.a(i2))) {
            z = true;
        }
        return z;
    }
}
