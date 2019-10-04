package b.H.a.b;

import com.crashlytics.android.core.CodedOutputStream;

/* compiled from: NetworkState */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1396a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1397b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1398c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1399d;

    public b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f1396a = z;
        this.f1397b = z2;
        this.f1398c = z3;
        this.f1399d = z4;
    }

    public boolean a() {
        return this.f1396a;
    }

    public boolean b() {
        return this.f1398c;
    }

    public boolean c() {
        return this.f1399d;
    }

    public boolean d() {
        return this.f1397b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (!(this.f1396a == bVar.f1396a && this.f1397b == bVar.f1397b && this.f1398c == bVar.f1398c && this.f1399d == bVar.f1399d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = this.f1396a ? 1 : 0;
        if (this.f1397b) {
            i2 += 16;
        }
        if (this.f1398c) {
            i2 += 256;
        }
        return this.f1399d ? i2 + CodedOutputStream.DEFAULT_BUFFER_SIZE : i2;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", new Object[]{Boolean.valueOf(this.f1396a), Boolean.valueOf(this.f1397b), Boolean.valueOf(this.f1398c), Boolean.valueOf(this.f1399d)});
    }
}
