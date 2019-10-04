package c.b.a.c.d.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import c.b.a.c.b.D;
import c.b.a.c.b.a.b;
import c.b.a.c.e;
import c.b.a.c.f;
import c.b.a.i.i;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.crashlytics.android.core.LogFileManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Downsampler */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final e<DecodeFormat> f4167a = e.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final e<DownsampleStrategy> f4168b = DownsampleStrategy.f12079h;

    /* renamed from: c  reason: collision with root package name */
    public static final e<Boolean> f4169c = e.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", false);

    /* renamed from: d  reason: collision with root package name */
    public static final e<Boolean> f4170d = e.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", false);

    /* renamed from: e  reason: collision with root package name */
    public static final Set<String> f4171e = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"image/vnd.wap.wbmp", "image/x-ico"})));

    /* renamed from: f  reason: collision with root package name */
    public static final a f4172f = new j();

    /* renamed from: g  reason: collision with root package name */
    public static final Set<ImageHeaderParser.ImageType> f4173g = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: h  reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f4174h = c.b.a.i.k.a(0);

    /* renamed from: i  reason: collision with root package name */
    public final c.b.a.c.b.a.e f4175i;

    /* renamed from: j  reason: collision with root package name */
    public final DisplayMetrics f4176j;

    /* renamed from: k  reason: collision with root package name */
    public final b f4177k;

    /* renamed from: l  reason: collision with root package name */
    public final List<ImageHeaderParser> f4178l;
    public final q m = q.a();

    /* compiled from: Downsampler */
    public interface a {
        void a();

        void a(c.b.a.c.b.a.e eVar, Bitmap bitmap);
    }

    public k(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, c.b.a.c.b.a.e eVar, b bVar) {
        this.f4178l = list;
        i.a(displayMetrics);
        this.f4176j = displayMetrics;
        i.a(eVar);
        this.f4175i = eVar;
        i.a(bVar);
        this.f4177k = bVar;
    }

    public static int b(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    public static int c(double d2) {
        return (int) (d2 + 0.5d);
    }

    public static void c(BitmapFactory.Options options) {
        d(options);
        synchronized (f4174h) {
            f4174h.offer(options);
        }
    }

    public static void d(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public D<Bitmap> a(InputStream inputStream, int i2, int i3, f fVar) {
        return a(inputStream, i2, i3, fVar, f4172f);
    }

    public boolean a(InputStream inputStream) {
        return true;
    }

    public boolean a(ByteBuffer byteBuffer) {
        return true;
    }

    public static int[] b(InputStream inputStream, BitmapFactory.Options options, a aVar, c.b.a.c.b.a.e eVar) {
        options.inJustDecodeBounds = true;
        a(inputStream, options, aVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public D<Bitmap> a(InputStream inputStream, int i2, int i3, f fVar, a aVar) {
        f fVar2 = fVar;
        i.a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f4177k.b(LogFileManager.MAX_LOG_SIZE, byte[].class);
        BitmapFactory.Options a2 = a();
        a2.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) fVar2.a(f4167a);
        try {
            return d.a(a(inputStream, a2, (DownsampleStrategy) fVar2.a(DownsampleStrategy.f12079h), decodeFormat, fVar2.a(f4170d) != null && ((Boolean) fVar2.a(f4170d)).booleanValue(), i2, i3, ((Boolean) fVar2.a(f4169c)).booleanValue(), aVar), this.f4175i);
        } finally {
            c(a2);
            this.f4177k.put(bArr);
        }
    }

    public static boolean b(BitmapFactory.Options options) {
        int i2 = options.inTargetDensity;
        if (i2 > 0) {
            int i3 = options.inDensity;
            if (i3 > 0 && i2 != i3) {
                return true;
            }
        }
        return false;
    }

    public final Bitmap a(InputStream inputStream, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z, int i2, int i3, boolean z2, a aVar) {
        int i4;
        int i5;
        k kVar;
        int i6;
        int i7;
        int i8;
        InputStream inputStream2 = inputStream;
        BitmapFactory.Options options2 = options;
        a aVar2 = aVar;
        long a2 = c.b.a.i.e.a();
        int[] b2 = b(inputStream2, options2, aVar2, this.f4175i);
        boolean z3 = false;
        int i9 = b2[0];
        int i10 = b2[1];
        String str = options2.outMimeType;
        boolean z4 = (i9 == -1 || i10 == -1) ? false : z;
        int a3 = c.b.a.c.b.a(this.f4178l, inputStream2, this.f4177k);
        int a4 = v.a(a3);
        boolean b3 = v.b(a3);
        int i11 = i2;
        if (i11 == Integer.MIN_VALUE) {
            i5 = i3;
            i4 = i9;
        } else {
            i5 = i3;
            i4 = i11;
        }
        int i12 = i5 == Integer.MIN_VALUE ? i10 : i5;
        ImageHeaderParser.ImageType b4 = c.b.a.c.b.b(this.f4178l, inputStream2, this.f4177k);
        c.b.a.c.b.a.e eVar = this.f4175i;
        ImageHeaderParser.ImageType imageType = b4;
        a(b4, inputStream, aVar, eVar, downsampleStrategy, a4, i9, i10, i4, i12, options);
        int i13 = a3;
        String str2 = str;
        int i14 = i10;
        int i15 = i9;
        a aVar3 = aVar2;
        BitmapFactory.Options options3 = options2;
        a(inputStream, decodeFormat, z4, b3, options, i4, i12);
        if (Build.VERSION.SDK_INT >= 19) {
            z3 = true;
        }
        if (options3.inSampleSize == 1 || z3) {
            kVar = this;
            if (kVar.a(imageType)) {
                if (i15 < 0 || i14 < 0 || !z2 || !z3) {
                    float f2 = b(options) ? ((float) options3.inTargetDensity) / ((float) options3.inDensity) : 1.0f;
                    int i16 = options3.inSampleSize;
                    float f3 = (float) i16;
                    i8 = Math.round(((float) ((int) Math.ceil((double) (((float) i15) / f3)))) * f2);
                    i7 = Math.round(((float) ((int) Math.ceil((double) (((float) i14) / f3)))) * f2);
                    if (Log.isLoggable("Downsampler", 2)) {
                        Log.v("Downsampler", "Calculated target [" + i8 + "x" + i7 + "] for source [" + i15 + "x" + i14 + "], sampleSize: " + i16 + ", targetDensity: " + options3.inTargetDensity + ", density: " + options3.inDensity + ", density multiplier: " + f2);
                    }
                } else {
                    i8 = i4;
                    i7 = i12;
                }
                if (i8 > 0 && i7 > 0) {
                    a(options3, kVar.f4175i, i8, i7);
                }
            }
        } else {
            kVar = this;
        }
        Bitmap a5 = a(inputStream, options3, aVar3, kVar.f4175i);
        aVar3.a(kVar.f4175i, a5);
        if (Log.isLoggable("Downsampler", 2)) {
            i6 = i13;
            a(i15, i14, str2, options, a5, i2, i3, a2);
        } else {
            i6 = i13;
        }
        Bitmap bitmap = null;
        if (a5 != null) {
            a5.setDensity(kVar.f4176j.densityDpi);
            bitmap = v.a(kVar.f4175i, a5, i6);
            if (!a5.equals(bitmap)) {
                kVar.f4175i.a(a5);
            }
        }
        return bitmap;
    }

    public static void a(ImageHeaderParser.ImageType imageType, InputStream inputStream, a aVar, c.b.a.c.b.a.e eVar, DownsampleStrategy downsampleStrategy, int i2, int i3, int i4, int i5, int i6, BitmapFactory.Options options) {
        float f2;
        int i7;
        int i8;
        int i9;
        int i10;
        double d2;
        ImageHeaderParser.ImageType imageType2 = imageType;
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        int i11 = i2;
        int i12 = i3;
        int i13 = i4;
        int i14 = i5;
        int i15 = i6;
        BitmapFactory.Options options2 = options;
        if (i12 <= 0 || i13 <= 0) {
            String str = "Downsampler";
            String str2 = "x";
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to determine dimensions for: " + imageType2 + " with target [" + i14 + str2 + i15 + "]");
            }
            return;
        }
        if (i11 == 90 || i11 == 270) {
            f2 = downsampleStrategy2.b(i13, i12, i14, i15);
        } else {
            f2 = downsampleStrategy2.b(i12, i13, i14, i15);
        }
        if (f2 > 0.0f) {
            DownsampleStrategy.SampleSizeRounding a2 = downsampleStrategy2.a(i12, i13, i14, i15);
            if (a2 != null) {
                float f3 = (float) i12;
                float f4 = (float) i13;
                String str3 = "Downsampler";
                String str4 = "x";
                int c2 = i12 / c((double) (f2 * f3));
                int c3 = i13 / c((double) (f2 * f4));
                if (a2 == DownsampleStrategy.SampleSizeRounding.MEMORY) {
                    i7 = Math.max(c2, c3);
                } else {
                    i7 = Math.min(c2, c3);
                }
                if (Build.VERSION.SDK_INT > 23 || !f4171e.contains(options2.outMimeType)) {
                    int max = Math.max(1, Integer.highestOneBit(i7));
                    i8 = (a2 != DownsampleStrategy.SampleSizeRounding.MEMORY || ((float) max) >= 1.0f / f2) ? max : max << 1;
                } else {
                    i8 = 1;
                }
                options2.inSampleSize = i8;
                if (imageType2 == ImageHeaderParser.ImageType.JPEG) {
                    float min = (float) Math.min(i8, 8);
                    i9 = (int) Math.ceil((double) (f3 / min));
                    i10 = (int) Math.ceil((double) (f4 / min));
                    int i16 = i8 / 8;
                    if (i16 > 0) {
                        i9 /= i16;
                        i10 /= i16;
                    }
                } else {
                    if (imageType2 == ImageHeaderParser.ImageType.PNG || imageType2 == ImageHeaderParser.ImageType.PNG_A) {
                        float f5 = (float) i8;
                        i9 = (int) Math.floor((double) (f3 / f5));
                        d2 = Math.floor((double) (f4 / f5));
                    } else if (imageType2 == ImageHeaderParser.ImageType.WEBP || imageType2 == ImageHeaderParser.ImageType.WEBP_A) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            float f6 = (float) i8;
                            i9 = Math.round(f3 / f6);
                            i10 = Math.round(f4 / f6);
                        } else {
                            float f7 = (float) i8;
                            i9 = (int) Math.floor((double) (f3 / f7));
                            d2 = Math.floor((double) (f4 / f7));
                        }
                    } else if (i12 % i8 == 0 && i13 % i8 == 0) {
                        i9 = i12 / i8;
                        i10 = i13 / i8;
                    } else {
                        int[] b2 = b(inputStream, options2, aVar, eVar);
                        int i17 = b2[0];
                        i10 = b2[1];
                        i9 = i17;
                    }
                    i10 = (int) d2;
                }
                double b3 = (double) downsampleStrategy2.b(i9, i10, i14, i15);
                if (Build.VERSION.SDK_INT >= 19) {
                    options2.inTargetDensity = a(b3);
                    options2.inDensity = b(b3);
                }
                if (b(options)) {
                    options2.inScaled = true;
                } else {
                    options2.inTargetDensity = 0;
                    options2.inDensity = 0;
                }
                String str5 = str3;
                if (Log.isLoggable(str5, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Calculate scaling, source: [");
                    sb.append(i12);
                    String str6 = str4;
                    sb.append(str6);
                    sb.append(i13);
                    sb.append("], target: [");
                    sb.append(i14);
                    sb.append(str6);
                    sb.append(i15);
                    sb.append("], power of two scaled: [");
                    sb.append(i9);
                    sb.append(str6);
                    sb.append(i10);
                    sb.append("], exact scale factor: ");
                    sb.append(f2);
                    sb.append(", power of 2 sample size: ");
                    sb.append(i8);
                    sb.append(", adjusted scale factor: ");
                    sb.append(b3);
                    sb.append(", target density: ");
                    sb.append(options2.inTargetDensity);
                    sb.append(", density: ");
                    sb.append(options2.inDensity);
                    Log.v(str5, sb.toString());
                }
                return;
            }
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        String str7 = "x";
        throw new IllegalArgumentException("Cannot scale with factor: " + f2 + " from: " + downsampleStrategy2 + ", source: [" + i12 + str7 + i13 + "], target: [" + i14 + str7 + i15 + "]");
    }

    public static int a(double d2) {
        int b2 = b(d2);
        double d3 = (double) b2;
        Double.isNaN(d3);
        int c2 = c(d3 * d2);
        double d4 = (double) (((float) c2) / ((float) b2));
        Double.isNaN(d4);
        double d5 = (double) c2;
        Double.isNaN(d5);
        return c((d2 / d4) * d5);
    }

    public final boolean a(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f4173g.contains(imageType);
    }

    public final void a(InputStream inputStream, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i2, int i3) {
        if (!this.m.a(i2, i3, options, decodeFormat, z, z2)) {
            if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                return;
            }
            boolean z3 = false;
            try {
                z3 = c.b.a.c.b.b(this.f4178l, inputStream, this.f4177k).hasAlpha();
            } catch (IOException e2) {
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e2);
                }
            }
            options.inPreferredConfig = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            if (options.inPreferredConfig == Bitmap.Config.RGB_565) {
                options.inDither = true;
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:23|24) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        throw r1;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x005d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap a(java.io.InputStream r6, android.graphics.BitmapFactory.Options r7, c.b.a.c.d.a.k.a r8, c.b.a.c.b.a.e r9) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r7.inJustDecodeBounds
            if (r1 == 0) goto L_0x000c
            r1 = 10485760(0xa00000, float:1.469368E-38)
            r6.mark(r1)
            goto L_0x000f
        L_0x000c:
            r8.a()
        L_0x000f:
            int r1 = r7.outWidth
            int r2 = r7.outHeight
            java.lang.String r3 = r7.outMimeType
            java.util.concurrent.locks.Lock r4 = c.b.a.c.d.a.v.a()
            r4.lock()
            r4 = 0
            android.graphics.Bitmap r8 = android.graphics.BitmapFactory.decodeStream(r6, r4, r7)     // Catch:{ IllegalArgumentException -> 0x0032 }
            java.util.concurrent.locks.Lock r9 = c.b.a.c.d.a.v.a()
            r9.unlock()
            boolean r7 = r7.inJustDecodeBounds
            if (r7 == 0) goto L_0x002f
            r6.reset()
        L_0x002f:
            return r8
        L_0x0030:
            r6 = move-exception
            goto L_0x005f
        L_0x0032:
            r5 = move-exception
            java.io.IOException r1 = a((java.lang.IllegalArgumentException) r5, (int) r1, (int) r2, (java.lang.String) r3, (android.graphics.BitmapFactory.Options) r7)     // Catch:{ all -> 0x0030 }
            r2 = 3
            boolean r2 = android.util.Log.isLoggable(r0, r2)     // Catch:{ all -> 0x0030 }
            if (r2 == 0) goto L_0x0043
            java.lang.String r2 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r2, r1)     // Catch:{ all -> 0x0030 }
        L_0x0043:
            android.graphics.Bitmap r0 = r7.inBitmap     // Catch:{ all -> 0x0030 }
            if (r0 == 0) goto L_0x005e
            r6.reset()     // Catch:{ IOException -> 0x005d }
            android.graphics.Bitmap r0 = r7.inBitmap     // Catch:{ IOException -> 0x005d }
            r9.a((android.graphics.Bitmap) r0)     // Catch:{ IOException -> 0x005d }
            r7.inBitmap = r4     // Catch:{ IOException -> 0x005d }
            android.graphics.Bitmap r6 = a((java.io.InputStream) r6, (android.graphics.BitmapFactory.Options) r7, (c.b.a.c.d.a.k.a) r8, (c.b.a.c.b.a.e) r9)     // Catch:{ IOException -> 0x005d }
            java.util.concurrent.locks.Lock r7 = c.b.a.c.d.a.v.a()
            r7.unlock()
            return r6
        L_0x005d:
            throw r1     // Catch:{ all -> 0x0030 }
        L_0x005e:
            throw r1     // Catch:{ all -> 0x0030 }
        L_0x005f:
            java.util.concurrent.locks.Lock r7 = c.b.a.c.d.a.v.a()
            r7.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.d.a.k.a(java.io.InputStream, android.graphics.BitmapFactory$Options, c.b.a.c.d.a.k$a, c.b.a.c.b.a.e):android.graphics.Bitmap");
    }

    public static void a(int i2, int i3, String str, BitmapFactory.Options options, Bitmap bitmap, int i4, int i5, long j2) {
        Log.v("Downsampler", "Decoded " + a(bitmap) + " from [" + i2 + "x" + i3 + "] " + str + " with inBitmap " + a(options) + " for [" + i4 + "x" + i5 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c.b.a.i.e.a(j2));
    }

    public static String a(BitmapFactory.Options options) {
        return a(options.inBitmap);
    }

    @TargetApi(19)
    public static String a(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    public static IOException a(IllegalArgumentException illegalArgumentException, int i2, int i3, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + a(options), illegalArgumentException);
    }

    @TargetApi(26)
    public static void a(BitmapFactory.Options options, c.b.a.c.b.a.e eVar, int i2, int i3) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            config = options.outConfig;
        } else {
            return;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = eVar.b(i2, i3, config);
    }

    public static synchronized BitmapFactory.Options a() {
        BitmapFactory.Options poll;
        synchronized (k.class) {
            synchronized (f4174h) {
                poll = f4174h.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                d(poll);
            }
        }
        return poll;
    }
}
