package com.koushikdutta.ion.loader;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.e.g;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.gif.GifDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;

public class StreamLoader extends SimpleLoader {
    /* access modifiers changed from: protected */
    public InputStream getInputStream(Context context, String str) throws Exception {
        return null;
    }

    /* access modifiers changed from: protected */
    public BitmapInfo loadGif(String str, Point point, InputStream inputStream, BitmapFactory.Options options) throws Exception {
        GifDecoder gifDecoder = new GifDecoder(ByteBuffer.wrap(g.readToEndAsArray(inputStream)));
        BitmapInfo bitmapInfo = new BitmapInfo(str, options.outMimeType, gifDecoder.nextFrame().image, point);
        bitmapInfo.gifDecoder = gifDecoder;
        return bitmapInfo;
    }

    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        i iVar = new i();
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final Context context2 = context;
        final String str3 = str2;
        final Ion ion2 = ion;
        final int i3 = i;
        final int i4 = i2;
        final boolean z2 = z;
        final String str4 = str;
        final i iVar2 = iVar;
        AnonymousClass1 r0 = new Runnable() {
            /* JADX WARNING: Unknown top exception splitter block from list: {B:30:0x0091=Splitter:B:30:0x0091, B:24:0x0082=Splitter:B:24:0x0082} */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r10 = this;
                    r0 = 0
                    r1 = 0
                    r2 = 1
                    com.koushikdutta.ion.loader.StreamLoader r3 = com.koushikdutta.ion.loader.StreamLoader.this     // Catch:{ OutOfMemoryError -> 0x008f, Exception -> 0x007e, all -> 0x0079 }
                    android.content.Context r4 = r2     // Catch:{ OutOfMemoryError -> 0x008f, Exception -> 0x007e, all -> 0x0079 }
                    java.lang.String r5 = r3     // Catch:{ OutOfMemoryError -> 0x008f, Exception -> 0x007e, all -> 0x0079 }
                    java.io.InputStream r3 = r3.getInputStream(r4, r5)     // Catch:{ OutOfMemoryError -> 0x008f, Exception -> 0x007e, all -> 0x0079 }
                    com.koushikdutta.ion.Ion r4 = r4     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    com.koushikdutta.ion.bitmap.IonBitmapCache r4 = r4.getBitmapCache()     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    int r5 = r5     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    int r6 = r6     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    android.graphics.BitmapFactory$Options r4 = r4.prepareBitmapOptions((java.io.InputStream) r3, (int) r5, (int) r6)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.io.Closeable[] r5 = new java.io.Closeable[r2]     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r5[r1] = r3     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    com.koushikdutta.async.e.g.closeQuietly(r5)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    android.graphics.Point r5 = new android.graphics.Point     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    int r6 = r4.outWidth     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    int r7 = r4.outHeight     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r5.<init>(r6, r7)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    com.koushikdutta.ion.loader.StreamLoader r6 = com.koushikdutta.ion.loader.StreamLoader.this     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    android.content.Context r7 = r2     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.lang.String r8 = r3     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.io.InputStream r3 = r6.getInputStream(r7, r8)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    boolean r6 = r7     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    if (r6 == 0) goto L_0x004c
                    java.lang.String r6 = "image/gif"
                    java.lang.String r7 = r4.outMimeType     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    boolean r6 = android.text.TextUtils.equals(r6, r7)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    if (r6 == 0) goto L_0x004c
                    com.koushikdutta.ion.loader.StreamLoader r6 = com.koushikdutta.ion.loader.StreamLoader.this     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.lang.String r7 = r8     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    com.koushikdutta.ion.bitmap.BitmapInfo r4 = r6.loadGif(r7, r5, r3, r4)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    goto L_0x005c
                L_0x004c:
                    android.graphics.Bitmap r6 = com.koushikdutta.ion.bitmap.IonBitmapCache.loadBitmap((java.io.InputStream) r3, (android.graphics.BitmapFactory.Options) r4)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    if (r6 == 0) goto L_0x006d
                    com.koushikdutta.ion.bitmap.BitmapInfo r7 = new com.koushikdutta.ion.bitmap.BitmapInfo     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.lang.String r8 = r8     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.lang.String r4 = r4.outMimeType     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r7.<init>(r8, r4, r6, r5)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r4 = r7
                L_0x005c:
                    com.koushikdutta.ion.ResponseServedFrom r5 = com.koushikdutta.ion.ResponseServedFrom.LOADED_FROM_CACHE     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r4.servedFrom = r5     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    com.koushikdutta.async.b.i r5 = r9     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    r5.setComplete(r4)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.io.Closeable[] r0 = new java.io.Closeable[r2]
                    r0[r1] = r3
                    com.koushikdutta.async.e.g.closeQuietly(r0)
                    return
                L_0x006d:
                    java.lang.Exception r4 = new java.lang.Exception     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    java.lang.String r5 = "Bitmap failed to load"
                    r4.<init>(r5)     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                    throw r4     // Catch:{ OutOfMemoryError -> 0x0077, Exception -> 0x0075 }
                L_0x0075:
                    r0 = move-exception
                    goto L_0x0082
                L_0x0077:
                    r4 = move-exception
                    goto L_0x0091
                L_0x0079:
                    r3 = move-exception
                    r9 = r3
                    r3 = r0
                    r0 = r9
                    goto L_0x00a4
                L_0x007e:
                    r3 = move-exception
                    r9 = r3
                    r3 = r0
                    r0 = r9
                L_0x0082:
                    com.koushikdutta.async.b.i r4 = r9     // Catch:{ all -> 0x00a3 }
                    r4.setComplete((java.lang.Exception) r0)     // Catch:{ all -> 0x00a3 }
                    java.io.Closeable[] r0 = new java.io.Closeable[r2]
                    r0[r1] = r3
                    com.koushikdutta.async.e.g.closeQuietly(r0)
                    return
                L_0x008f:
                    r4 = move-exception
                    r3 = r0
                L_0x0091:
                    com.koushikdutta.async.b.i r5 = r9     // Catch:{ all -> 0x00a3 }
                    java.lang.Exception r6 = new java.lang.Exception     // Catch:{ all -> 0x00a3 }
                    r6.<init>(r4)     // Catch:{ all -> 0x00a3 }
                    r5.setComplete(r6, r0)     // Catch:{ all -> 0x00a3 }
                    java.io.Closeable[] r0 = new java.io.Closeable[r2]
                    r0[r1] = r3
                    com.koushikdutta.async.e.g.closeQuietly(r0)
                    return
                L_0x00a3:
                    r0 = move-exception
                L_0x00a4:
                    java.io.Closeable[] r2 = new java.io.Closeable[r2]
                    r2[r1] = r3
                    com.koushikdutta.async.e.g.closeQuietly(r2)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.ion.loader.StreamLoader.AnonymousClass1.run():void");
            }
        };
        bitmapLoadExecutorService.execute(r0);
        return iVar;
    }
}
