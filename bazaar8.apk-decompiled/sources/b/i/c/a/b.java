package b.i.c.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* compiled from: Drawable.kt */
public final class b {
    public static /* bridge */ /* synthetic */ Bitmap a(Drawable drawable, int i2, int i3, Bitmap.Config config, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = drawable.getIntrinsicWidth();
        }
        if ((i4 & 2) != 0) {
            i3 = drawable.getIntrinsicHeight();
        }
        if ((i4 & 4) != 0) {
            config = null;
        }
        return a(drawable, i2, i3, config);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x001b, code lost:
        if (r0.getConfig() == r9) goto L_0x001d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final android.graphics.Bitmap a(android.graphics.drawable.Drawable r6, int r7, int r8, android.graphics.Bitmap.Config r9) {
        /*
            java.lang.String r0 = "$receiver"
            h.f.b.j.b(r6, r0)
            boolean r0 = r6 instanceof android.graphics.drawable.BitmapDrawable
            java.lang.String r1 = "bitmap"
            if (r0 == 0) goto L_0x0042
            if (r9 == 0) goto L_0x001d
            r0 = r6
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            android.graphics.Bitmap r0 = r0.getBitmap()
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            android.graphics.Bitmap$Config r0 = r0.getConfig()
            if (r0 != r9) goto L_0x0042
        L_0x001d:
            android.graphics.drawable.BitmapDrawable r6 = (android.graphics.drawable.BitmapDrawable) r6
            int r9 = r6.getIntrinsicWidth()
            if (r7 != r9) goto L_0x0033
            int r9 = r6.getIntrinsicHeight()
            if (r8 != r9) goto L_0x0033
            android.graphics.Bitmap r6 = r6.getBitmap()
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r1)
            return r6
        L_0x0033:
            android.graphics.Bitmap r6 = r6.getBitmap()
            r9 = 1
            android.graphics.Bitmap r6 = android.graphics.Bitmap.createScaledBitmap(r6, r7, r8, r9)
            java.lang.String r7 = "Bitmap.createScaledBitma…map, width, height, true)"
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r7)
            return r6
        L_0x0042:
            android.graphics.Rect r0 = r6.getBounds()
            int r2 = r0.left
            int r3 = r0.top
            int r4 = r0.right
            int r0 = r0.bottom
            if (r9 == 0) goto L_0x0051
            goto L_0x0053
        L_0x0051:
            android.graphics.Bitmap$Config r9 = android.graphics.Bitmap.Config.ARGB_8888
        L_0x0053:
            android.graphics.Bitmap r9 = android.graphics.Bitmap.createBitmap(r7, r8, r9)
            r5 = 0
            r6.setBounds(r5, r5, r7, r8)
            android.graphics.Canvas r7 = new android.graphics.Canvas
            r7.<init>(r9)
            r6.draw(r7)
            r6.setBounds(r2, r3, r4, r0)
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.c.a.b.a(android.graphics.drawable.Drawable, int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }
}
