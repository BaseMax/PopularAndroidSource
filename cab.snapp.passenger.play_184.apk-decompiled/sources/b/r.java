package b;

import javax.annotation.Nullable;

final class r {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f162a;

    /* renamed from: b  reason: collision with root package name */
    int f163b;
    int c;
    boolean d;
    boolean e;
    r f;
    r g;

    r() {
        this.f162a = new byte[8192];
        this.e = true;
        this.d = false;
    }

    r(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f162a = bArr;
        this.f163b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }

    /* access modifiers changed from: package-private */
    public final r a() {
        this.d = true;
        r rVar = new r(this.f162a, this.f163b, this.c, true, false);
        return rVar;
    }

    /* access modifiers changed from: package-private */
    public final r b() {
        r rVar = new r((byte[]) this.f162a.clone(), this.f163b, this.c, false, true);
        return rVar;
    }

    @Nullable
    public final r pop() {
        r rVar = this.f;
        if (rVar == this) {
            rVar = null;
        }
        r rVar2 = this.g;
        rVar2.f = this.f;
        this.f.g = rVar2;
        this.f = null;
        this.g = null;
        return rVar;
    }

    public final r push(r rVar) {
        rVar.g = this;
        rVar.f = this.f;
        this.f.g = rVar;
        this.f = rVar;
        return rVar;
    }

    public final r split(int i) {
        r rVar;
        if (i <= 0 || i > this.c - this.f163b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            rVar = a();
        } else {
            rVar = s.a();
            System.arraycopy(this.f162a, this.f163b, rVar.f162a, 0, i);
        }
        rVar.c = rVar.f163b + i;
        this.f163b += i;
        this.g.push(rVar);
        return rVar;
    }

    public final void compact() {
        r rVar = this.g;
        if (rVar == this) {
            throw new IllegalStateException();
        } else if (rVar.e) {
            int i = this.c - this.f163b;
            if (i <= (8192 - rVar.c) + (rVar.d ? 0 : rVar.f163b)) {
                writeTo(this.g, i);
                pop();
                s.a(this);
            }
        }
    }

    public final void writeTo(r rVar, int i) {
        if (rVar.e) {
            int i2 = rVar.c;
            if (i2 + i > 8192) {
                if (!rVar.d) {
                    int i3 = rVar.f163b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = rVar.f162a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        rVar.c -= rVar.f163b;
                        rVar.f163b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f162a, this.f163b, rVar.f162a, rVar.c, i);
            rVar.c += i;
            this.f163b += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
