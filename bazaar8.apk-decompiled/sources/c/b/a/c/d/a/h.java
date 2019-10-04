package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.a.e;
import c.b.a.c.c;
import java.security.MessageDigest;

/* compiled from: CenterInside */
public class h extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f4161a = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(c.f4046a);

    public Bitmap a(e eVar, Bitmap bitmap, int i2, int i3) {
        return v.b(eVar, bitmap, i2, i3);
    }

    public boolean equals(Object obj) {
        return obj instanceof h;
    }

    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterInside".hashCode();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(f4161a);
    }
}
