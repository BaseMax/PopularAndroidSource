package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.a.e;
import c.b.a.c.c;
import c.b.a.i.i;
import c.b.a.i.k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: RoundedCorners */
public final class t extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f4191a = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(c.f4046a);

    /* renamed from: b  reason: collision with root package name */
    public final int f4192b;

    public t(int i2) {
        i.a(i2 > 0, "roundingRadius must be greater than 0.");
        this.f4192b = i2;
    }

    public Bitmap a(e eVar, Bitmap bitmap, int i2, int i3) {
        return v.b(eVar, bitmap, this.f4192b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof t) || this.f4192b != ((t) obj).f4192b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return k.a("com.bumptech.glide.load.resource.bitmap.RoundedCorners".hashCode(), k.b(this.f4192b));
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(f4191a);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f4192b).array());
    }
}
