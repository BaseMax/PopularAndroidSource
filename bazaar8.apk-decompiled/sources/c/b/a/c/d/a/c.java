package c.b.a.c.d.a;

import android.graphics.Bitmap;
import c.b.a.c.b.a.b;
import c.b.a.c.e;
import c.b.a.c.f;
import c.b.a.c.h;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: BitmapEncoder */
public class c implements h<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public static final e<Integer> f4154a = e.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: b  reason: collision with root package name */
    public static final e<Bitmap.CompressFormat> f4155b = e.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: c  reason: collision with root package name */
    public final b f4156c;

    public c(b bVar) {
        this.f4156c = bVar;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:21|(2:38|39)|40|41) */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r6 == null) goto L_0x0069;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:40:0x00bf */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0061 A[Catch:{ all -> 0x0057 }] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00bc A[SYNTHETIC, Splitter:B:38:0x00bc] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(c.b.a.c.b.D<android.graphics.Bitmap> r9, java.io.File r10, c.b.a.c.f r11) {
        /*
            r8 = this;
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            android.graphics.Bitmap$CompressFormat r1 = r8.a(r9, r11)
            int r2 = r9.getWidth()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            int r3 = r9.getHeight()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.String r4 = "encode: [%dx%d] %s"
            c.b.a.i.a.e.a(r4, r2, r3, r1)
            long r2 = c.b.a.i.e.a()     // Catch:{ all -> 0x00c0 }
            c.b.a.c.e<java.lang.Integer> r4 = f4154a     // Catch:{ all -> 0x00c0 }
            java.lang.Object r4 = r11.a(r4)     // Catch:{ all -> 0x00c0 }
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch:{ all -> 0x00c0 }
            int r4 = r4.intValue()     // Catch:{ all -> 0x00c0 }
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0059 }
            r7.<init>(r10)     // Catch:{ IOException -> 0x0059 }
            c.b.a.c.b.a.b r10 = r8.f4156c     // Catch:{ IOException -> 0x0054, all -> 0x0051 }
            if (r10 == 0) goto L_0x0045
            c.b.a.c.a.c r10 = new c.b.a.c.a.c     // Catch:{ IOException -> 0x0054, all -> 0x0051 }
            c.b.a.c.b.a.b r6 = r8.f4156c     // Catch:{ IOException -> 0x0054, all -> 0x0051 }
            r10.<init>(r7, r6)     // Catch:{ IOException -> 0x0054, all -> 0x0051 }
            r6 = r10
            goto L_0x0046
        L_0x0045:
            r6 = r7
        L_0x0046:
            r9.compress(r1, r4, r6)     // Catch:{ IOException -> 0x0059 }
            r6.close()     // Catch:{ IOException -> 0x0059 }
            r5 = 1
        L_0x004d:
            r6.close()     // Catch:{ IOException -> 0x0069 }
            goto L_0x0069
        L_0x0051:
            r9 = move-exception
            r6 = r7
            goto L_0x00ba
        L_0x0054:
            r10 = move-exception
            r6 = r7
            goto L_0x005a
        L_0x0057:
            r9 = move-exception
            goto L_0x00ba
        L_0x0059:
            r10 = move-exception
        L_0x005a:
            r4 = 3
            boolean r4 = android.util.Log.isLoggable(r0, r4)     // Catch:{ all -> 0x0057 }
            if (r4 == 0) goto L_0x0066
            java.lang.String r4 = "Failed to encode Bitmap"
            android.util.Log.d(r0, r4, r10)     // Catch:{ all -> 0x0057 }
        L_0x0066:
            if (r6 == 0) goto L_0x0069
            goto L_0x004d
        L_0x0069:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch:{ all -> 0x00c0 }
            if (r10 == 0) goto L_0x00b6
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c0 }
            r10.<init>()     // Catch:{ all -> 0x00c0 }
            java.lang.String r4 = "Compressed with type: "
            r10.append(r4)     // Catch:{ all -> 0x00c0 }
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            java.lang.String r1 = " of size "
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            int r1 = c.b.a.i.k.a((android.graphics.Bitmap) r9)     // Catch:{ all -> 0x00c0 }
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            java.lang.String r1 = " in "
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            double r1 = c.b.a.i.e.a(r2)     // Catch:{ all -> 0x00c0 }
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            java.lang.String r1 = ", options format: "
            r10.append(r1)     // Catch:{ all -> 0x00c0 }
            c.b.a.c.e<android.graphics.Bitmap$CompressFormat> r1 = f4155b     // Catch:{ all -> 0x00c0 }
            java.lang.Object r11 = r11.a(r1)     // Catch:{ all -> 0x00c0 }
            r10.append(r11)     // Catch:{ all -> 0x00c0 }
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch:{ all -> 0x00c0 }
            boolean r9 = r9.hasAlpha()     // Catch:{ all -> 0x00c0 }
            r10.append(r9)     // Catch:{ all -> 0x00c0 }
            java.lang.String r9 = r10.toString()     // Catch:{ all -> 0x00c0 }
            android.util.Log.v(r0, r9)     // Catch:{ all -> 0x00c0 }
        L_0x00b6:
            c.b.a.i.a.e.a()
            return r5
        L_0x00ba:
            if (r6 == 0) goto L_0x00bf
            r6.close()     // Catch:{ IOException -> 0x00bf }
        L_0x00bf:
            throw r9     // Catch:{ all -> 0x00c0 }
        L_0x00c0:
            r9 = move-exception
            c.b.a.i.a.e.a()
            goto L_0x00c6
        L_0x00c5:
            throw r9
        L_0x00c6:
            goto L_0x00c5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.d.a.c.a(c.b.a.c.b.D, java.io.File, c.b.a.c.f):boolean");
    }

    public final Bitmap.CompressFormat a(Bitmap bitmap, f fVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) fVar.a(f4155b);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    public EncodeStrategy a(f fVar) {
        return EncodeStrategy.TRANSFORMED;
    }
}
