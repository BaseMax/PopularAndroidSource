package c.b.a.c.d.e;

import android.graphics.Bitmap;
import c.b.a.b.a;
import c.b.a.c.b.a.e;

/* compiled from: GifBitmapProvider */
public final class b implements a.C0053a {

    /* renamed from: a  reason: collision with root package name */
    public final e f4225a;

    /* renamed from: b  reason: collision with root package name */
    public final c.b.a.c.b.a.b f4226b;

    public b(e eVar, c.b.a.c.b.a.b bVar) {
        this.f4225a = eVar;
        this.f4226b = bVar;
    }

    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return this.f4225a.b(i2, i3, config);
    }

    public byte[] b(int i2) {
        c.b.a.c.b.a.b bVar = this.f4226b;
        if (bVar == null) {
            return new byte[i2];
        }
        return (byte[]) bVar.b(i2, byte[].class);
    }

    public void a(Bitmap bitmap) {
        this.f4225a.a(bitmap);
    }

    public void a(byte[] bArr) {
        c.b.a.c.b.a.b bVar = this.f4226b;
        if (bVar != null) {
            bVar.put(bArr);
        }
    }

    public int[] a(int i2) {
        c.b.a.c.b.a.b bVar = this.f4226b;
        if (bVar == null) {
            return new int[i2];
        }
        return (int[]) bVar.b(i2, int[].class);
    }

    public void a(int[] iArr) {
        c.b.a.c.b.a.b bVar = this.f4226b;
        if (bVar != null) {
            bVar.put(iArr);
        }
    }
}
