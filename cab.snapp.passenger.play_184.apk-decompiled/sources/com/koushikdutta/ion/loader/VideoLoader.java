package com.koushikdutta.ion.loader;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.loader.MediaFile;
import java.util.concurrent.ExecutorService;

public class VideoLoader extends SimpleLoader {
    public static Bitmap createVideoThumbnail(String str) throws Exception {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(str);
        try {
            return mediaMetadataRetriever.getFrameAtTime();
        } finally {
            try {
                mediaMetadataRetriever.release();
            } catch (Exception unused) {
            }
        }
    }

    static boolean mustUseThumbnailUtils() {
        return Build.MANUFACTURER.toLowerCase().contains("samsung");
    }

    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        if (!str2.startsWith("file")) {
            return null;
        }
        final MediaFile.MediaFileType fileType = MediaFile.getFileType(str2);
        if (fileType == null || !MediaFile.isVideoFileType(fileType.fileType)) {
            return null;
        }
        i iVar = new i();
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final String str3 = str2;
        final i iVar2 = iVar;
        final int i3 = i;
        final int i4 = i2;
        final String str4 = str;
        AnonymousClass1 r0 = new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:12:0x0035 A[Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }] */
            /* JADX WARNING: Removed duplicated region for block: B:21:0x009a A[Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r6 = this;
                    java.io.File r0 = new java.io.File
                    java.lang.String r1 = r2
                    java.net.URI r1 = java.net.URI.create(r1)
                    r0.<init>(r1)
                    com.koushikdutta.async.b.i r1 = r3
                    boolean r1 = r1.isCancelled()
                    if (r1 == 0) goto L_0x0014
                    return
                L_0x0014:
                    boolean r1 = com.koushikdutta.ion.loader.VideoLoader.mustUseThumbnailUtils()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r2 = 1
                    if (r1 != 0) goto L_0x002b
                    int r1 = android.os.Build.VERSION.SDK_INT     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r3 = 10
                    if (r1 >= r3) goto L_0x0022
                    goto L_0x002b
                L_0x0022:
                    java.lang.String r0 = r0.getAbsolutePath()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    android.graphics.Bitmap r0 = com.koushikdutta.ion.loader.VideoLoader.createVideoThumbnail(r0)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    goto L_0x0033
                L_0x002b:
                    java.lang.String r0 = r0.getAbsolutePath()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    android.graphics.Bitmap r0 = android.media.ThumbnailUtils.createVideoThumbnail(r0, r2)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                L_0x0033:
                    if (r0 == 0) goto L_0x009a
                    android.graphics.Point r1 = new android.graphics.Point     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r3 = r0.getWidth()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r0.getHeight()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r1.<init>(r3, r4)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r3 = r0.getWidth()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r4 * 2
                    if (r3 <= r4) goto L_0x0085
                    int r3 = r0.getHeight()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r5     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r4 * 2
                    if (r3 <= r4) goto L_0x0085
                    int r3 = r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r3 = (float) r3     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r4 = r0.getWidth()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r4 = (float) r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r3 = r3 / r4
                    int r4 = r5     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r4 = (float) r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r5 = r0.getHeight()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r5 = (float) r5     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r4 = r4 / r5
                    float r3 = java.lang.Math.min(r3, r4)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r4 = 0
                    int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                    if (r4 == 0) goto L_0x0085
                    int r4 = r0.getWidth()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r4 = (float) r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r4 = r4 * r3
                    int r4 = (int) r4     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    int r5 = r0.getHeight()     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r5 = (float) r5     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    float r5 = r5 * r3
                    int r3 = (int) r5     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r4, r3, r2)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                L_0x0085:
                    com.koushikdutta.ion.bitmap.BitmapInfo r2 = new com.koushikdutta.ion.bitmap.BitmapInfo     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    java.lang.String r3 = r6     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    com.koushikdutta.ion.loader.MediaFile$MediaFileType r4 = r7     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    java.lang.String r4 = r4.mimeType     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r2.<init>(r3, r4, r0, r1)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    com.koushikdutta.ion.ResponseServedFrom r0 = com.koushikdutta.ion.ResponseServedFrom.LOADED_FROM_CACHE     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r2.servedFrom = r0     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    com.koushikdutta.async.b.i r0 = r3     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    r0.setComplete(r2)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    return
                L_0x009a:
                    java.lang.Exception r0 = new java.lang.Exception     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    java.lang.String r1 = "video bitmap failed to load"
                    r0.<init>(r1)     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                    throw r0     // Catch:{ OutOfMemoryError -> 0x00a9, Exception -> 0x00a2 }
                L_0x00a2:
                    r0 = move-exception
                    com.koushikdutta.async.b.i r1 = r3
                    r1.setComplete((java.lang.Exception) r0)
                    return
                L_0x00a9:
                    r0 = move-exception
                    com.koushikdutta.async.b.i r1 = r3
                    java.lang.Exception r2 = new java.lang.Exception
                    r2.<init>(r0)
                    r1.setComplete((java.lang.Exception) r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.ion.loader.VideoLoader.AnonymousClass1.run():void");
            }
        };
        bitmapLoadExecutorService.execute(r0);
        return iVar;
    }
}
