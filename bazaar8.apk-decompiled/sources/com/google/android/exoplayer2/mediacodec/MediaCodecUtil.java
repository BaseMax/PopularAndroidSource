package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.s;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"InlinedApi"})
public final class MediaCodecUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f12580a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap<a, List<c.e.a.a.f.a>> f12581b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public static final SparseIntArray f12582c = new SparseIntArray();

    /* renamed from: d  reason: collision with root package name */
    public static final SparseIntArray f12583d = new SparseIntArray();

    /* renamed from: e  reason: collision with root package name */
    public static final Map<String, Integer> f12584e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public static final Map<String, Integer> f12585f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    public static final Map<String, Integer> f12586g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public static final SparseIntArray f12587h = new SparseIntArray();

    /* renamed from: i  reason: collision with root package name */
    public static int f12588i = -1;

    public static class DecoderQueryException extends Exception {
        public DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f12589a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f12590b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f12591c;

        public a(String str, boolean z, boolean z2) {
            this.f12589a = str;
            this.f12590b = z;
            this.f12591c = z2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            if (!(TextUtils.equals(this.f12589a, aVar.f12589a) && this.f12590b == aVar.f12590b && this.f12591c == aVar.f12591c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f12589a;
            int i2 = 1231;
            int hashCode = ((((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f12590b ? 1231 : 1237)) * 31;
            if (!this.f12591c) {
                i2 = 1237;
            }
            return hashCode + i2;
        }
    }

    private interface b {
        int a();

        MediaCodecInfo a(int i2);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    private static final class c implements b {
        public c() {
        }

        public int a() {
            return MediaCodecList.getCodecCount();
        }

        public boolean b() {
            return false;
        }

        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        public MediaCodecInfo a(int i2) {
            return MediaCodecList.getCodecInfoAt(i2);
        }

        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }
    }

    @TargetApi(21)
    private static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        public final int f12592a;

        /* renamed from: b  reason: collision with root package name */
        public MediaCodecInfo[] f12593b;

        public d(boolean z, boolean z2) {
            this.f12592a = (z || z2) ? 1 : 0;
        }

        public int a() {
            c();
            return this.f12593b.length;
        }

        public boolean b() {
            return true;
        }

        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        public final void c() {
            if (this.f12593b == null) {
                this.f12593b = new MediaCodecList(this.f12592a).getCodecInfos();
            }
        }

        public MediaCodecInfo a(int i2) {
            c();
            return this.f12593b[i2];
        }

        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }
    }

    private static final class e implements Comparator<c.e.a.a.f.a> {
        public e() {
        }

        /* renamed from: a */
        public int compare(c.e.a.a.f.a aVar, c.e.a.a.f.a aVar2) {
            return a(aVar) - a(aVar2);
        }

        public static int a(c.e.a.a.f.a aVar) {
            return aVar.f8333a.startsWith("OMX.google") ? -1 : 0;
        }
    }

    private static final class f implements Comparator<c.e.a.a.f.a> {
        public f() {
        }

        /* renamed from: a */
        public int compare(c.e.a.a.f.a aVar, c.e.a.a.f.a aVar2) {
            return a(aVar) - a(aVar2);
        }

        public static int a(c.e.a.a.f.a aVar) {
            String str = aVar.f8333a;
            if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
                return -1;
            }
            return (I.f9565a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : 1;
        }
    }

    static {
        f12582c.put(66, 1);
        f12582c.put(77, 2);
        f12582c.put(88, 4);
        f12582c.put(100, 8);
        f12582c.put(110, 16);
        f12582c.put(122, 32);
        f12582c.put(244, 64);
        f12583d.put(10, 1);
        f12583d.put(11, 4);
        f12583d.put(12, 8);
        f12583d.put(13, 16);
        f12583d.put(20, 32);
        f12583d.put(21, 64);
        f12583d.put(22, 128);
        f12583d.put(30, 256);
        f12583d.put(31, 512);
        f12583d.put(32, 1024);
        f12583d.put(40, 2048);
        f12583d.put(41, CodedOutputStream.DEFAULT_BUFFER_SIZE);
        f12583d.put(42, 8192);
        f12583d.put(50, 16384);
        f12583d.put(51, 32768);
        f12583d.put(52, LogFileManager.MAX_LOG_SIZE);
        f12584e.put("L30", 1);
        f12584e.put("L60", 4);
        f12584e.put("L63", 16);
        f12584e.put("L90", 64);
        f12584e.put("L93", 256);
        f12584e.put("L120", 1024);
        f12584e.put("L123", Integer.valueOf(CodedOutputStream.DEFAULT_BUFFER_SIZE));
        f12584e.put("L150", 16384);
        f12584e.put("L153", Integer.valueOf(LogFileManager.MAX_LOG_SIZE));
        f12584e.put("L156", 262144);
        f12584e.put("L180", 1048576);
        f12584e.put("L183", 4194304);
        f12584e.put("L186", 16777216);
        f12584e.put("H30", 2);
        f12584e.put("H60", 8);
        f12584e.put("H63", 32);
        f12584e.put("H90", 128);
        f12584e.put("H93", 512);
        f12584e.put("H120", 2048);
        f12584e.put("H123", 8192);
        f12584e.put("H150", 32768);
        f12584e.put("H153", 131072);
        f12584e.put("H156", 524288);
        f12584e.put("H180", 2097152);
        f12584e.put("H183", 8388608);
        f12584e.put("H186", 33554432);
        f12585f.put("00", 1);
        f12585f.put("01", 2);
        f12585f.put("02", 4);
        f12585f.put("03", 8);
        f12585f.put("04", 16);
        f12585f.put("05", 32);
        f12585f.put("06", 64);
        f12585f.put("07", 128);
        f12585f.put("08", 256);
        f12585f.put("09", 512);
        f12586g.put("01", 1);
        f12586g.put("02", 2);
        f12586g.put("03", 4);
        f12586g.put("04", 8);
        f12586g.put("05", 16);
        f12586g.put("06", 32);
        f12586g.put("07", 64);
        f12586g.put("08", 128);
        f12586g.put("09", 256);
        f12587h.put(1, 1);
        f12587h.put(2, 2);
        f12587h.put(3, 3);
        f12587h.put(4, 4);
        f12587h.put(5, 5);
        f12587h.put(6, 6);
        f12587h.put(17, 17);
        f12587h.put(20, 20);
        f12587h.put(23, 23);
        f12587h.put(29, 29);
        f12587h.put(39, 39);
        f12587h.put(42, 42);
    }

    public static int a(int i2) {
        if (i2 == 1 || i2 == 2) {
            return 25344;
        }
        switch (i2) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case CodedOutputStream.DEFAULT_BUFFER_SIZE:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case LogFileManager.MAX_LOG_SIZE:
                return 9437184;
            default:
                return -1;
        }
    }

    public static c.e.a.a.f.a a() {
        c.e.a.a.f.a a2 = a("audio/raw", false, false);
        if (a2 == null) {
            return null;
        }
        return c.e.a.a.f.a.d(a2.f8333a);
    }

    public static synchronized List<c.e.a.a.f.a> b(String str, boolean z, boolean z2) {
        synchronized (MediaCodecUtil.class) {
            a aVar = new a(str, z, z2);
            List<c.e.a.a.f.a> list = f12581b.get(aVar);
            if (list != null) {
                return list;
            }
            b dVar = I.f9565a >= 21 ? new d(z, z2) : new c();
            ArrayList<c.e.a.a.f.a> a2 = a(aVar, dVar, str);
            if (z && a2.isEmpty() && 21 <= I.f9565a && I.f9565a <= 23) {
                dVar = new c();
                a2 = a(aVar, dVar, str);
                if (!a2.isEmpty()) {
                    p.d("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + a2.get(0).f8333a);
                }
            }
            if ("audio/eac3-joc".equals(str)) {
                a2.addAll(a(new a("audio/eac3", aVar.f12590b, aVar.f12591c), dVar, str));
            }
            a(str, (List<c.e.a.a.f.a>) a2);
            List<c.e.a.a.f.a> unmodifiableList = Collections.unmodifiableList(a2);
            f12581b.put(aVar, unmodifiableList);
            return unmodifiableList;
        }
    }

    public static Pair<Integer, Integer> c(String str, String[] strArr) {
        if (strArr.length < 3) {
            p.d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f12580a.matcher(strArr[1]);
        if (!matcher.matches()) {
            p.d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer num = f12585f.get(group);
        if (num == null) {
            p.d("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer num2 = f12586g.get(str2);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        p.d("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    public static Pair<Integer, Integer> d(String str, String[] strArr) {
        if (strArr.length < 4) {
            p.d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i2 = 1;
        Matcher matcher = f12580a.matcher(strArr[1]);
        if (!matcher.matches()) {
            p.d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if ("2".equals(group)) {
                i2 = 2;
            } else {
                p.d("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer num = f12584e.get(str2);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i2), num);
        }
        p.d("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    public static c.e.a.a.f.a a(String str, boolean z, boolean z2) {
        List<c.e.a.a.f.a> b2 = b(str, z, z2);
        if (b2.isEmpty()) {
            return null;
        }
        return b2.get(0);
    }

    public static ArrayList<c.e.a.a.f.a> a(a aVar, b bVar, String str) {
        ArrayList<c.e.a.a.f.a> arrayList;
        String name;
        String a2;
        a aVar2 = aVar;
        b bVar2 = bVar;
        try {
            arrayList = new ArrayList<>();
            String str2 = aVar2.f12589a;
            int a3 = bVar.a();
            boolean b2 = bVar.b();
            for (int i2 = 0; i2 < a3; i2++) {
                MediaCodecInfo a4 = bVar2.a(i2);
                name = a4.getName();
                a2 = a(a4, name, b2, str);
                if (a2 != null) {
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = a4.getCapabilitiesForType(a2);
                    boolean a5 = bVar2.a("tunneled-playback", a2, capabilitiesForType);
                    boolean b3 = bVar2.b("tunneled-playback", a2, capabilitiesForType);
                    if (aVar2.f12591c || !b3) {
                        if (!aVar2.f12591c || a5) {
                            boolean a6 = bVar2.a("secure-playback", a2, capabilitiesForType);
                            boolean b4 = bVar2.b("secure-playback", a2, capabilitiesForType);
                            if (aVar2.f12590b || !b4) {
                                if (!aVar2.f12590b || a6) {
                                    boolean a7 = a(name);
                                    if (b2) {
                                        if (aVar2.f12590b != a6) {
                                        }
                                        arrayList.add(c.e.a.a.f.a.a(name, str2, capabilitiesForType, a7, false));
                                    }
                                    if (!b2 && !aVar2.f12590b) {
                                        arrayList.add(c.e.a.a.f.a.a(name, str2, capabilitiesForType, a7, false));
                                    } else if (!b2 && a6) {
                                        arrayList.add(c.e.a.a.f.a.a(name + ".secure", str2, capabilitiesForType, a7, true));
                                        return arrayList;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            if (I.f9565a <= 23) {
                if (!arrayList.isEmpty()) {
                    p.b("MediaCodecUtil", "Skipping codec " + name + " (failed to query capabilities)");
                }
            }
            p.b("MediaCodecUtil", "Failed to query codec " + name + " (" + a2 + ")");
            throw e2;
        } catch (Exception e3) {
            throw new DecoderQueryException(e3);
        }
    }

    public static int b() {
        if (f12588i == -1) {
            int i2 = 0;
            c.e.a.a.f.a a2 = a("video/avc", false, false);
            if (a2 != null) {
                MediaCodecInfo.CodecProfileLevel[] a3 = a2.a();
                int length = a3.length;
                int i3 = 0;
                while (i2 < length) {
                    i3 = Math.max(a(a3[i2].level), i3);
                    i2++;
                }
                i2 = Math.max(i3, I.f9565a >= 21 ? 345600 : 172800);
            }
            f12588i = i2;
        }
        return f12588i;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0058, code lost:
        if (r3.equals("avc1") != false) goto L_0x005c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> b(java.lang.String r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.lang.String r1 = "\\."
            java.lang.String[] r1 = r6.split(r1)
            r2 = 0
            r3 = r1[r2]
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3006243: goto L_0x0052;
                case 3006244: goto L_0x0048;
                case 3095771: goto L_0x003e;
                case 3095823: goto L_0x0034;
                case 3199032: goto L_0x002a;
                case 3214780: goto L_0x0020;
                case 3356560: goto L_0x0016;
                default: goto L_0x0015;
            }
        L_0x0015:
            goto L_0x005b
        L_0x0016:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 6
            goto L_0x005c
        L_0x0020:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 3
            goto L_0x005c
        L_0x002a:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 2
            goto L_0x005c
        L_0x0034:
            java.lang.String r2 = "dvhe"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 4
            goto L_0x005c
        L_0x003e:
            java.lang.String r2 = "dvh1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 5
            goto L_0x005c
        L_0x0048:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 1
            goto L_0x005c
        L_0x0052:
            java.lang.String r5 = "avc1"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L_0x005b
            goto L_0x005c
        L_0x005b:
            r2 = -1
        L_0x005c:
            switch(r2) {
                case 0: goto L_0x006f;
                case 1: goto L_0x006f;
                case 2: goto L_0x006a;
                case 3: goto L_0x006a;
                case 4: goto L_0x0065;
                case 5: goto L_0x0065;
                case 6: goto L_0x0060;
                default: goto L_0x005f;
            }
        L_0x005f:
            return r0
        L_0x0060:
            android.util.Pair r6 = a((java.lang.String) r6, (java.lang.String[]) r1)
            return r6
        L_0x0065:
            android.util.Pair r6 = c(r6, r1)
            return r6
        L_0x006a:
            android.util.Pair r6 = d(r6, r1)
            return r6
        L_0x006f:
            android.util.Pair r6 = b(r6, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b(java.lang.String):android.util.Pair");
    }

    public static String a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (b(mediaCodecInfo, str, z, str2)) {
            if (str2.equals("video/dolby-vision")) {
                if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                    return "video/hevcdv";
                }
                if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                    return "video/dv_hevc";
                }
            }
            for (String str3 : mediaCodecInfo.getSupportedTypes()) {
                if (str3.equalsIgnoreCase(str2)) {
                    return str3;
                }
            }
        }
        return null;
    }

    public static boolean b(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        if (I.f9565a < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (I.f9565a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && ("a70".equals(I.f9566b) || ("Xiaomi".equals(I.f9567c) && I.f9566b.startsWith("HM")))) {
            return false;
        }
        if (I.f9565a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(I.f9566b) || "protou".equals(I.f9566b) || "ville".equals(I.f9566b) || "villeplus".equals(I.f9566b) || "villec2".equals(I.f9566b) || I.f9566b.startsWith("gee") || "C6602".equals(I.f9566b) || "C6603".equals(I.f9566b) || "C6606".equals(I.f9566b) || "C6616".equals(I.f9566b) || "L36h".equals(I.f9566b) || "SO-02E".equals(I.f9566b))) {
            return false;
        }
        if (I.f9565a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(I.f9566b) || "C1505".equals(I.f9566b) || "C1604".equals(I.f9566b) || "C1605".equals(I.f9566b))) {
            return false;
        }
        if (I.f9565a < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(I.f9567c) && (I.f9566b.startsWith("zeroflte") || I.f9566b.startsWith("zerolte") || I.f9566b.startsWith("zenlte") || "SC-05G".equals(I.f9566b) || "marinelteatt".equals(I.f9566b) || "404SC".equals(I.f9566b) || "SC-04G".equals(I.f9566b) || "SCV31".equals(I.f9566b)))) {
            return false;
        }
        if (I.f9565a <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(I.f9567c) && (I.f9566b.startsWith("d2") || I.f9566b.startsWith("serrano") || I.f9566b.startsWith("jflte") || I.f9566b.startsWith("santos") || I.f9566b.startsWith("t0"))) {
            return false;
        }
        if (I.f9565a <= 19 && I.f9566b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        if (!"audio/eac3-joc".equals(str2) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return true;
        }
        return false;
    }

    public static void a(String str, List<c.e.a.a.f.a> list) {
        if ("audio/raw".equals(str)) {
            Collections.sort(list, new f());
        } else if (I.f9565a < 21 && list.size() > 1) {
            String str2 = list.get(0).f8333a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                Collections.sort(list, new e());
            }
        }
    }

    public static boolean a(String str) {
        return I.f9565a <= 22 && ("ODROID-XU3".equals(I.f9568d) || "Nexus 10".equals(I.f9568d)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    public static Pair<Integer, Integer> a(String str, String[] strArr) {
        if (strArr.length != 3) {
            p.d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(s.a(Integer.parseInt(strArr[1], 16)))) {
                int i2 = f12587h.get(Integer.parseInt(strArr[2]), -1);
                if (i2 != -1) {
                    return new Pair<>(Integer.valueOf(i2), 0);
                }
            }
        } catch (NumberFormatException unused) {
            p.d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    public static Pair<Integer, Integer> b(String str, String[] strArr) {
        int i2;
        int i3;
        if (strArr.length < 2) {
            p.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                int parseInt = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i2 = Integer.parseInt(strArr[1].substring(4), 16);
                i3 = parseInt;
            } else if (strArr.length >= 3) {
                i3 = Integer.parseInt(strArr[1]);
                i2 = Integer.parseInt(strArr[2]);
            } else {
                p.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int i4 = f12582c.get(i3, -1);
            if (i4 == -1) {
                p.d("MediaCodecUtil", "Unknown AVC profile: " + i3);
                return null;
            }
            int i5 = f12583d.get(i2, -1);
            if (i5 != -1) {
                return new Pair<>(Integer.valueOf(i4), Integer.valueOf(i5));
            }
            p.d("MediaCodecUtil", "Unknown AVC level: " + i2);
            return null;
        } catch (NumberFormatException unused) {
            p.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }
}
