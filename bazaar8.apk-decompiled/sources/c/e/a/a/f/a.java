package c.e.a.a.f;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;

/* compiled from: MediaCodecInfo */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f8333a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8334b;

    /* renamed from: c  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f8335c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f8336d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f8337e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f8338f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f8339g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f8340h;

    public a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        C0737e.a(str);
        this.f8333a = str;
        this.f8334b = str2;
        this.f8335c = codecCapabilities;
        this.f8339g = z;
        boolean z4 = true;
        this.f8336d = !z2 && codecCapabilities != null && a(codecCapabilities);
        this.f8337e = codecCapabilities != null && e(codecCapabilities);
        if (!z3 && (codecCapabilities == null || !c(codecCapabilities))) {
            z4 = false;
        }
        this.f8338f = z4;
        this.f8340h = s.l(str2);
    }

    public static a a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        a aVar = new a(str, str2, codecCapabilities, false, z, z2);
        return aVar;
    }

    public static a d(String str) {
        a aVar = new a(str, null, null, true, false, false);
        return aVar;
    }

    public static boolean e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return I.f9565a >= 21 && f(codecCapabilities);
    }

    @TargetApi(21)
    public static boolean f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    public boolean b(Format format) {
        if (this.f8340h) {
            return this.f8336d;
        }
        Pair<Integer, Integer> b2 = MediaCodecUtil.b(format.f12511f);
        return b2 != null && ((Integer) b2.first).intValue() == 42;
    }

    public final void c(String str) {
        p.a("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f8333a + ", " + this.f8334b + "] [" + I.f9569e + "]");
    }

    public String toString() {
        return this.f8333a;
    }

    public static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return I.f9565a >= 21 && d(codecCapabilities);
    }

    @TargetApi(21)
    public static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    public MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f8335c;
        if (codecCapabilities != null) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = codecCapabilities.profileLevels;
            if (codecProfileLevelArr != null) {
                return codecProfileLevelArr;
            }
        }
        return new MediaCodecInfo.CodecProfileLevel[0];
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x006a, code lost:
        if (a(r7) == false) goto L_0x006d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(com.google.android.exoplayer2.Format r7) {
        /*
            r6 = this;
            java.lang.String r0 = r7.f12511f
            boolean r0 = r6.a((java.lang.String) r0)
            r1 = 0
            if (r0 != 0) goto L_0x000a
            return r1
        L_0x000a:
            boolean r0 = r6.f8340h
            r2 = 21
            r3 = 1
            if (r0 == 0) goto L_0x0053
            int r0 = r7.n
            if (r0 <= 0) goto L_0x0052
            int r4 = r7.o
            if (r4 > 0) goto L_0x001a
            goto L_0x0052
        L_0x001a:
            int r5 = c.e.a.a.o.I.f9565a
            if (r5 < r2) goto L_0x0026
            float r7 = r7.p
            double r1 = (double) r7
            boolean r7 = r6.a((int) r0, (int) r4, (double) r1)
            return r7
        L_0x0026:
            int r0 = r0 * r4
            int r2 = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b()
            if (r0 > r2) goto L_0x002f
            r1 = 1
        L_0x002f:
            if (r1 != 0) goto L_0x0051
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "legacyFrameSize, "
            r0.append(r2)
            int r2 = r7.n
            r0.append(r2)
            java.lang.String r2 = "x"
            r0.append(r2)
            int r7 = r7.o
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.c((java.lang.String) r7)
        L_0x0051:
            return r1
        L_0x0052:
            return r3
        L_0x0053:
            int r0 = c.e.a.a.o.I.f9565a
            if (r0 < r2) goto L_0x006c
            int r0 = r7.w
            r2 = -1
            if (r0 == r2) goto L_0x0062
            boolean r0 = r6.b((int) r0)
            if (r0 == 0) goto L_0x006d
        L_0x0062:
            int r7 = r7.v
            if (r7 == r2) goto L_0x006c
            boolean r7 = r6.a((int) r7)
            if (r7 == 0) goto L_0x006d
        L_0x006c:
            r1 = 1
        L_0x006d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.f.a.a(com.google.android.exoplayer2.Format):boolean");
    }

    @TargetApi(21)
    public boolean b(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f8335c;
        if (codecCapabilities == null) {
            c("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i2)) {
            return true;
        } else {
            c("sampleRate.support, " + i2);
            return false;
        }
    }

    public final void b(String str) {
        p.a("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f8333a + ", " + this.f8334b + "] [" + I.f9569e + "]");
    }

    @TargetApi(19)
    public static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public boolean a(String str) {
        if (str == null || this.f8334b == null) {
            return true;
        }
        String d2 = s.d(str);
        if (d2 == null) {
            return true;
        }
        if (!this.f8334b.equals(d2)) {
            c("codec.mime " + str + ", " + d2);
            return false;
        }
        Pair<Integer, Integer> b2 = MediaCodecUtil.b(str);
        if (b2 == null) {
            return true;
        }
        int intValue = ((Integer) b2.first).intValue();
        int intValue2 = ((Integer) b2.second).intValue();
        if (!this.f8340h && intValue != 42) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        c("codec.profileLevel, " + str + ", " + d2);
        return false;
    }

    public boolean a(Format format, Format format2, boolean z) {
        boolean z2 = true;
        if (this.f8340h) {
            if (!format.f12514i.equals(format2.f12514i) || format.q != format2.q || ((!this.f8336d && !(format.n == format2.n && format.o == format2.o)) || ((z || format2.u != null) && !I.a((Object) format.u, (Object) format2.u)))) {
                z2 = false;
            }
            return z2;
        }
        if ("audio/mp4a-latm".equals(this.f8334b) && format.f12514i.equals(format2.f12514i) && format.v == format2.v && format.w == format2.w) {
            Pair<Integer, Integer> b2 = MediaCodecUtil.b(format.f12511f);
            Pair<Integer, Integer> b3 = MediaCodecUtil.b(format2.f12511f);
            if (!(b2 == null || b3 == null)) {
                int intValue = ((Integer) b2.first).intValue();
                int intValue2 = ((Integer) b3.first).intValue();
                if (!(intValue == 42 && intValue2 == 42)) {
                    z2 = false;
                }
                return z2;
            }
        }
        return false;
    }

    @TargetApi(21)
    public boolean a(int i2, int i3, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f8335c;
        if (codecCapabilities == null) {
            c("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("sizeAndRate.vCaps");
            return false;
        }
        if (!a(videoCapabilities, i2, i3, d2)) {
            if (i2 >= i3 || !a(videoCapabilities, i3, i2, d2)) {
                c("sizeAndRate.support, " + i2 + "x" + i3 + "x" + d2);
                return false;
            }
            b("sizeAndRate.rotated, " + i2 + "x" + i3 + "x" + d2);
        }
        return true;
    }

    @TargetApi(21)
    public Point a(int i2, int i3) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f8335c;
        if (codecCapabilities == null) {
            c("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(I.a(i2, widthAlignment) * widthAlignment, I.a(i3, heightAlignment) * heightAlignment);
    }

    @TargetApi(21)
    public boolean a(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f8335c;
        if (codecCapabilities == null) {
            c("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("channelCount.aCaps");
            return false;
        } else if (a(this.f8333a, this.f8334b, audioCapabilities.getMaxInputChannelCount()) >= i2) {
            return true;
        } else {
            c("channelCount.support, " + i2);
            return false;
        }
    }

    public static int a(String str, String str2, int i2) {
        int i3;
        if (i2 > 1 || ((I.f9565a >= 26 && i2 > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i2;
        }
        if ("audio/ac3".equals(str2)) {
            i3 = 6;
        } else {
            i3 = "audio/eac3".equals(str2) ? 16 : 30;
        }
        p.d("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i2 + " to " + i3 + "]");
        return i3;
    }

    public static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return I.f9565a >= 19 && b(codecCapabilities);
    }

    @TargetApi(21)
    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i3, double d2) {
        if (d2 == -1.0d || d2 <= 0.0d) {
            return videoCapabilities.isSizeSupported(i2, i3);
        }
        return videoCapabilities.areSizeAndRateSupported(i2, i3, d2);
    }
}
