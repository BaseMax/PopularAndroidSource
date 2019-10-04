package j.a.c;

import j.F;
import j.S;

/* compiled from: RealResponseBody */
public final class i extends S {

    /* renamed from: b  reason: collision with root package name */
    public final String f15371b;

    /* renamed from: c  reason: collision with root package name */
    public final long f15372c;

    /* renamed from: d  reason: collision with root package name */
    public final k.i f15373d;

    public i(String str, long j2, k.i iVar) {
        this.f15371b = str;
        this.f15372c = j2;
        this.f15373d = iVar;
    }

    public long u() {
        return this.f15372c;
    }

    public F v() {
        String str = this.f15371b;
        if (str != null) {
            return F.b(str);
        }
        return null;
    }

    public k.i w() {
        return this.f15373d;
    }
}
