package c.b.a.c.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import c.b.a.c.b.D;
import c.b.a.c.i;
import c.b.a.i.k;

/* compiled from: BitmapTransformation */
public abstract class e implements i<Bitmap> {
    public abstract Bitmap a(c.b.a.c.b.a.e eVar, Bitmap bitmap, int i2, int i3);

    public final D<Bitmap> a(Context context, D<Bitmap> d2, int i2, int i3) {
        if (k.b(i2, i3)) {
            c.b.a.c.b.a.e d3 = c.b.a.e.b(context).d();
            Bitmap bitmap = d2.get();
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getWidth();
            }
            if (i3 == Integer.MIN_VALUE) {
                i3 = bitmap.getHeight();
            }
            Bitmap a2 = a(d3, bitmap, i2, i3);
            return bitmap.equals(a2) ? d2 : d.a(a2, d3);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i2 + " or height: " + i3 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
