package com.webengage.sdk.android.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import java.util.Set;

public class f {

    static class a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f5597a;

        /* renamed from: b  reason: collision with root package name */
        private int f5598b;

        private a(InputStream inputStream) {
            this.f5597a = inputStream;
            this.f5598b = 0;
        }

        public int read() {
            int read = this.f5597a.read();
            if (read != -1) {
                return read;
            }
            int i = this.f5598b;
            if (i > 0) {
                return 217;
            }
            this.f5598b = i + 1;
            return 255;
        }
    }

    public static int a(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 > i2 && i7 / i5 > i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    private static Bitmap a(BitmapFactory.Options options, File file, int i, int i2) {
        while (options.inSampleSize <= 32) {
            try {
                Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                if (decodeFile != null) {
                    int width = decodeFile.getWidth();
                    int height = decodeFile.getHeight();
                    double d = (double) width;
                    double d2 = (double) height;
                    Double.isNaN(d);
                    Double.isNaN(d2);
                    double d3 = d / d2;
                    double d4 = (double) i;
                    double d5 = (double) i2;
                    Double.isNaN(d4);
                    Double.isNaN(d5);
                    if (d3 == d4 / d5 && width >= i && height >= i2) {
                        decodeFile = Bitmap.createScaledBitmap(decodeFile, i, i2, false);
                    }
                    return decodeFile;
                }
                FileInputStream fileInputStream = new FileInputStream(file.getAbsolutePath());
                Bitmap decodeStream = BitmapFactory.decodeStream(new a(fileInputStream));
                try {
                    fileInputStream.close();
                } catch (IOException unused) {
                }
                return decodeStream;
            } catch (OutOfMemoryError unused2) {
                options.inSampleSize *= 2;
            } catch (Exception unused3) {
                return null;
            }
        }
        throw new OutOfMemoryError();
    }

    public static Bitmap a(g gVar, float f, float f2, Context context) {
        return a(gVar, k.a(f, context.getApplicationContext()), k.a(f2, context.getApplicationContext()), context);
    }

    public static Bitmap a(g gVar, float f, Context context) {
        return a(gVar, k.b(context.getApplicationContext()).widthPixels, k.a(f, context.getApplicationContext()), context);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v6, resolved type: java.io.File} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v7, resolved type: java.io.File} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v8, resolved type: java.io.File} */
    /* JADX WARNING: type inference failed for: r13v2, types: [java.io.File] */
    /* JADX WARNING: type inference failed for: r13v5 */
    /* JADX WARNING: Can't wrap try/catch for region: R(7:22|(1:24)|25|26|38|39|(4:41|42|43|(3:45|46|47)(5:48|49|50|51|52))(2:53|54)) */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x006b, code lost:
        r10 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0073, code lost:
        r13 = null;
        r4 = r13;
        r13 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00e3, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00e4, code lost:
        r13.delete();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00e8, code lost:
        throw r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x005f */
    /* JADX WARNING: Missing exception handler attribute for start block: B:38:0x0076 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006b A[ExcHandler: all (th java.lang.Throwable), Splitter:B:15:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00df  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Bitmap a(com.webengage.sdk.android.utils.a.g r10, int r11, int r12, android.content.Context r13) {
        /*
            java.io.InputStream r0 = r10.e()
            r1 = 0
            if (r0 != 0) goto L_0x0008
            return r1
        L_0x0008:
            r2 = 0
            java.util.Map r4 = r10.b()
            r5 = 0
            if (r4 == 0) goto L_0x003f
            java.lang.String r6 = "content-length"
            boolean r7 = r4.containsKey(r6)
            if (r7 == 0) goto L_0x003f
            java.lang.Object r7 = r4.get(r6)
            if (r7 == 0) goto L_0x003f
            java.lang.Object r7 = r4.get(r6)
            java.util.List r7 = (java.util.List) r7
            int r7 = r7.size()
            if (r7 <= 0) goto L_0x003f
            java.lang.Object r4 = r4.get(r6)     // Catch:{ NumberFormatException -> 0x003f }
            java.util.List r4 = (java.util.List) r4     // Catch:{ NumberFormatException -> 0x003f }
            java.lang.Object r4 = r4.get(r5)     // Catch:{ NumberFormatException -> 0x003f }
            java.lang.String r4 = (java.lang.String) r4     // Catch:{ NumberFormatException -> 0x003f }
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch:{ NumberFormatException -> 0x003f }
            long r2 = r4.longValue()     // Catch:{ NumberFormatException -> 0x003f }
        L_0x003f:
            java.lang.String r4 = "image__"
            java.lang.String r6 = ".temp"
            java.io.File r13 = r13.getCacheDir()     // Catch:{ Exception -> 0x0073, all -> 0x006b }
            java.io.File r13 = java.io.File.createTempFile(r4, r6, r13)     // Catch:{ Exception -> 0x0073, all -> 0x006b }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0069, all -> 0x006b }
            r4.<init>(r13)     // Catch:{ Exception -> 0x0069, all -> 0x006b }
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch:{ Exception -> 0x005f, all -> 0x0066 }
        L_0x0054:
            int r7 = r0.read(r6)     // Catch:{ Exception -> 0x005f, all -> 0x0066 }
            r8 = -1
            if (r7 == r8) goto L_0x005f
            r4.write(r6, r5, r7)     // Catch:{ Exception -> 0x005f, all -> 0x0066 }
            goto L_0x0054
        L_0x005f:
            r0.close()     // Catch:{ Exception -> 0x0076 }
            r4.close()     // Catch:{ Exception -> 0x0076 }
            goto L_0x0076
        L_0x0066:
            r10 = move-exception
            r1 = r4
            goto L_0x006c
        L_0x0069:
            r4 = r1
            goto L_0x005f
        L_0x006b:
            r10 = move-exception
        L_0x006c:
            r0.close()     // Catch:{ Exception -> 0x0072 }
            r1.close()     // Catch:{ Exception -> 0x0072 }
        L_0x0072:
            throw r10
        L_0x0073:
            r13 = r1
            r4 = r13
            goto L_0x005f
        L_0x0076:
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options     // Catch:{ all -> 0x00e3 }
            r0.<init>()     // Catch:{ all -> 0x00e3 }
            r4 = 1
            r0.inJustDecodeBounds = r4     // Catch:{ all -> 0x00e3 }
            if (r13 == 0) goto L_0x00df
            r6 = 4607002274814922588(0x3fef5c28f5c28f5c, double:0.98)
            double r8 = (double) r2
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r6
            long r6 = r13.length()     // Catch:{ all -> 0x00e3 }
            double r6 = (double) r6     // Catch:{ all -> 0x00e3 }
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 < 0) goto L_0x00ab
            java.lang.String r10 = r13.getAbsolutePath()     // Catch:{ all -> 0x00e3 }
            android.graphics.BitmapFactory.decodeFile(r10, r0)     // Catch:{ all -> 0x00e3 }
            int r10 = a((android.graphics.BitmapFactory.Options) r0, (int) r11, (int) r12)     // Catch:{ all -> 0x00e3 }
            r0.inSampleSize = r10     // Catch:{ all -> 0x00e3 }
            r0.inJustDecodeBounds = r5     // Catch:{ all -> 0x00e3 }
            android.graphics.Bitmap r10 = a((android.graphics.BitmapFactory.Options) r0, (java.io.File) r13, (int) r11, (int) r12)     // Catch:{ all -> 0x00e3 }
            r13.delete()
            return r10
        L_0x00ab:
            java.lang.String r11 = "WebEngage"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e3 }
            java.lang.String r0 = "Incomplete image downloaded [url: "
            r12.<init>(r0)     // Catch:{ all -> 0x00e3 }
            java.lang.String r10 = r10.l()     // Catch:{ all -> 0x00e3 }
            r12.append(r10)     // Catch:{ all -> 0x00e3 }
            java.lang.String r10 = ", total image size: "
            r12.append(r10)     // Catch:{ all -> 0x00e3 }
            r12.append(r2)     // Catch:{ all -> 0x00e3 }
            java.lang.String r10 = " bytes, downloaded image size: "
            r12.append(r10)     // Catch:{ all -> 0x00e3 }
            long r2 = r13.length()     // Catch:{ all -> 0x00e3 }
            r12.append(r2)     // Catch:{ all -> 0x00e3 }
            java.lang.String r10 = " bytes]"
            r12.append(r10)     // Catch:{ all -> 0x00e3 }
            java.lang.String r10 = r12.toString()     // Catch:{ all -> 0x00e3 }
            com.webengage.sdk.android.Logger.e(r11, r10)     // Catch:{ all -> 0x00e3 }
            r13.delete()
            return r1
        L_0x00df:
            r13.delete()
            return r1
        L_0x00e3:
            r10 = move-exception
            r13.delete()
            goto L_0x00e9
        L_0x00e8:
            throw r10
        L_0x00e9:
            goto L_0x00e8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.f.a(com.webengage.sdk.android.utils.a.g, int, int, android.content.Context):android.graphics.Bitmap");
    }

    public static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                } else {
                    inputStream.close();
                    return sb.toString();
                }
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static Map<String, Object> a(InputStream inputStream, boolean z) {
        return new d(inputStream, z).a();
    }

    public static void a(Set<String> set, Context context) {
        if (set != null && set.size() != 0) {
            for (String next : set) {
                if (!next.isEmpty()) {
                    a.a(new f.a(next, e.GET, context.getApplicationContext()).b(2).a());
                }
            }
        }
    }
}
