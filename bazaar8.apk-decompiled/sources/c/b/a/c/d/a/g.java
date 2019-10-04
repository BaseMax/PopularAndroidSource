package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.a.e;
import c.b.a.c.c;
import java.security.MessageDigest;

/* compiled from: CenterCrop */
public class g extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f4160a = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(c.f4046a);

    public Bitmap a(e eVar, Bitmap bitmap, int i2, int i3) {
        return v.a(eVar, bitmap, i2, i3);
    }

    public boolean equals(Object obj) {
        return obj instanceof g;
    }

    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(f4160a);
    }
}
