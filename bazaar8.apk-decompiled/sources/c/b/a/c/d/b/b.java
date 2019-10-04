package c.b.a.c.d.b;

import c.b.a.c.b.D;
import c.b.a.i.i;

/* compiled from: BytesResource */
public class b implements D<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f4213a;

    public b(byte[] bArr) {
        i.a(bArr);
        this.f4213a = bArr;
    }

    public void a() {
    }

    public int b() {
        return this.f4213a.length;
    }

    public Class<byte[]> c() {
        return byte[].class;
    }

    public byte[] get() {
        return this.f4213a;
    }
}
