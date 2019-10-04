package com.koushikdutta.ion;

import com.koushikdutta.async.b.f;
import com.koushikdutta.async.l;

class LoadBitmap extends LoadBitmapEmitter implements f<Response<l>> {
    int resizeHeight;
    int resizeWidth;

    public LoadBitmap(Ion ion, String str, boolean z, int i, int i2, boolean z2) {
        super(ion, str, z, z2);
        this.resizeWidth = i;
        this.resizeHeight = i2;
    }

    public void onCompleted(Exception exc, final Response<l> response) {
        if (exc == null) {
            exc = response.getException();
        }
        if (exc != null) {
            report(exc, null);
            return;
        }
        final l result = response.getResult();
        if (this.ion.bitmapsPending.tag(this.key) != this) {
            result.recycle();
        } else {
            Ion.getBitmapLoadExecutorService().execute(new Runnable() {
                /* JADX WARNING: Unknown top exception splitter block from list: {B:41:0x00d8=Splitter:B:41:0x00d8, B:35:0x00cd=Splitter:B:35:0x00cd} */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void run() {
                    /*
                        r10 = this;
                        com.koushikdutta.ion.LoadBitmap r0 = com.koushikdutta.ion.LoadBitmap.this
                        com.koushikdutta.ion.Ion r0 = r0.ion
                        com.koushikdutta.async.e.e<com.koushikdutta.async.b.f<com.koushikdutta.ion.bitmap.BitmapInfo>> r0 = r0.bitmapsPending
                        com.koushikdutta.ion.LoadBitmap r1 = com.koushikdutta.ion.LoadBitmap.this
                        java.lang.String r1 = r1.key
                        java.lang.Object r0 = r0.tag(r1)
                        com.koushikdutta.ion.LoadBitmap r1 = com.koushikdutta.ion.LoadBitmap.this
                        if (r0 == r1) goto L_0x0018
                        com.koushikdutta.async.l r0 = r3
                        r0.recycle()
                        return
                    L_0x0018:
                        r0 = 0
                        com.koushikdutta.async.l r1 = r3     // Catch:{ OutOfMemoryError -> 0x00d6, Exception -> 0x00cb, all -> 0x00c6 }
                        java.nio.ByteBuffer r1 = r1.getAll()     // Catch:{ OutOfMemoryError -> 0x00d6, Exception -> 0x00cb, all -> 0x00c6 }
                        com.koushikdutta.ion.LoadBitmap r2 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.Ion r2 = r2.ion     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.bitmap.IonBitmapCache r3 = r2.bitmapCache     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        byte[] r4 = r1.array()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r2 = r1.arrayOffset()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r5 = r1.position()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r5 = r5 + r2
                        int r6 = r1.remaining()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.LoadBitmap r2 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r7 = r2.resizeWidth     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.LoadBitmap r2 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r8 = r2.resizeHeight     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        android.graphics.BitmapFactory$Options r2 = r3.prepareBitmapOptions(r4, r5, r6, r7, r8)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        android.graphics.Point r3 = new android.graphics.Point     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r4 = r2.outWidth     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r5 = r2.outHeight     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        r3.<init>(r4, r5)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.LoadBitmap r4 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        boolean r4 = r4.animateGif     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        if (r4 == 0) goto L_0x0079
                        java.lang.String r4 = "image/gif"
                        java.lang.String r5 = r2.outMimeType     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        boolean r4 = android.text.TextUtils.equals(r4, r5)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        if (r4 == 0) goto L_0x0079
                        com.koushikdutta.ion.gif.GifDecoder r4 = new com.koushikdutta.ion.gif.GifDecoder     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        byte[] r5 = r1.array()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r6 = r1.arrayOffset()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r7 = r1.position()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r6 = r6 + r7
                        int r7 = r1.remaining()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        r4.<init>(r5, r6, r7)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        com.koushikdutta.ion.gif.GifFrame r5 = r4.nextFrame()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        android.graphics.Bitmap r1 = r5.image     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        r5 = r0
                        goto L_0x0093
                    L_0x0079:
                        byte[] r4 = r1.array()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r5 = r1.arrayOffset()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r6 = r1.position()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        int r5 = r5 + r6
                        int r6 = r1.remaining()     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        android.graphics.Bitmap r4 = com.koushikdutta.ion.bitmap.IonBitmapCache.loadBitmap(r4, r5, r6, r2)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        if (r4 == 0) goto L_0x00ba
                        r5 = r1
                        r1 = r4
                        r4 = r0
                    L_0x0093:
                        com.koushikdutta.ion.bitmap.BitmapInfo r6 = new com.koushikdutta.ion.bitmap.BitmapInfo     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        com.koushikdutta.ion.LoadBitmap r7 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        java.lang.String r7 = r7.key     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        java.lang.String r2 = r2.outMimeType     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        r6.<init>(r7, r2, r1, r3)     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        r6.gifDecoder = r4     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        com.koushikdutta.ion.Response r1 = r4     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        com.koushikdutta.ion.ResponseServedFrom r1 = r1.getServedFrom()     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        r6.servedFrom = r1     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        com.koushikdutta.ion.LoadBitmap r1 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        r1.report(r0, r6)     // Catch:{ OutOfMemoryError -> 0x00b7, Exception -> 0x00b4, all -> 0x00b1 }
                        com.koushikdutta.async.l.reclaim(r5)
                        return
                    L_0x00b1:
                        r0 = move-exception
                        r1 = r5
                        goto L_0x00e7
                    L_0x00b4:
                        r2 = move-exception
                        r1 = r5
                        goto L_0x00cd
                    L_0x00b7:
                        r2 = move-exception
                        r1 = r5
                        goto L_0x00d8
                    L_0x00ba:
                        java.lang.Exception r2 = new java.lang.Exception     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        java.lang.String r3 = "failed to load bitmap"
                        r2.<init>(r3)     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                        throw r2     // Catch:{ OutOfMemoryError -> 0x00c4, Exception -> 0x00c2 }
                    L_0x00c2:
                        r2 = move-exception
                        goto L_0x00cd
                    L_0x00c4:
                        r2 = move-exception
                        goto L_0x00d8
                    L_0x00c6:
                        r1 = move-exception
                        r9 = r1
                        r1 = r0
                        r0 = r9
                        goto L_0x00e7
                    L_0x00cb:
                        r2 = move-exception
                        r1 = r0
                    L_0x00cd:
                        com.koushikdutta.ion.LoadBitmap r3 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ all -> 0x00e6 }
                        r3.report(r2, r0)     // Catch:{ all -> 0x00e6 }
                        com.koushikdutta.async.l.reclaim(r1)
                        return
                    L_0x00d6:
                        r2 = move-exception
                        r1 = r0
                    L_0x00d8:
                        com.koushikdutta.ion.LoadBitmap r3 = com.koushikdutta.ion.LoadBitmap.this     // Catch:{ all -> 0x00e6 }
                        java.lang.Exception r4 = new java.lang.Exception     // Catch:{ all -> 0x00e6 }
                        r4.<init>(r2)     // Catch:{ all -> 0x00e6 }
                        r3.report(r4, r0)     // Catch:{ all -> 0x00e6 }
                        com.koushikdutta.async.l.reclaim(r1)
                        return
                    L_0x00e6:
                        r0 = move-exception
                    L_0x00e7:
                        com.koushikdutta.async.l.reclaim(r1)
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.ion.LoadBitmap.AnonymousClass1.run():void");
                }
            });
        }
    }
}
