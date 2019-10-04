package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;

public final class c implements i<Bitmap> {
    public static final f<Bitmap.CompressFormat> COMPRESSION_FORMAT = f.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
    public static final f<Integer> COMPRESSION_QUALITY = f.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: a  reason: collision with root package name */
    private final b f2339a;

    public c(b bVar) {
        this.f2339a = bVar;
    }

    @Deprecated
    public c() {
        this.f2339a = null;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:24|25|(0)|32|33) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x006e */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x006b A[SYNTHETIC, Splitter:B:30:0x006b] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0071 A[Catch:{ all -> 0x00bb }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007b A[Catch:{ all -> 0x00bb }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean encode(com.bumptech.glide.load.b.v<android.graphics.Bitmap> r8, java.io.File r9, com.bumptech.glide.load.g r10) {
        /*
            r7 = this;
            java.lang.Object r8 = r8.get()
            android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8
            com.bumptech.glide.load.f<android.graphics.Bitmap$CompressFormat> r0 = COMPRESSION_FORMAT
            java.lang.Object r0 = r10.get(r0)
            android.graphics.Bitmap$CompressFormat r0 = (android.graphics.Bitmap.CompressFormat) r0
            if (r0 == 0) goto L_0x0011
            goto L_0x001c
        L_0x0011:
            boolean r0 = r8.hasAlpha()
            if (r0 == 0) goto L_0x001a
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG
            goto L_0x001c
        L_0x001a:
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG
        L_0x001c:
            int r1 = r8.getWidth()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            int r2 = r8.getHeight()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.String r3 = "encode: [%dx%d] %s"
            com.bumptech.glide.g.a.b.beginSectionFormat(r3, r1, r2, r0)
            long r1 = com.bumptech.glide.g.f.getLogTime()     // Catch:{ all -> 0x00bb }
            com.bumptech.glide.load.f<java.lang.Integer> r3 = COMPRESSION_QUALITY     // Catch:{ all -> 0x00bb }
            java.lang.Object r3 = r10.get(r3)     // Catch:{ all -> 0x00bb }
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch:{ all -> 0x00bb }
            int r3 = r3.intValue()     // Catch:{ all -> 0x00bb }
            r4 = 0
            r5 = 0
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0061, all -> 0x0068 }
            r6.<init>(r9)     // Catch:{ IOException -> 0x0061, all -> 0x0068 }
            com.bumptech.glide.load.b.a.b r9 = r7.f2339a     // Catch:{ IOException -> 0x0066, all -> 0x0063 }
            if (r9 == 0) goto L_0x0055
            com.bumptech.glide.load.a.c r9 = new com.bumptech.glide.load.a.c     // Catch:{ IOException -> 0x0066, all -> 0x0063 }
            com.bumptech.glide.load.b.a.b r5 = r7.f2339a     // Catch:{ IOException -> 0x0066, all -> 0x0063 }
            r9.<init>(r6, r5)     // Catch:{ IOException -> 0x0066, all -> 0x0063 }
            r5 = r9
            goto L_0x0056
        L_0x0055:
            r5 = r6
        L_0x0056:
            r8.compress(r0, r3, r5)     // Catch:{ IOException -> 0x0061, all -> 0x0068 }
            r5.close()     // Catch:{ IOException -> 0x0061, all -> 0x0068 }
            r4 = 1
        L_0x005d:
            r5.close()     // Catch:{ IOException -> 0x0072 }
            goto L_0x0072
        L_0x0061:
            goto L_0x006f
        L_0x0063:
            r8 = move-exception
            r5 = r6
            goto L_0x0069
        L_0x0066:
            r5 = r6
            goto L_0x006f
        L_0x0068:
            r8 = move-exception
        L_0x0069:
            if (r5 == 0) goto L_0x006e
            r5.close()     // Catch:{ IOException -> 0x006e }
        L_0x006e:
            throw r8     // Catch:{ all -> 0x00bb }
        L_0x006f:
            if (r5 == 0) goto L_0x0072
            goto L_0x005d
        L_0x0072:
            java.lang.String r9 = "BitmapEncoder"
            r3 = 2
            boolean r9 = android.util.Log.isLoggable(r9, r3)     // Catch:{ all -> 0x00bb }
            if (r9 == 0) goto L_0x00b7
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x00bb }
            java.lang.String r3 = "Compressed with type: "
            r9.<init>(r3)     // Catch:{ all -> 0x00bb }
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            java.lang.String r0 = " of size "
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            int r0 = com.bumptech.glide.g.k.getBitmapByteSize(r8)     // Catch:{ all -> 0x00bb }
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            java.lang.String r0 = " in "
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            double r0 = com.bumptech.glide.g.f.getElapsedMillis(r1)     // Catch:{ all -> 0x00bb }
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            java.lang.String r0 = ", options format: "
            r9.append(r0)     // Catch:{ all -> 0x00bb }
            com.bumptech.glide.load.f<android.graphics.Bitmap$CompressFormat> r0 = COMPRESSION_FORMAT     // Catch:{ all -> 0x00bb }
            java.lang.Object r10 = r10.get(r0)     // Catch:{ all -> 0x00bb }
            r9.append(r10)     // Catch:{ all -> 0x00bb }
            java.lang.String r10 = ", hasAlpha: "
            r9.append(r10)     // Catch:{ all -> 0x00bb }
            boolean r8 = r8.hasAlpha()     // Catch:{ all -> 0x00bb }
            r9.append(r8)     // Catch:{ all -> 0x00bb }
        L_0x00b7:
            com.bumptech.glide.g.a.b.endSection()
            return r4
        L_0x00bb:
            r8 = move-exception
            com.bumptech.glide.g.a.b.endSection()
            goto L_0x00c1
        L_0x00c0:
            throw r8
        L_0x00c1:
            goto L_0x00c0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.c.encode(com.bumptech.glide.load.b.v, java.io.File, com.bumptech.glide.load.g):boolean");
    }

    public final EncodeStrategy getEncodeStrategy(g gVar) {
        return EncodeStrategy.TRANSFORMED;
    }
}
