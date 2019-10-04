package c.e.a.a.j.c.a;

import android.net.Uri;
import c.e.a.a.o.H;

/* compiled from: RangedUri */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final long f8562a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8563b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8564c;

    /* renamed from: d  reason: collision with root package name */
    public int f8565d;

    public h(String str, long j2, long j3) {
        this.f8564c = str == null ? "" : str;
        this.f8562a = j2;
        this.f8563b = j3;
    }

    public Uri a(String str) {
        return H.b(str, this.f8564c);
    }

    public String b(String str) {
        return H.a(str, this.f8564c);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (!(this.f8562a == hVar.f8562a && this.f8563b == hVar.f8563b && this.f8564c.equals(hVar.f8564c))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f8565d == 0) {
            this.f8565d = ((((527 + ((int) this.f8562a)) * 31) + ((int) this.f8563b)) * 31) + this.f8564c.hashCode();
        }
        return this.f8565d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f8564c + ", start=" + this.f8562a + ", length=" + this.f8563b + ")";
    }

    public h a(h hVar, String str) {
        String b2 = b(str);
        if (hVar != null && b2.equals(hVar.b(str))) {
            long j2 = this.f8563b;
            long j3 = -1;
            if (j2 != -1) {
                long j4 = this.f8562a;
                if (j4 + j2 == hVar.f8562a) {
                    long j5 = hVar.f8563b;
                    if (j5 != -1) {
                        j3 = j2 + j5;
                    }
                    h hVar2 = new h(b2, j4, j3);
                    return hVar2;
                }
            }
            long j6 = hVar.f8563b;
            if (j6 != -1) {
                long j7 = hVar.f8562a;
                if (j7 + j6 == this.f8562a) {
                    long j8 = this.f8563b;
                    if (j8 != -1) {
                        j3 = j6 + j8;
                    }
                    h hVar3 = new h(b2, j7, j3);
                    return hVar3;
                }
            }
        }
        return null;
    }
}
