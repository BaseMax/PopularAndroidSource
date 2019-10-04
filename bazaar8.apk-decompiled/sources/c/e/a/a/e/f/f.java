package c.e.a.a.e.f;

import c.e.a.a.e.h;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.v;
import java.util.Arrays;

/* compiled from: OggPacket */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final g f7923a = new g();

    /* renamed from: b  reason: collision with root package name */
    public final v f7924b = new v(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    public int f7925c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f7926d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7927e;

    public boolean a(h hVar) {
        int i2;
        C0737e.b(hVar != null);
        if (this.f7927e) {
            this.f7927e = false;
            this.f7924b.C();
        }
        while (!this.f7927e) {
            if (this.f7925c < 0) {
                if (!this.f7923a.a(hVar, true)) {
                    return false;
                }
                g gVar = this.f7923a;
                int i3 = gVar.f7936i;
                if ((gVar.f7930c & 1) == 1 && this.f7924b.d() == 0) {
                    i3 += a(0);
                    i2 = this.f7926d + 0;
                } else {
                    i2 = 0;
                }
                hVar.c(i3);
                this.f7925c = i2;
            }
            int a2 = a(this.f7925c);
            int i4 = this.f7925c + this.f7926d;
            if (a2 > 0) {
                if (this.f7924b.b() < this.f7924b.d() + a2) {
                    v vVar = this.f7924b;
                    vVar.f9634a = Arrays.copyOf(vVar.f9634a, vVar.d() + a2);
                }
                v vVar2 = this.f7924b;
                hVar.readFully(vVar2.f9634a, vVar2.d(), a2);
                v vVar3 = this.f7924b;
                vVar3.d(vVar3.d() + a2);
                this.f7927e = this.f7923a.f7938k[i4 + -1] != 255;
            }
            if (i4 == this.f7923a.f7935h) {
                i4 = -1;
            }
            this.f7925c = i4;
        }
        return true;
    }

    public v b() {
        return this.f7924b;
    }

    public void c() {
        this.f7923a.a();
        this.f7924b.C();
        this.f7925c = -1;
        this.f7927e = false;
    }

    public void d() {
        v vVar = this.f7924b;
        byte[] bArr = vVar.f9634a;
        if (bArr.length != 65025) {
            vVar.f9634a = Arrays.copyOf(bArr, Math.max(65025, vVar.d()));
        }
    }

    public g a() {
        return this.f7923a;
    }

    public final int a(int i2) {
        int i3;
        int i4 = 0;
        this.f7926d = 0;
        do {
            int i5 = this.f7926d;
            int i6 = i2 + i5;
            g gVar = this.f7923a;
            if (i6 >= gVar.f7935h) {
                break;
            }
            int[] iArr = gVar.f7938k;
            this.f7926d = i5 + 1;
            i3 = iArr[i5 + i2];
            i4 += i3;
        } while (i3 == 255);
        return i4;
    }
}
