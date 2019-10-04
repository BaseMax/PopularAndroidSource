package c.e.a.a.e.h;

import c.e.a.a.o.C0737e;
import java.util.Arrays;

/* compiled from: NalUnitTargetBuffer */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final int f8268a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f8269b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8270c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f8271d;

    /* renamed from: e  reason: collision with root package name */
    public int f8272e;

    public w(int i2, int i3) {
        this.f8268a = i2;
        this.f8271d = new byte[(i3 + 3)];
        this.f8271d[2] = 1;
    }

    public boolean a() {
        return this.f8270c;
    }

    public void b() {
        this.f8269b = false;
        this.f8270c = false;
    }

    public void a(byte[] bArr, int i2, int i3) {
        if (this.f8269b) {
            int i4 = i3 - i2;
            byte[] bArr2 = this.f8271d;
            int length = bArr2.length;
            int i5 = this.f8272e;
            if (length < i5 + i4) {
                this.f8271d = Arrays.copyOf(bArr2, (i5 + i4) * 2);
            }
            System.arraycopy(bArr, i2, this.f8271d, this.f8272e, i4);
            this.f8272e += i4;
        }
    }

    public void b(int i2) {
        boolean z = true;
        C0737e.b(!this.f8269b);
        if (i2 != this.f8268a) {
            z = false;
        }
        this.f8269b = z;
        if (this.f8269b) {
            this.f8272e = 3;
            this.f8270c = false;
        }
    }

    public boolean a(int i2) {
        if (!this.f8269b) {
            return false;
        }
        this.f8272e -= i2;
        this.f8269b = false;
        this.f8270c = true;
        return true;
    }
}
