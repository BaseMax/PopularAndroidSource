package c.c.a.l.a;

import h.f.b.j;

/* compiled from: TrackEntity.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f6091a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6092b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6093c;

    public c(String str, int i2, boolean z) {
        j.b(str, "title");
        this.f6091a = str;
        this.f6092b = i2;
        this.f6093c = z;
    }

    public final int a() {
        return this.f6092b;
    }

    public final String b() {
        return this.f6091a;
    }

    public final boolean c() {
        return this.f6093c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (j.a((Object) this.f6091a, (Object) cVar.f6091a)) {
                    if (this.f6092b == cVar.f6092b) {
                        if (this.f6093c == cVar.f6093c) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6091a;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f6092b) * 31;
        boolean z = this.f6093c;
        if (z) {
            z = true;
        }
        return hashCode + (z ? 1 : 0);
    }

    public String toString() {
        return "TrackEntity(title=" + this.f6091a + ", index=" + this.f6092b + ", isSelected=" + this.f6093c + ")";
    }
}
