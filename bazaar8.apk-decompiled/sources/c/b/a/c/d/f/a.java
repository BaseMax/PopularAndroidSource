package c.b.a.c.d.f;

import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.d.b.b;
import c.b.a.c.f;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapBytesTranscoder */
public class a implements e<Bitmap, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    public final Bitmap.CompressFormat f4262a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4263b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public D<byte[]> a(D<Bitmap> d2, f fVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d2.get().compress(this.f4262a, this.f4263b, byteArrayOutputStream);
        d2.a();
        return new b(byteArrayOutputStream.toByteArray());
    }

    public a(Bitmap.CompressFormat compressFormat, int i2) {
        this.f4262a = compressFormat;
        this.f4263b = i2;
    }
}
