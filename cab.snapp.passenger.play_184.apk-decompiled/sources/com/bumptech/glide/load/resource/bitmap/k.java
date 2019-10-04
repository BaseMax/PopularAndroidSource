package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
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

public final class k {
    public static final f<Boolean> ALLOW_HARDWARE_CONFIG = f.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);
    public static final f<DecodeFormat> DECODE_FORMAT = f.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
    @Deprecated
    public static final f<DownsampleStrategy> DOWNSAMPLE_STRATEGY = DownsampleStrategy.OPTION;
    public static final f<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = f.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f2351a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"image/vnd.wap.wbmp", "image/x-ico"})));

    /* renamed from: b  reason: collision with root package name */
    private static final a f2352b = new a() {
        public final void onDecodeComplete(e eVar, Bitmap bitmap) {
        }

        public final void onObtainBounds() {
        }
    };
    private static final Set<ImageHeaderParser.ImageType> c = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
    private static final Queue<BitmapFactory.Options> d = com.bumptech.glide.g.k.createQueue(0);
    private final e e;
    private final DisplayMetrics f;
    private final b g;
    private final List<ImageHeaderParser> h;
    private final p i = p.a();

    public interface a {
        void onDecodeComplete(e eVar, Bitmap bitmap) throws IOException;

        void onObtainBounds();
    }

    public final boolean handles(InputStream inputStream) {
        return true;
    }

    public final boolean handles(ByteBuffer byteBuffer) {
        return true;
    }

    public k(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, e eVar, b bVar) {
        this.h = list;
        this.f = (DisplayMetrics) j.checkNotNull(displayMetrics);
        this.e = (e) j.checkNotNull(eVar);
        this.g = (b) j.checkNotNull(bVar);
    }

    public final v<Bitmap> decode(InputStream inputStream, int i2, int i3, g gVar) throws IOException {
        return decode(inputStream, i2, i3, gVar, f2352b);
    }

    /* JADX WARNING: Removed duplicated region for block: B:123:0x031f A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0344 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x0351 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0354 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x035e A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0369 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x0371 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x037f A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0380 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x0388 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x043f A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x04c0 A[Catch:{ all -> 0x04eb }] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x01d2 A[Catch:{ all -> 0x04ed }] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0205 A[Catch:{ all -> 0x04ed }] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0210 A[Catch:{ all -> 0x04ed }] */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0214 A[Catch:{ all -> 0x04ed }] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x0220 A[Catch:{ all -> 0x04ed }] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0280 A[Catch:{ all -> 0x04ed }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.bumptech.glide.load.b.v<android.graphics.Bitmap> decode(java.io.InputStream r32, int r33, int r34, com.bumptech.glide.load.g r35, com.bumptech.glide.load.resource.bitmap.k.a r36) throws java.io.IOException {
        /*
            r31 = this;
            r1 = r31
            r0 = r32
            r2 = r33
            r3 = r34
            r4 = r35
            r5 = r36
            boolean r6 = r32.markSupported()
            java.lang.String r7 = "You must provide an InputStream that supports mark()"
            com.bumptech.glide.g.j.checkArgument(r6, r7)
            com.bumptech.glide.load.b.a.b r6 = r1.g
            java.lang.Class<byte[]> r7 = byte[].class
            r8 = 65536(0x10000, float:9.18355E-41)
            java.lang.Object r6 = r6.get(r8, r7)
            byte[] r6 = (byte[]) r6
            android.graphics.BitmapFactory$Options r7 = a()
            r7.inTempStorage = r6
            com.bumptech.glide.load.f<com.bumptech.glide.load.DecodeFormat> r8 = DECODE_FORMAT
            java.lang.Object r8 = r4.get(r8)
            com.bumptech.glide.load.DecodeFormat r8 = (com.bumptech.glide.load.DecodeFormat) r8
            com.bumptech.glide.load.f<com.bumptech.glide.load.resource.bitmap.DownsampleStrategy> r9 = com.bumptech.glide.load.resource.bitmap.DownsampleStrategy.OPTION
            java.lang.Object r9 = r4.get(r9)
            com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r9 = (com.bumptech.glide.load.resource.bitmap.DownsampleStrategy) r9
            com.bumptech.glide.load.f<java.lang.Boolean> r10 = FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS
            java.lang.Object r10 = r4.get(r10)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            com.bumptech.glide.load.f<java.lang.Boolean> r11 = ALLOW_HARDWARE_CONFIG
            java.lang.Object r11 = r4.get(r11)
            r12 = 0
            r13 = 1
            if (r11 == 0) goto L_0x005d
            com.bumptech.glide.load.f<java.lang.Boolean> r11 = ALLOW_HARDWARE_CONFIG
            java.lang.Object r4 = r4.get(r11)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L_0x005d
            r4 = 1
            goto L_0x005e
        L_0x005d:
            r4 = 0
        L_0x005e:
            long r14 = com.bumptech.glide.g.f.getLogTime()     // Catch:{ all -> 0x04f6 }
            com.bumptech.glide.load.b.a.e r11 = r1.e     // Catch:{ all -> 0x04f6 }
            int[] r11 = a(r0, r7, r5, r11)     // Catch:{ all -> 0x04f6 }
            r35 = r4
            r4 = r11[r12]     // Catch:{ all -> 0x04f6 }
            r11 = r11[r13]     // Catch:{ all -> 0x04f6 }
            java.lang.String r12 = r7.outMimeType     // Catch:{ all -> 0x04f6 }
            r13 = -1
            if (r4 == r13) goto L_0x007b
            if (r11 != r13) goto L_0x0076
            goto L_0x007b
        L_0x0076:
            r13 = r35
            r16 = r6
            goto L_0x007e
        L_0x007b:
            r16 = r6
            r13 = 0
        L_0x007e:
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r6 = r1.h     // Catch:{ all -> 0x04f1 }
            r17 = r14
            com.bumptech.glide.load.b.a.b r14 = r1.g     // Catch:{ all -> 0x04f1 }
            int r6 = com.bumptech.glide.load.c.getOrientation(r6, r0, r14)     // Catch:{ all -> 0x04f1 }
            int r14 = com.bumptech.glide.load.resource.bitmap.u.getExifOrientationDegrees(r6)     // Catch:{ all -> 0x04f1 }
            boolean r15 = com.bumptech.glide.load.resource.bitmap.u.isExifOrientationRequired(r6)     // Catch:{ all -> 0x04f1 }
            r35 = r6
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r2 != r6) goto L_0x0097
            r2 = r4
        L_0x0097:
            if (r3 != r6) goto L_0x009b
            r6 = r11
            goto L_0x009c
        L_0x009b:
            r6 = r3
        L_0x009c:
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r3 = r1.h     // Catch:{ all -> 0x04f1 }
            r19 = r12
            com.bumptech.glide.load.b.a.b r12 = r1.g     // Catch:{ all -> 0x04f1 }
            com.bumptech.glide.load.ImageHeaderParser$ImageType r3 = com.bumptech.glide.load.c.getType(r3, r0, r12)     // Catch:{ all -> 0x04f1 }
            com.bumptech.glide.load.b.a.e r12 = r1.e     // Catch:{ all -> 0x04f1 }
            r20 = 1065353216(0x3f800000, float:1.0)
            r21 = r10
            java.lang.String r10 = "]"
            r22 = r8
            java.lang.String r8 = ", density: "
            r23 = r15
            java.lang.String r15 = "Downsampler"
            r24 = r13
            java.lang.String r13 = "x"
            if (r4 <= 0) goto L_0x02cb
            if (r11 > 0) goto L_0x00c0
            goto L_0x02cb
        L_0x00c0:
            r1 = 90
            if (r14 == r1) goto L_0x00ce
            r1 = 270(0x10e, float:3.78E-43)
            if (r14 != r1) goto L_0x00c9
            goto L_0x00ce
        L_0x00c9:
            float r1 = r9.getScaleFactor(r4, r11, r2, r6)     // Catch:{ all -> 0x04ed }
            goto L_0x00d2
        L_0x00ce:
            float r1 = r9.getScaleFactor(r11, r4, r2, r6)     // Catch:{ all -> 0x04ed }
        L_0x00d2:
            r14 = 0
            int r14 = (r1 > r14 ? 1 : (r1 == r14 ? 0 : -1))
            if (r14 <= 0) goto L_0x028d
            com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding r10 = r9.getSampleSizeRounding(r4, r11, r2, r6)     // Catch:{ all -> 0x04ed }
            if (r10 == 0) goto L_0x0285
            float r14 = (float) r4
            r25 = r8
            float r8 = r1 * r14
            r26 = r9
            double r8 = (double) r8
            r27 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            java.lang.Double.isNaN(r8)
            double r8 = r8 + r27
            int r8 = (int) r8
            float r9 = (float) r11
            r29 = r13
            float r13 = r1 * r9
            r30 = r6
            double r5 = (double) r13
            java.lang.Double.isNaN(r5)
            double r5 = r5 + r27
            int r5 = (int) r5
            int r6 = r4 / r8
            int r5 = r11 / r5
            com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding r8 = com.bumptech.glide.load.resource.bitmap.DownsampleStrategy.SampleSizeRounding.MEMORY     // Catch:{ all -> 0x04ed }
            if (r10 != r8) goto L_0x0108
            int r5 = java.lang.Math.max(r6, r5)     // Catch:{ all -> 0x04ed }
            goto L_0x010c
        L_0x0108:
            int r5 = java.lang.Math.min(r6, r5)     // Catch:{ all -> 0x04ed }
        L_0x010c:
            int r6 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04ed }
            r8 = 23
            if (r6 > r8) goto L_0x011e
            java.util.Set<java.lang.String> r6 = f2351a     // Catch:{ all -> 0x04ed }
            java.lang.String r8 = r7.outMimeType     // Catch:{ all -> 0x04ed }
            boolean r6 = r6.contains(r8)     // Catch:{ all -> 0x04ed }
            if (r6 == 0) goto L_0x011e
            r13 = 1
            goto L_0x0134
        L_0x011e:
            int r5 = java.lang.Integer.highestOneBit(r5)     // Catch:{ all -> 0x04ed }
            r6 = 1
            int r13 = java.lang.Math.max(r6, r5)     // Catch:{ all -> 0x04ed }
            com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding r5 = com.bumptech.glide.load.resource.bitmap.DownsampleStrategy.SampleSizeRounding.MEMORY     // Catch:{ all -> 0x04ed }
            if (r10 != r5) goto L_0x0134
            float r5 = (float) r13     // Catch:{ all -> 0x04ed }
            float r6 = r20 / r1
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 >= 0) goto L_0x0134
            int r13 = r13 << 1
        L_0x0134:
            r7.inSampleSize = r13     // Catch:{ all -> 0x04ed }
            com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = com.bumptech.glide.load.ImageHeaderParser.ImageType.JPEG     // Catch:{ all -> 0x04ed }
            if (r3 != r5) goto L_0x0160
            r5 = 8
            int r5 = java.lang.Math.min(r13, r5)     // Catch:{ all -> 0x04ed }
            float r5 = (float) r5     // Catch:{ all -> 0x04ed }
            float r14 = r14 / r5
            r6 = r15
            double r14 = (double) r14     // Catch:{ all -> 0x04ed }
            double r14 = java.lang.Math.ceil(r14)     // Catch:{ all -> 0x04ed }
            int r8 = (int) r14     // Catch:{ all -> 0x04ed }
            float r9 = r9 / r5
            double r9 = (double) r9     // Catch:{ all -> 0x04ed }
            double r9 = java.lang.Math.ceil(r9)     // Catch:{ all -> 0x04ed }
            int r5 = (int) r9     // Catch:{ all -> 0x04ed }
            int r9 = r13 / 8
            if (r9 <= 0) goto L_0x0156
            int r8 = r8 / r9
            int r5 = r5 / r9
        L_0x0156:
            r12 = r5
            r10 = r8
            r9 = r26
            r8 = r30
            r5 = r36
            goto L_0x01c7
        L_0x0160:
            r6 = r15
            com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = com.bumptech.glide.load.ImageHeaderParser.ImageType.PNG     // Catch:{ all -> 0x04ed }
            if (r3 == r5) goto L_0x01b1
            com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = com.bumptech.glide.load.ImageHeaderParser.ImageType.PNG_A     // Catch:{ all -> 0x04ed }
            if (r3 != r5) goto L_0x016a
            goto L_0x01b1
        L_0x016a:
            com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = com.bumptech.glide.load.ImageHeaderParser.ImageType.WEBP     // Catch:{ all -> 0x04ed }
            if (r3 == r5) goto L_0x018e
            com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = com.bumptech.glide.load.ImageHeaderParser.ImageType.WEBP_A     // Catch:{ all -> 0x04ed }
            if (r3 != r5) goto L_0x0173
            goto L_0x018e
        L_0x0173:
            int r5 = r4 % r13
            if (r5 != 0) goto L_0x0181
            int r5 = r11 % r13
            if (r5 == 0) goto L_0x017c
            goto L_0x0181
        L_0x017c:
            int r8 = r4 / r13
            int r5 = r11 / r13
            goto L_0x0156
        L_0x0181:
            r5 = r36
            int[] r8 = a(r0, r7, r5, r12)     // Catch:{ all -> 0x04ed }
            r9 = 0
            r10 = r8[r9]     // Catch:{ all -> 0x04ed }
            r9 = 1
            r8 = r8[r9]     // Catch:{ all -> 0x04ed }
            goto L_0x01c2
        L_0x018e:
            r5 = r36
            int r8 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04ed }
            r10 = 24
            if (r8 < r10) goto L_0x01a2
            float r8 = (float) r13     // Catch:{ all -> 0x04ed }
            float r14 = r14 / r8
            int r10 = java.lang.Math.round(r14)     // Catch:{ all -> 0x04ed }
            float r9 = r9 / r8
            int r8 = java.lang.Math.round(r9)     // Catch:{ all -> 0x04ed }
            goto L_0x01c2
        L_0x01a2:
            float r8 = (float) r13     // Catch:{ all -> 0x04ed }
            float r14 = r14 / r8
            double r14 = (double) r14     // Catch:{ all -> 0x04ed }
            double r14 = java.lang.Math.floor(r14)     // Catch:{ all -> 0x04ed }
            int r10 = (int) r14     // Catch:{ all -> 0x04ed }
            float r9 = r9 / r8
            double r8 = (double) r9     // Catch:{ all -> 0x04ed }
            double r8 = java.lang.Math.floor(r8)     // Catch:{ all -> 0x04ed }
            goto L_0x01c1
        L_0x01b1:
            r5 = r36
            float r8 = (float) r13     // Catch:{ all -> 0x04ed }
            float r14 = r14 / r8
            double r14 = (double) r14     // Catch:{ all -> 0x04ed }
            double r14 = java.lang.Math.floor(r14)     // Catch:{ all -> 0x04ed }
            int r10 = (int) r14     // Catch:{ all -> 0x04ed }
            float r9 = r9 / r8
            double r8 = (double) r9     // Catch:{ all -> 0x04ed }
            double r8 = java.lang.Math.floor(r8)     // Catch:{ all -> 0x04ed }
        L_0x01c1:
            int r8 = (int) r8     // Catch:{ all -> 0x04ed }
        L_0x01c2:
            r12 = r8
            r9 = r26
            r8 = r30
        L_0x01c7:
            float r9 = r9.getScaleFactor(r10, r12, r2, r8)     // Catch:{ all -> 0x04ed }
            double r14 = (double) r9     // Catch:{ all -> 0x04ed }
            int r9 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04ed }
            r5 = 19
            if (r9 < r5) goto L_0x0205
            int r5 = a((double) r14)     // Catch:{ all -> 0x04ed }
            r26 = r1
            double r0 = (double) r5
            java.lang.Double.isNaN(r0)
            java.lang.Double.isNaN(r14)
            double r0 = r0 * r14
            double r0 = r0 + r27
            int r0 = (int) r0
            float r1 = (float) r0
            float r5 = (float) r5
            float r1 = r1 / r5
            r30 = r12
            r5 = r13
            double r12 = (double) r1
            java.lang.Double.isNaN(r14)
            java.lang.Double.isNaN(r12)
            double r12 = r14 / r12
            double r0 = (double) r0
            java.lang.Double.isNaN(r0)
            double r12 = r12 * r0
            double r12 = r12 + r27
            int r0 = (int) r12
            r7.inTargetDensity = r0     // Catch:{ all -> 0x04ed }
            int r0 = a((double) r14)     // Catch:{ all -> 0x04ed }
            r7.inDensity = r0     // Catch:{ all -> 0x04ed }
            goto L_0x020a
        L_0x0205:
            r26 = r1
            r30 = r12
            r5 = r13
        L_0x020a:
            boolean r0 = a((android.graphics.BitmapFactory.Options) r7)     // Catch:{ all -> 0x04ed }
            if (r0 == 0) goto L_0x0214
            r0 = 1
            r7.inScaled = r0     // Catch:{ all -> 0x04ed }
            goto L_0x0219
        L_0x0214:
            r0 = 0
            r7.inTargetDensity = r0     // Catch:{ all -> 0x04ed }
            r7.inDensity = r0     // Catch:{ all -> 0x04ed }
        L_0x0219:
            r0 = 2
            boolean r1 = android.util.Log.isLoggable(r6, r0)     // Catch:{ all -> 0x04ed }
            if (r1 == 0) goto L_0x0280
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x04ed }
            java.lang.String r1 = "Calculate scaling, source: ["
            r0.<init>(r1)     // Catch:{ all -> 0x04ed }
            r0.append(r4)     // Catch:{ all -> 0x04ed }
            r1 = r29
            r0.append(r1)     // Catch:{ all -> 0x04ed }
            r0.append(r11)     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = "], target: ["
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            r0.append(r2)     // Catch:{ all -> 0x04ed }
            r0.append(r1)     // Catch:{ all -> 0x04ed }
            r0.append(r8)     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = "], power of two scaled: ["
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            r0.append(r10)     // Catch:{ all -> 0x04ed }
            r0.append(r1)     // Catch:{ all -> 0x04ed }
            r9 = r30
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = "], exact scale factor: "
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            r12 = r26
            r0.append(r12)     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = ", power of 2 sample size: "
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            r0.append(r5)     // Catch:{ all -> 0x04ed }
            java.lang.String r5 = ", adjusted scale factor: "
            r0.append(r5)     // Catch:{ all -> 0x04ed }
            r0.append(r14)     // Catch:{ all -> 0x04ed }
            java.lang.String r5 = ", target density: "
            r0.append(r5)     // Catch:{ all -> 0x04ed }
            int r5 = r7.inTargetDensity     // Catch:{ all -> 0x04ed }
            r0.append(r5)     // Catch:{ all -> 0x04ed }
            r5 = r25
            r0.append(r5)     // Catch:{ all -> 0x04ed }
            int r9 = r7.inDensity     // Catch:{ all -> 0x04ed }
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            goto L_0x02f1
        L_0x0280:
            r5 = r25
            r1 = r29
            goto L_0x02f1
        L_0x0285:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x04ed }
            java.lang.String r1 = "Cannot round with null rounding"
            r0.<init>(r1)     // Catch:{ all -> 0x04ed }
            throw r0     // Catch:{ all -> 0x04ed }
        L_0x028d:
            r12 = r1
            r8 = r6
            r1 = r13
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x04ed }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x04ed }
            java.lang.String r5 = "Cannot scale with factor: "
            r3.<init>(r5)     // Catch:{ all -> 0x04ed }
            r3.append(r12)     // Catch:{ all -> 0x04ed }
            java.lang.String r5 = " from: "
            r3.append(r5)     // Catch:{ all -> 0x04ed }
            r3.append(r9)     // Catch:{ all -> 0x04ed }
            java.lang.String r5 = ", source: ["
            r3.append(r5)     // Catch:{ all -> 0x04ed }
            r3.append(r4)     // Catch:{ all -> 0x04ed }
            r3.append(r1)     // Catch:{ all -> 0x04ed }
            r3.append(r11)     // Catch:{ all -> 0x04ed }
            java.lang.String r4 = "], target: ["
            r3.append(r4)     // Catch:{ all -> 0x04ed }
            r3.append(r2)     // Catch:{ all -> 0x04ed }
            r3.append(r1)     // Catch:{ all -> 0x04ed }
            r3.append(r8)     // Catch:{ all -> 0x04ed }
            r3.append(r10)     // Catch:{ all -> 0x04ed }
            java.lang.String r1 = r3.toString()     // Catch:{ all -> 0x04ed }
            r0.<init>(r1)     // Catch:{ all -> 0x04ed }
            throw r0     // Catch:{ all -> 0x04ed }
        L_0x02cb:
            r5 = r8
            r1 = r13
            r8 = r6
            r6 = r15
            r0 = 3
            boolean r9 = android.util.Log.isLoggable(r6, r0)     // Catch:{ all -> 0x04ed }
            if (r9 == 0) goto L_0x02f1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = "Unable to determine dimensions for: "
            r0.<init>(r9)     // Catch:{ all -> 0x04ed }
            r0.append(r3)     // Catch:{ all -> 0x04ed }
            java.lang.String r9 = " with target ["
            r0.append(r9)     // Catch:{ all -> 0x04ed }
            r0.append(r2)     // Catch:{ all -> 0x04ed }
            r0.append(r1)     // Catch:{ all -> 0x04ed }
            r0.append(r8)     // Catch:{ all -> 0x04ed }
            r0.append(r10)     // Catch:{ all -> 0x04ed }
        L_0x02f1:
            r9 = r31
            com.bumptech.glide.load.resource.bitmap.p r0 = r9.i     // Catch:{ all -> 0x04eb }
            r10 = 26
            if (r24 == 0) goto L_0x031b
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04eb }
            if (r12 < r10) goto L_0x031b
            if (r23 == 0) goto L_0x0300
            goto L_0x031b
        L_0x0300:
            r12 = 128(0x80, float:1.794E-43)
            if (r2 < r12) goto L_0x030e
            if (r8 < r12) goto L_0x030e
            boolean r0 = r0.b()     // Catch:{ all -> 0x04eb }
            if (r0 == 0) goto L_0x030e
            r12 = 1
            goto L_0x030f
        L_0x030e:
            r12 = 0
        L_0x030f:
            if (r12 == 0) goto L_0x0319
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.HARDWARE     // Catch:{ all -> 0x04eb }
            r7.inPreferredConfig = r0     // Catch:{ all -> 0x04eb }
            r0 = 0
            r7.inMutable = r0     // Catch:{ all -> 0x04eb }
            goto L_0x031d
        L_0x0319:
            r0 = 0
            goto L_0x031d
        L_0x031b:
            r0 = 0
            r12 = 0
        L_0x031d:
            if (r12 != 0) goto L_0x0369
            com.bumptech.glide.load.DecodeFormat r12 = com.bumptech.glide.load.DecodeFormat.PREFER_ARGB_8888     // Catch:{ all -> 0x04eb }
            r13 = r22
            if (r13 == r12) goto L_0x0362
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04eb }
            r14 = 16
            if (r12 != r14) goto L_0x032c
            goto L_0x0362
        L_0x032c:
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r12 = r9.h     // Catch:{ IOException -> 0x033b }
            com.bumptech.glide.load.b.a.b r14 = r9.g     // Catch:{ IOException -> 0x033b }
            r15 = r32
            com.bumptech.glide.load.ImageHeaderParser$ImageType r12 = com.bumptech.glide.load.c.getType(r12, r15, r14)     // Catch:{ IOException -> 0x033d }
            boolean r12 = r12.hasAlpha()     // Catch:{ IOException -> 0x033d }
            goto L_0x034f
        L_0x033b:
            r15 = r32
        L_0x033d:
            r12 = 3
            boolean r12 = android.util.Log.isLoggable(r6, r12)     // Catch:{ all -> 0x04eb }
            if (r12 == 0) goto L_0x034e
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x04eb }
            java.lang.String r14 = "Cannot determine whether the image has alpha or not from header, format "
            r12.<init>(r14)     // Catch:{ all -> 0x04eb }
            r12.append(r13)     // Catch:{ all -> 0x04eb }
        L_0x034e:
            r12 = 0
        L_0x034f:
            if (r12 == 0) goto L_0x0354
            android.graphics.Bitmap$Config r12 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ all -> 0x04eb }
            goto L_0x0356
        L_0x0354:
            android.graphics.Bitmap$Config r12 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ all -> 0x04eb }
        L_0x0356:
            r7.inPreferredConfig = r12     // Catch:{ all -> 0x04eb }
            android.graphics.Bitmap$Config r12 = r7.inPreferredConfig     // Catch:{ all -> 0x04eb }
            android.graphics.Bitmap$Config r13 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ all -> 0x04eb }
            if (r12 != r13) goto L_0x036b
            r12 = 1
            r7.inDither = r12     // Catch:{ all -> 0x04eb }
            goto L_0x036b
        L_0x0362:
            r15 = r32
            android.graphics.Bitmap$Config r12 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ all -> 0x04eb }
            r7.inPreferredConfig = r12     // Catch:{ all -> 0x04eb }
            goto L_0x036b
        L_0x0369:
            r15 = r32
        L_0x036b:
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04eb }
            r13 = 19
            if (r12 < r13) goto L_0x0372
            r0 = 1
        L_0x0372:
            int r12 = r7.inSampleSize     // Catch:{ all -> 0x04eb }
            r13 = 1
            if (r12 == r13) goto L_0x0379
            if (r0 == 0) goto L_0x042b
        L_0x0379:
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04eb }
            r14 = 19
            if (r12 < r14) goto L_0x0380
            goto L_0x0386
        L_0x0380:
            java.util.Set<com.bumptech.glide.load.ImageHeaderParser$ImageType> r12 = c     // Catch:{ all -> 0x04eb }
            boolean r13 = r12.contains(r3)     // Catch:{ all -> 0x04eb }
        L_0x0386:
            if (r13 == 0) goto L_0x042b
            if (r4 < 0) goto L_0x0392
            if (r11 < 0) goto L_0x0392
            if (r21 == 0) goto L_0x0392
            if (r0 == 0) goto L_0x0392
            goto L_0x040e
        L_0x0392:
            boolean r0 = a((android.graphics.BitmapFactory.Options) r7)     // Catch:{ all -> 0x04eb }
            if (r0 == 0) goto L_0x03a3
            int r0 = r7.inTargetDensity     // Catch:{ all -> 0x04eb }
            float r0 = (float) r0     // Catch:{ all -> 0x04eb }
            int r2 = r7.inDensity     // Catch:{ all -> 0x04eb }
            float r2 = (float) r2     // Catch:{ all -> 0x04eb }
            float r20 = r0 / r2
            r0 = r20
            goto L_0x03a5
        L_0x03a3:
            r0 = 1065353216(0x3f800000, float:1.0)
        L_0x03a5:
            int r2 = r7.inSampleSize     // Catch:{ all -> 0x04eb }
            float r3 = (float) r4     // Catch:{ all -> 0x04eb }
            float r8 = (float) r2     // Catch:{ all -> 0x04eb }
            float r3 = r3 / r8
            double r12 = (double) r3     // Catch:{ all -> 0x04eb }
            double r12 = java.lang.Math.ceil(r12)     // Catch:{ all -> 0x04eb }
            int r3 = (int) r12     // Catch:{ all -> 0x04eb }
            float r12 = (float) r11     // Catch:{ all -> 0x04eb }
            float r12 = r12 / r8
            double r12 = (double) r12     // Catch:{ all -> 0x04eb }
            double r12 = java.lang.Math.ceil(r12)     // Catch:{ all -> 0x04eb }
            int r8 = (int) r12     // Catch:{ all -> 0x04eb }
            float r3 = (float) r3     // Catch:{ all -> 0x04eb }
            float r3 = r3 * r0
            int r3 = java.lang.Math.round(r3)     // Catch:{ all -> 0x04eb }
            float r8 = (float) r8     // Catch:{ all -> 0x04eb }
            float r8 = r8 * r0
            int r8 = java.lang.Math.round(r8)     // Catch:{ all -> 0x04eb }
            r12 = 2
            boolean r13 = android.util.Log.isLoggable(r6, r12)     // Catch:{ all -> 0x04eb }
            if (r13 == 0) goto L_0x040d
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x04eb }
            java.lang.String r13 = "Calculated target ["
            r12.<init>(r13)     // Catch:{ all -> 0x04eb }
            r12.append(r3)     // Catch:{ all -> 0x04eb }
            r12.append(r1)     // Catch:{ all -> 0x04eb }
            r12.append(r8)     // Catch:{ all -> 0x04eb }
            java.lang.String r13 = "] for source ["
            r12.append(r13)     // Catch:{ all -> 0x04eb }
            r12.append(r4)     // Catch:{ all -> 0x04eb }
            r12.append(r1)     // Catch:{ all -> 0x04eb }
            r12.append(r11)     // Catch:{ all -> 0x04eb }
            java.lang.String r13 = "], sampleSize: "
            r12.append(r13)     // Catch:{ all -> 0x04eb }
            r12.append(r2)     // Catch:{ all -> 0x04eb }
            java.lang.String r2 = ", targetDensity: "
            r12.append(r2)     // Catch:{ all -> 0x04eb }
            int r2 = r7.inTargetDensity     // Catch:{ all -> 0x04eb }
            r12.append(r2)     // Catch:{ all -> 0x04eb }
            r12.append(r5)     // Catch:{ all -> 0x04eb }
            int r2 = r7.inDensity     // Catch:{ all -> 0x04eb }
            r12.append(r2)     // Catch:{ all -> 0x04eb }
            java.lang.String r2 = ", density multiplier: "
            r12.append(r2)     // Catch:{ all -> 0x04eb }
            r12.append(r0)     // Catch:{ all -> 0x04eb }
        L_0x040d:
            r2 = r3
        L_0x040e:
            if (r2 <= 0) goto L_0x042b
            if (r8 <= 0) goto L_0x042b
            com.bumptech.glide.load.b.a.e r0 = r9.e     // Catch:{ all -> 0x04eb }
            r3 = 0
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x04eb }
            if (r12 < r10) goto L_0x0421
            android.graphics.Bitmap$Config r3 = r7.inPreferredConfig     // Catch:{ all -> 0x04eb }
            android.graphics.Bitmap$Config r10 = android.graphics.Bitmap.Config.HARDWARE     // Catch:{ all -> 0x04eb }
            if (r3 == r10) goto L_0x042b
            android.graphics.Bitmap$Config r3 = r7.outConfig     // Catch:{ all -> 0x04eb }
        L_0x0421:
            if (r3 != 0) goto L_0x0425
            android.graphics.Bitmap$Config r3 = r7.inPreferredConfig     // Catch:{ all -> 0x04eb }
        L_0x0425:
            android.graphics.Bitmap r0 = r0.getDirty(r2, r8, r3)     // Catch:{ all -> 0x04eb }
            r7.inBitmap = r0     // Catch:{ all -> 0x04eb }
        L_0x042b:
            com.bumptech.glide.load.b.a.e r0 = r9.e     // Catch:{ all -> 0x04eb }
            r2 = r36
            android.graphics.Bitmap r0 = b(r15, r7, r2, r0)     // Catch:{ all -> 0x04eb }
            com.bumptech.glide.load.b.a.e r3 = r9.e     // Catch:{ all -> 0x04eb }
            r2.onDecodeComplete(r3, r0)     // Catch:{ all -> 0x04eb }
            r2 = 2
            boolean r2 = android.util.Log.isLoggable(r6, r2)     // Catch:{ all -> 0x04eb }
            if (r2 == 0) goto L_0x04bd
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = "Decoded "
            r2.<init>(r3)     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = a((android.graphics.Bitmap) r0)     // Catch:{ all -> 0x04eb }
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = " from ["
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            r2.append(r4)     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            r2.append(r11)     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = "] "
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            r3 = r19
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = " with inBitmap "
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            android.graphics.Bitmap r3 = r7.inBitmap     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = a((android.graphics.Bitmap) r3)     // Catch:{ all -> 0x04eb }
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            java.lang.String r3 = " for ["
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            r3 = r33
            r2.append(r3)     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            r1 = r34
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            java.lang.String r1 = "], sample size: "
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            int r1 = r7.inSampleSize     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            r2.append(r5)     // Catch:{ all -> 0x04eb }
            int r1 = r7.inDensity     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            java.lang.String r1 = ", target density: "
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            int r1 = r7.inTargetDensity     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            java.lang.String r1 = ", thread: "
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x04eb }
            java.lang.String r1 = r1.getName()     // Catch:{ all -> 0x04eb }
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            java.lang.String r1 = ", duration: "
            r2.append(r1)     // Catch:{ all -> 0x04eb }
            double r3 = com.bumptech.glide.g.f.getElapsedMillis(r17)     // Catch:{ all -> 0x04eb }
            r2.append(r3)     // Catch:{ all -> 0x04eb }
        L_0x04bd:
            r1 = 0
            if (r0 == 0) goto L_0x04da
            android.util.DisplayMetrics r1 = r9.f     // Catch:{ all -> 0x04eb }
            int r1 = r1.densityDpi     // Catch:{ all -> 0x04eb }
            r0.setDensity(r1)     // Catch:{ all -> 0x04eb }
            com.bumptech.glide.load.b.a.e r1 = r9.e     // Catch:{ all -> 0x04eb }
            r2 = r35
            android.graphics.Bitmap r1 = com.bumptech.glide.load.resource.bitmap.u.rotateImageExif(r1, r0, r2)     // Catch:{ all -> 0x04eb }
            boolean r2 = r0.equals(r1)     // Catch:{ all -> 0x04eb }
            if (r2 != 0) goto L_0x04da
            com.bumptech.glide.load.b.a.e r2 = r9.e     // Catch:{ all -> 0x04eb }
            r2.put(r0)     // Catch:{ all -> 0x04eb }
        L_0x04da:
            com.bumptech.glide.load.b.a.e r0 = r9.e     // Catch:{ all -> 0x04eb }
            com.bumptech.glide.load.resource.bitmap.d r0 = com.bumptech.glide.load.resource.bitmap.d.obtain(r1, r0)     // Catch:{ all -> 0x04eb }
            b(r7)
            com.bumptech.glide.load.b.a.b r1 = r9.g
            r6 = r16
            r1.put(r6)
            return r0
        L_0x04eb:
            r0 = move-exception
            goto L_0x04f3
        L_0x04ed:
            r0 = move-exception
            r9 = r31
            goto L_0x04f3
        L_0x04f1:
            r0 = move-exception
            r9 = r1
        L_0x04f3:
            r6 = r16
            goto L_0x04f8
        L_0x04f6:
            r0 = move-exception
            r9 = r1
        L_0x04f8:
            b(r7)
            com.bumptech.glide.load.b.a.b r1 = r9.g
            r1.put(r6)
            goto L_0x0502
        L_0x0501:
            throw r0
        L_0x0502:
            goto L_0x0501
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.k.decode(java.io.InputStream, int, int, com.bumptech.glide.load.g, com.bumptech.glide.load.resource.bitmap.k$a):com.bumptech.glide.load.b.v");
    }

    private static int a(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    private static int[] a(InputStream inputStream, BitmapFactory.Options options, a aVar, e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        b(inputStream, options, aVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:20|21) */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        throw r5;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:20:0x007c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Bitmap b(java.io.InputStream r8, android.graphics.BitmapFactory.Options r9, com.bumptech.glide.load.resource.bitmap.k.a r10, com.bumptech.glide.load.b.a.e r11) throws java.io.IOException {
        /*
            boolean r0 = r9.inJustDecodeBounds
            if (r0 == 0) goto L_0x000a
            r0 = 10485760(0xa00000, float:1.469368E-38)
            r8.mark(r0)
            goto L_0x000d
        L_0x000a:
            r10.onObtainBounds()
        L_0x000d:
            int r0 = r9.outWidth
            int r1 = r9.outHeight
            java.lang.String r2 = r9.outMimeType
            java.util.concurrent.locks.Lock r3 = com.bumptech.glide.load.resource.bitmap.u.getBitmapDrawableLock()
            r3.lock()
            r3 = 0
            android.graphics.Bitmap r10 = android.graphics.BitmapFactory.decodeStream(r8, r3, r9)     // Catch:{ IllegalArgumentException -> 0x0030 }
            java.util.concurrent.locks.Lock r11 = com.bumptech.glide.load.resource.bitmap.u.getBitmapDrawableLock()
            r11.unlock()
            boolean r9 = r9.inJustDecodeBounds
            if (r9 == 0) goto L_0x002d
            r8.reset()
        L_0x002d:
            return r10
        L_0x002e:
            r8 = move-exception
            goto L_0x007e
        L_0x0030:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch:{ all -> 0x002e }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x002e }
            java.lang.String r7 = "Exception decoding bitmap, outWidth: "
            r6.<init>(r7)     // Catch:{ all -> 0x002e }
            r6.append(r0)     // Catch:{ all -> 0x002e }
            java.lang.String r0 = ", outHeight: "
            r6.append(r0)     // Catch:{ all -> 0x002e }
            r6.append(r1)     // Catch:{ all -> 0x002e }
            java.lang.String r0 = ", outMimeType: "
            r6.append(r0)     // Catch:{ all -> 0x002e }
            r6.append(r2)     // Catch:{ all -> 0x002e }
            java.lang.String r0 = ", inBitmap: "
            r6.append(r0)     // Catch:{ all -> 0x002e }
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch:{ all -> 0x002e }
            java.lang.String r0 = a((android.graphics.Bitmap) r0)     // Catch:{ all -> 0x002e }
            r6.append(r0)     // Catch:{ all -> 0x002e }
            java.lang.String r0 = r6.toString()     // Catch:{ all -> 0x002e }
            r5.<init>(r0, r4)     // Catch:{ all -> 0x002e }
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch:{ all -> 0x002e }
            if (r0 == 0) goto L_0x007d
            r8.reset()     // Catch:{ IOException -> 0x007c }
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch:{ IOException -> 0x007c }
            r11.put(r0)     // Catch:{ IOException -> 0x007c }
            r9.inBitmap = r3     // Catch:{ IOException -> 0x007c }
            android.graphics.Bitmap r8 = b(r8, r9, r10, r11)     // Catch:{ IOException -> 0x007c }
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.resource.bitmap.u.getBitmapDrawableLock()
            r9.unlock()
            return r8
        L_0x007c:
            throw r5     // Catch:{ all -> 0x002e }
        L_0x007d:
            throw r5     // Catch:{ all -> 0x002e }
        L_0x007e:
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.resource.bitmap.u.getBitmapDrawableLock()
            r9.unlock()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.k.b(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.k$a, com.bumptech.glide.load.b.a.e):android.graphics.Bitmap");
    }

    private static boolean a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    private static String a(Bitmap bitmap) {
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

    private static synchronized BitmapFactory.Options a() {
        BitmapFactory.Options poll;
        synchronized (k.class) {
            synchronized (d) {
                poll = d.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                c(poll);
            }
        }
        return poll;
    }

    private static void b(BitmapFactory.Options options) {
        c(options);
        synchronized (d) {
            d.offer(options);
        }
    }

    private static void c(BitmapFactory.Options options) {
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
}
