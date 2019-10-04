package c.e.a.a.p;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import c.e.a.a.C0743p;
import c.e.a.a.c.e;
import c.e.a.a.c.f;
import c.e.a.a.d.l;
import c.e.a.a.d.p;
import c.e.a.a.f.c;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.G;
import c.e.a.a.o.I;
import c.e.a.a.p.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.video.DummySurface;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecVideoRenderer */
public class n extends MediaCodecRenderer {
    public static final int[] ma = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public static boolean na;
    public static boolean oa;
    public Surface Aa;
    public int Ba;
    public boolean Ca;
    public long Da;
    public long Ea;
    public long Fa;
    public int Ga;
    public int Ha;
    public int Ia;
    public long Ja;
    public int Ka;
    public float La;
    public int Ma;
    public int Na;
    public int Oa;
    public float Pa;
    public int Qa;
    public int Ra;
    public int Sa;
    public float Ta;
    public boolean Ua;
    public int Va;
    public b Wa;
    public long Xa;
    public long Ya;
    public int Za;
    public o _a;
    public final Context pa;
    public final p qa;
    public final s.a ra;
    public final long sa;
    public final int ta;
    public final boolean ua;
    public final long[] va;
    public final long[] wa;
    public a xa;
    public boolean ya;
    public Surface za;

    /* compiled from: MediaCodecVideoRenderer */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9702a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9703b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9704c;

        public a(int i2, int i3, int i4) {
            this.f9702a = i2;
            this.f9703b = i3;
            this.f9704c = i4;
        }
    }

    @TargetApi(23)
    /* compiled from: MediaCodecVideoRenderer */
    private final class b implements MediaCodec.OnFrameRenderedListener {
        public void onFrameRendered(MediaCodec mediaCodec, long j2, long j3) {
            n nVar = n.this;
            if (this == nVar.Wa) {
                nVar.i(j2);
            }
        }

        public b(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }
    }

    public n(Context context, c cVar, long j2, l<p> lVar, boolean z, Handler handler, s sVar, int i2) {
        this(context, cVar, j2, lVar, z, false, handler, sVar, i2);
    }

    public static boolean X() {
        return "NVIDIA".equals(I.f9567c);
    }

    public static boolean g(long j2) {
        return j2 < -30000;
    }

    public static boolean h(long j2) {
        return j2 < -500000;
    }

    public boolean D() {
        try {
            return super.D();
        } finally {
            this.Ia = 0;
        }
    }

    public boolean G() {
        return this.Ua;
    }

    public void O() {
        try {
            super.O();
        } finally {
            this.Ia = 0;
        }
    }

    public final void V() {
        this.Ca = false;
        if (I.f9565a >= 23 && this.Ua) {
            MediaCodec E = E();
            if (E != null) {
                this.Wa = new b(E);
            }
        }
    }

    public final void W() {
        this.Qa = -1;
        this.Ra = -1;
        this.Ta = -1.0f;
        this.Sa = -1;
    }

    public final void Y() {
        if (this.Ga > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.ra.a(this.Ga, elapsedRealtime - this.Fa);
            this.Ga = 0;
            this.Fa = elapsedRealtime;
        }
    }

    public void Z() {
        if (!this.Ca) {
            this.Ca = true;
            this.ra.b(this.za);
        }
    }

    public int a(c cVar, l<p> lVar, Format format) {
        boolean z;
        int i2 = 0;
        if (!c.e.a.a.o.s.l(format.f12514i)) {
            return 0;
        }
        DrmInitData drmInitData = format.f12517l;
        if (drmInitData != null) {
            z = false;
            for (int i3 = 0; i3 < drmInitData.f12565d; i3++) {
                z |= drmInitData.a(i3).f12571f;
            }
        } else {
            z = false;
        }
        List<c.e.a.a.f.a> a2 = a(cVar, format, z);
        int i4 = 2;
        if (a2.isEmpty()) {
            if (!z || cVar.a(format.f12514i, false, false).isEmpty()) {
                i4 = 1;
            }
            return i4;
        } else if (!C0743p.a((l<?>) lVar, drmInitData)) {
            return 2;
        } else {
            c.e.a.a.f.a aVar = a2.get(0);
            boolean a3 = aVar.a(format);
            int i5 = aVar.b(format) ? 16 : 8;
            if (a3) {
                List<c.e.a.a.f.a> a4 = cVar.a(format.f12514i, z, true);
                if (!a4.isEmpty()) {
                    c.e.a.a.f.a aVar2 = a4.get(0);
                    if (aVar2.a(format) && aVar2.b(format)) {
                        i2 = 32;
                    }
                }
            }
            return (a3 ? 4 : 3) | i5 | i2;
        }
    }

    public final void aa() {
        if (this.Ma != -1 || this.Na != -1) {
            if (this.Qa != this.Ma || this.Ra != this.Na || this.Sa != this.Oa || this.Ta != this.Pa) {
                this.ra.b(this.Ma, this.Na, this.Oa, this.Pa);
                this.Qa = this.Ma;
                this.Ra = this.Na;
                this.Sa = this.Oa;
                this.Ta = this.Pa;
            }
        }
    }

    public boolean b(c.e.a.a.f.a aVar) {
        return this.za != null || c(aVar);
    }

    public final void ba() {
        if (this.Ca) {
            this.ra.b(this.za);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0020, code lost:
        if (r9.Ua != false) goto L_0x0022;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r9.za == r0) goto L_0x0022;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c() {
        /*
            r9 = this;
            boolean r0 = super.c()
            r1 = 1
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto L_0x0025
            boolean r0 = r9.Ca
            if (r0 != 0) goto L_0x0022
            android.view.Surface r0 = r9.Aa
            if (r0 == 0) goto L_0x0018
            android.view.Surface r4 = r9.za
            if (r4 == r0) goto L_0x0022
        L_0x0018:
            android.media.MediaCodec r0 = r9.E()
            if (r0 == 0) goto L_0x0022
            boolean r0 = r9.Ua
            if (r0 == 0) goto L_0x0025
        L_0x0022:
            r9.Ea = r2
            return r1
        L_0x0025:
            long r4 = r9.Ea
            r0 = 0
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L_0x002d
            return r0
        L_0x002d:
            long r4 = android.os.SystemClock.elapsedRealtime()
            long r6 = r9.Ea
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 >= 0) goto L_0x0038
            return r1
        L_0x0038:
            r9.Ea = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.p.n.c():boolean");
    }

    public final void ca() {
        if (this.Qa != -1 || this.Ra != -1) {
            this.ra.b(this.Qa, this.Ra, this.Sa, this.Ta);
        }
    }

    public boolean d(long j2, long j3) {
        return g(j2);
    }

    public final void da() {
        this.Ea = this.sa > 0 ? SystemClock.elapsedRealtime() + this.sa : -9223372036854775807L;
    }

    public boolean e(long j2, long j3) {
        return g(j2) && j3 > 100000;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:393:0x0601, code lost:
        r1 = 65535;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:394:0x0602, code lost:
        switch(r1) {
            case 0: goto L_0x0606;
            case 1: goto L_0x0606;
            case 2: goto L_0x0606;
            case 3: goto L_0x0606;
            case 4: goto L_0x0606;
            case 5: goto L_0x0606;
            case 6: goto L_0x0606;
            case 7: goto L_0x0606;
            case 8: goto L_0x0606;
            case 9: goto L_0x0606;
            case 10: goto L_0x0606;
            case 11: goto L_0x0606;
            case 12: goto L_0x0606;
            case 13: goto L_0x0606;
            case 14: goto L_0x0606;
            case 15: goto L_0x0606;
            case 16: goto L_0x0606;
            case 17: goto L_0x0606;
            case 18: goto L_0x0606;
            case 19: goto L_0x0606;
            case 20: goto L_0x0606;
            case 21: goto L_0x0606;
            case 22: goto L_0x0606;
            case 23: goto L_0x0606;
            case 24: goto L_0x0606;
            case 25: goto L_0x0606;
            case 26: goto L_0x0606;
            case 27: goto L_0x0606;
            case 28: goto L_0x0606;
            case 29: goto L_0x0606;
            case 30: goto L_0x0606;
            case 31: goto L_0x0606;
            case 32: goto L_0x0606;
            case 33: goto L_0x0606;
            case 34: goto L_0x0606;
            case 35: goto L_0x0606;
            case 36: goto L_0x0606;
            case 37: goto L_0x0606;
            case 38: goto L_0x0606;
            case 39: goto L_0x0606;
            case 40: goto L_0x0606;
            case 41: goto L_0x0606;
            case 42: goto L_0x0606;
            case 43: goto L_0x0606;
            case 44: goto L_0x0606;
            case 45: goto L_0x0606;
            case 46: goto L_0x0606;
            case 47: goto L_0x0606;
            case 48: goto L_0x0606;
            case 49: goto L_0x0606;
            case 50: goto L_0x0606;
            case 51: goto L_0x0606;
            case 52: goto L_0x0606;
            case 53: goto L_0x0606;
            case 54: goto L_0x0606;
            case 55: goto L_0x0606;
            case 56: goto L_0x0606;
            case 57: goto L_0x0606;
            case 58: goto L_0x0606;
            case 59: goto L_0x0606;
            case 60: goto L_0x0606;
            case 61: goto L_0x0606;
            case 62: goto L_0x0606;
            case 63: goto L_0x0606;
            case 64: goto L_0x0606;
            case 65: goto L_0x0606;
            case 66: goto L_0x0606;
            case 67: goto L_0x0606;
            case 68: goto L_0x0606;
            case 69: goto L_0x0606;
            case 70: goto L_0x0606;
            case 71: goto L_0x0606;
            case 72: goto L_0x0606;
            case 73: goto L_0x0606;
            case 74: goto L_0x0606;
            case 75: goto L_0x0606;
            case 76: goto L_0x0606;
            case 77: goto L_0x0606;
            case 78: goto L_0x0606;
            case 79: goto L_0x0606;
            case 80: goto L_0x0606;
            case 81: goto L_0x0606;
            case 82: goto L_0x0606;
            case 83: goto L_0x0606;
            case 84: goto L_0x0606;
            case 85: goto L_0x0606;
            case 86: goto L_0x0606;
            case 87: goto L_0x0606;
            case 88: goto L_0x0606;
            case 89: goto L_0x0606;
            case 90: goto L_0x0606;
            case 91: goto L_0x0606;
            case 92: goto L_0x0606;
            case 93: goto L_0x0606;
            case 94: goto L_0x0606;
            case 95: goto L_0x0606;
            case 96: goto L_0x0606;
            case 97: goto L_0x0606;
            case 98: goto L_0x0606;
            case 99: goto L_0x0606;
            case 100: goto L_0x0606;
            case 101: goto L_0x0606;
            case 102: goto L_0x0606;
            case 103: goto L_0x0606;
            case 104: goto L_0x0606;
            case 105: goto L_0x0606;
            case 106: goto L_0x0606;
            case 107: goto L_0x0606;
            case 108: goto L_0x0606;
            case 109: goto L_0x0606;
            case 110: goto L_0x0606;
            case 111: goto L_0x0606;
            case 112: goto L_0x0606;
            case 113: goto L_0x0606;
            case 114: goto L_0x0606;
            case 115: goto L_0x0606;
            case 116: goto L_0x0606;
            case 117: goto L_0x0606;
            case 118: goto L_0x0606;
            case 119: goto L_0x0606;
            case 120: goto L_0x0606;
            case 121: goto L_0x0606;
            case 122: goto L_0x0606;
            case 123: goto L_0x0606;
            default: goto L_0x0605;
        };
     */
    /* JADX WARNING: Code restructure failed: missing block: B:396:0x0606, code lost:
        oa = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:397:0x0608, code lost:
        r1 = c.e.a.a.o.I.f9568d;
        r2 = r1.hashCode();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:398:0x0611, code lost:
        if (r2 == 2006354) goto L_0x0623;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:400:0x0616, code lost:
        if (r2 == 2006367) goto L_0x0619;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:403:0x061f, code lost:
        if (r1.equals("AFTN") == false) goto L_0x062c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:404:0x0621, code lost:
        r0 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:406:0x0629, code lost:
        if (r1.equals("AFTA") == false) goto L_0x062c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:408:0x062c, code lost:
        r0 = 65535;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:409:0x062d, code lost:
        if (r0 == 0) goto L_0x0632;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:410:0x062f, code lost:
        if (r0 == 1) goto L_0x0632;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:412:0x0632, code lost:
        oa = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean f(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "OMX.google"
            boolean r7 = r7.startsWith(r0)
            r0 = 0
            if (r7 == 0) goto L_0x000a
            return r0
        L_0x000a:
            java.lang.Class<c.e.a.a.p.n> r7 = c.e.a.a.p.n.class
            monitor-enter(r7)
            boolean r1 = na     // Catch:{ all -> 0x063a }
            if (r1 != 0) goto L_0x0636
            int r1 = c.e.a.a.o.I.f9565a     // Catch:{ all -> 0x063a }
            r2 = 27
            r3 = 1
            if (r1 > r2) goto L_0x0030
            java.lang.String r1 = "dangal"
            java.lang.String r4 = c.e.a.a.o.I.f9566b     // Catch:{ all -> 0x063a }
            boolean r1 = r1.equals(r4)     // Catch:{ all -> 0x063a }
            if (r1 != 0) goto L_0x002c
            java.lang.String r1 = "HWEML"
            java.lang.String r4 = c.e.a.a.o.I.f9566b     // Catch:{ all -> 0x063a }
            boolean r1 = r1.equals(r4)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0030
        L_0x002c:
            oa = r3     // Catch:{ all -> 0x063a }
            goto L_0x0634
        L_0x0030:
            int r1 = c.e.a.a.o.I.f9565a     // Catch:{ all -> 0x063a }
            if (r1 < r2) goto L_0x0036
            goto L_0x0634
        L_0x0036:
            java.lang.String r1 = c.e.a.a.o.I.f9566b     // Catch:{ all -> 0x063a }
            int r4 = r1.hashCode()     // Catch:{ all -> 0x063a }
            r5 = -1
            switch(r4) {
                case -2144781245: goto L_0x05f6;
                case -2144781185: goto L_0x05eb;
                case -2144781160: goto L_0x05e0;
                case -2097309513: goto L_0x05d5;
                case -2022874474: goto L_0x05ca;
                case -1978993182: goto L_0x05bf;
                case -1978990237: goto L_0x05b4;
                case -1936688988: goto L_0x05a9;
                case -1936688066: goto L_0x059e;
                case -1936688065: goto L_0x0592;
                case -1931988508: goto L_0x0586;
                case -1696512866: goto L_0x057a;
                case -1680025915: goto L_0x056e;
                case -1615810839: goto L_0x0562;
                case -1554255044: goto L_0x0556;
                case -1481772737: goto L_0x054a;
                case -1481772730: goto L_0x053e;
                case -1481772729: goto L_0x0532;
                case -1320080169: goto L_0x0526;
                case -1217592143: goto L_0x051a;
                case -1180384755: goto L_0x050e;
                case -1139198265: goto L_0x0502;
                case -1052835013: goto L_0x04f6;
                case -993250464: goto L_0x04eb;
                case -965403638: goto L_0x04df;
                case -958336948: goto L_0x04d3;
                case -879245230: goto L_0x04c7;
                case -842500323: goto L_0x04bb;
                case -821392978: goto L_0x04b0;
                case -797483286: goto L_0x04a4;
                case -794946968: goto L_0x0498;
                case -788334647: goto L_0x048c;
                case -782144577: goto L_0x0480;
                case -575125681: goto L_0x0474;
                case -521118391: goto L_0x0468;
                case -430914369: goto L_0x045c;
                case -290434366: goto L_0x0450;
                case -282781963: goto L_0x0444;
                case -277133239: goto L_0x0438;
                case -173639913: goto L_0x042c;
                case -56598463: goto L_0x0420;
                case 2126: goto L_0x0414;
                case 2564: goto L_0x0408;
                case 2715: goto L_0x03fc;
                case 2719: goto L_0x03f0;
                case 3483: goto L_0x03e4;
                case 73405: goto L_0x03d8;
                case 75739: goto L_0x03cc;
                case 76779: goto L_0x03c0;
                case 78669: goto L_0x03b4;
                case 79305: goto L_0x03a8;
                case 80618: goto L_0x039c;
                case 88274: goto L_0x0390;
                case 98846: goto L_0x0384;
                case 98848: goto L_0x0378;
                case 99329: goto L_0x036c;
                case 101481: goto L_0x0360;
                case 1513190: goto L_0x0355;
                case 1514184: goto L_0x034a;
                case 1514185: goto L_0x033f;
                case 2436959: goto L_0x0333;
                case 2463773: goto L_0x0327;
                case 2464648: goto L_0x031b;
                case 2689555: goto L_0x030f;
                case 3154429: goto L_0x0303;
                case 3284551: goto L_0x02f7;
                case 3351335: goto L_0x02eb;
                case 3386211: goto L_0x02df;
                case 41325051: goto L_0x02d3;
                case 55178625: goto L_0x02c7;
                case 61542055: goto L_0x02bc;
                case 65355429: goto L_0x02b0;
                case 66214468: goto L_0x02a4;
                case 66214470: goto L_0x0298;
                case 66214473: goto L_0x028c;
                case 66215429: goto L_0x0280;
                case 66215431: goto L_0x0274;
                case 66215433: goto L_0x0268;
                case 66216390: goto L_0x025c;
                case 76402249: goto L_0x0250;
                case 76404105: goto L_0x0244;
                case 76404911: goto L_0x0238;
                case 80963634: goto L_0x022c;
                case 82882791: goto L_0x0220;
                case 98715550: goto L_0x0214;
                case 102844228: goto L_0x0208;
                case 165221241: goto L_0x01fd;
                case 182191441: goto L_0x01f1;
                case 245388979: goto L_0x01e5;
                case 287431619: goto L_0x01d9;
                case 307593612: goto L_0x01cd;
                case 308517133: goto L_0x01c1;
                case 316215098: goto L_0x01b5;
                case 316215116: goto L_0x01a9;
                case 316246811: goto L_0x019d;
                case 316246818: goto L_0x0191;
                case 407160593: goto L_0x0185;
                case 507412548: goto L_0x0179;
                case 793982701: goto L_0x016d;
                case 794038622: goto L_0x0161;
                case 794040393: goto L_0x0155;
                case 835649806: goto L_0x0149;
                case 917340916: goto L_0x013e;
                case 958008161: goto L_0x0132;
                case 1060579533: goto L_0x0126;
                case 1150207623: goto L_0x011a;
                case 1176899427: goto L_0x010e;
                case 1280332038: goto L_0x0102;
                case 1306947716: goto L_0x00f6;
                case 1349174697: goto L_0x00ea;
                case 1522194893: goto L_0x00de;
                case 1691543273: goto L_0x00d2;
                case 1709443163: goto L_0x00c6;
                case 1865889110: goto L_0x00ba;
                case 1906253259: goto L_0x00ae;
                case 1977196784: goto L_0x00a2;
                case 2006372676: goto L_0x0096;
                case 2029784656: goto L_0x008a;
                case 2030379515: goto L_0x007e;
                case 2033393791: goto L_0x0072;
                case 2047190025: goto L_0x0066;
                case 2047252157: goto L_0x005a;
                case 2048319463: goto L_0x004e;
                case 2048855701: goto L_0x0042;
                default: goto L_0x0040;
            }     // Catch:{ all -> 0x063a }
        L_0x0040:
            goto L_0x0601
        L_0x0042:
            java.lang.String r2 = "HWWAS-H"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 54
            goto L_0x0602
        L_0x004e:
            java.lang.String r2 = "HWVNS-H"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 53
            goto L_0x0602
        L_0x005a:
            java.lang.String r4 = "ELUGA_Prim"
            boolean r1 = r1.equals(r4)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 27
            goto L_0x0602
        L_0x0066:
            java.lang.String r2 = "ELUGA_Note"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 26
            goto L_0x0602
        L_0x0072:
            java.lang.String r2 = "ASUS_X00AD_2"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 11
            goto L_0x0602
        L_0x007e:
            java.lang.String r2 = "HWCAM-H"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 52
            goto L_0x0602
        L_0x008a:
            java.lang.String r2 = "HWBLN-H"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 51
            goto L_0x0602
        L_0x0096:
            java.lang.String r2 = "BRAVIA_ATV3_4K"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 15
            goto L_0x0602
        L_0x00a2:
            java.lang.String r2 = "Infinix-X572"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 57
            goto L_0x0602
        L_0x00ae:
            java.lang.String r2 = "PB2-670M"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 85
            goto L_0x0602
        L_0x00ba:
            java.lang.String r2 = "santoni"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 101(0x65, float:1.42E-43)
            goto L_0x0602
        L_0x00c6:
            java.lang.String r2 = "iball8735_9806"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 56
            goto L_0x0602
        L_0x00d2:
            java.lang.String r2 = "CPH1609"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 19
            goto L_0x0602
        L_0x00de:
            java.lang.String r2 = "woods_f"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 117(0x75, float:1.64E-43)
            goto L_0x0602
        L_0x00ea:
            java.lang.String r2 = "htc_e56ml_dtul"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 49
            goto L_0x0602
        L_0x00f6:
            java.lang.String r2 = "EverStar_S"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 29
            goto L_0x0602
        L_0x0102:
            java.lang.String r2 = "hwALE-H"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 50
            goto L_0x0602
        L_0x010e:
            java.lang.String r2 = "itel_S41"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 59
            goto L_0x0602
        L_0x011a:
            java.lang.String r2 = "LS-5017"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 65
            goto L_0x0602
        L_0x0126:
            java.lang.String r2 = "panell_d"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 81
            goto L_0x0602
        L_0x0132:
            java.lang.String r2 = "j2xlteins"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 60
            goto L_0x0602
        L_0x013e:
            java.lang.String r2 = "A7000plus"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 7
            goto L_0x0602
        L_0x0149:
            java.lang.String r2 = "manning"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 67
            goto L_0x0602
        L_0x0155:
            java.lang.String r2 = "GIONEE_WBL7519"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 47
            goto L_0x0602
        L_0x0161:
            java.lang.String r2 = "GIONEE_WBL7365"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 46
            goto L_0x0602
        L_0x016d:
            java.lang.String r2 = "GIONEE_WBL5708"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 45
            goto L_0x0602
        L_0x0179:
            java.lang.String r2 = "QM16XE_U"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 99
            goto L_0x0602
        L_0x0185:
            java.lang.String r2 = "Pixi5-10_4G"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 91
            goto L_0x0602
        L_0x0191:
            java.lang.String r2 = "TB3-850M"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 109(0x6d, float:1.53E-43)
            goto L_0x0602
        L_0x019d:
            java.lang.String r2 = "TB3-850F"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 108(0x6c, float:1.51E-43)
            goto L_0x0602
        L_0x01a9:
            java.lang.String r2 = "TB3-730X"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 107(0x6b, float:1.5E-43)
            goto L_0x0602
        L_0x01b5:
            java.lang.String r2 = "TB3-730F"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 106(0x6a, float:1.49E-43)
            goto L_0x0602
        L_0x01c1:
            java.lang.String r2 = "A7020a48"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 9
            goto L_0x0602
        L_0x01cd:
            java.lang.String r2 = "A7010a48"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 8
            goto L_0x0602
        L_0x01d9:
            java.lang.String r2 = "griffin"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 48
            goto L_0x0602
        L_0x01e5:
            java.lang.String r2 = "marino_f"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 68
            goto L_0x0602
        L_0x01f1:
            java.lang.String r2 = "CPY83_I00"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 20
            goto L_0x0602
        L_0x01fd:
            java.lang.String r2 = "A2016a40"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 5
            goto L_0x0602
        L_0x0208:
            java.lang.String r2 = "le_x6"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 64
            goto L_0x0602
        L_0x0214:
            java.lang.String r2 = "i9031"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 55
            goto L_0x0602
        L_0x0220:
            java.lang.String r2 = "X3_HK"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 119(0x77, float:1.67E-43)
            goto L_0x0602
        L_0x022c:
            java.lang.String r2 = "V23GB"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 112(0x70, float:1.57E-43)
            goto L_0x0602
        L_0x0238:
            java.lang.String r2 = "Q4310"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 97
            goto L_0x0602
        L_0x0244:
            java.lang.String r2 = "Q4260"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 95
            goto L_0x0602
        L_0x0250:
            java.lang.String r2 = "PRO7S"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 93
            goto L_0x0602
        L_0x025c:
            java.lang.String r2 = "F3311"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 36
            goto L_0x0602
        L_0x0268:
            java.lang.String r2 = "F3215"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 35
            goto L_0x0602
        L_0x0274:
            java.lang.String r2 = "F3213"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 34
            goto L_0x0602
        L_0x0280:
            java.lang.String r2 = "F3211"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 33
            goto L_0x0602
        L_0x028c:
            java.lang.String r2 = "F3116"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 32
            goto L_0x0602
        L_0x0298:
            java.lang.String r2 = "F3113"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 31
            goto L_0x0602
        L_0x02a4:
            java.lang.String r2 = "F3111"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 30
            goto L_0x0602
        L_0x02b0:
            java.lang.String r2 = "E5643"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 24
            goto L_0x0602
        L_0x02bc:
            java.lang.String r2 = "A1601"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 4
            goto L_0x0602
        L_0x02c7:
            java.lang.String r2 = "Aura_Note_2"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 12
            goto L_0x0602
        L_0x02d3:
            java.lang.String r2 = "MEIZU_M5"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 69
            goto L_0x0602
        L_0x02df:
            java.lang.String r2 = "p212"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 78
            goto L_0x0602
        L_0x02eb:
            java.lang.String r2 = "mido"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 71
            goto L_0x0602
        L_0x02f7:
            java.lang.String r2 = "kate"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 63
            goto L_0x0602
        L_0x0303:
            java.lang.String r2 = "fugu"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 38
            goto L_0x0602
        L_0x030f:
            java.lang.String r2 = "XE2X"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 120(0x78, float:1.68E-43)
            goto L_0x0602
        L_0x031b:
            java.lang.String r2 = "Q427"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 96
            goto L_0x0602
        L_0x0327:
            java.lang.String r2 = "Q350"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 94
            goto L_0x0602
        L_0x0333:
            java.lang.String r2 = "P681"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 79
            goto L_0x0602
        L_0x033f:
            java.lang.String r2 = "1714"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 2
            goto L_0x0602
        L_0x034a:
            java.lang.String r2 = "1713"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 1
            goto L_0x0602
        L_0x0355:
            java.lang.String r2 = "1601"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 0
            goto L_0x0602
        L_0x0360:
            java.lang.String r2 = "flo"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 37
            goto L_0x0602
        L_0x036c:
            java.lang.String r2 = "deb"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 23
            goto L_0x0602
        L_0x0378:
            java.lang.String r2 = "cv3"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 22
            goto L_0x0602
        L_0x0384:
            java.lang.String r2 = "cv1"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 21
            goto L_0x0602
        L_0x0390:
            java.lang.String r2 = "Z80"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 123(0x7b, float:1.72E-43)
            goto L_0x0602
        L_0x039c:
            java.lang.String r2 = "QX1"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 100
            goto L_0x0602
        L_0x03a8:
            java.lang.String r2 = "PLE"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 92
            goto L_0x0602
        L_0x03b4:
            java.lang.String r2 = "P85"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 80
            goto L_0x0602
        L_0x03c0:
            java.lang.String r2 = "MX6"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 72
            goto L_0x0602
        L_0x03cc:
            java.lang.String r2 = "M5c"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 66
            goto L_0x0602
        L_0x03d8:
            java.lang.String r2 = "JGZ"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 61
            goto L_0x0602
        L_0x03e4:
            java.lang.String r2 = "mh"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 70
            goto L_0x0602
        L_0x03f0:
            java.lang.String r2 = "V5"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 113(0x71, float:1.58E-43)
            goto L_0x0602
        L_0x03fc:
            java.lang.String r2 = "V1"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 111(0x6f, float:1.56E-43)
            goto L_0x0602
        L_0x0408:
            java.lang.String r2 = "Q5"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 98
            goto L_0x0602
        L_0x0414:
            java.lang.String r2 = "C1"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 16
            goto L_0x0602
        L_0x0420:
            java.lang.String r2 = "woods_fn"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 118(0x76, float:1.65E-43)
            goto L_0x0602
        L_0x042c:
            java.lang.String r2 = "ELUGA_A3_Pro"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 25
            goto L_0x0602
        L_0x0438:
            java.lang.String r2 = "Z12_PRO"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 122(0x7a, float:1.71E-43)
            goto L_0x0602
        L_0x0444:
            java.lang.String r2 = "BLACK-1X"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 13
            goto L_0x0602
        L_0x0450:
            java.lang.String r2 = "taido_row"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 105(0x69, float:1.47E-43)
            goto L_0x0602
        L_0x045c:
            java.lang.String r2 = "Pixi4-7_3G"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 90
            goto L_0x0602
        L_0x0468:
            java.lang.String r2 = "GIONEE_GBL7360"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 41
            goto L_0x0602
        L_0x0474:
            java.lang.String r2 = "GiONEE_CBL7513"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 39
            goto L_0x0602
        L_0x0480:
            java.lang.String r2 = "OnePlus5T"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 77
            goto L_0x0602
        L_0x048c:
            java.lang.String r2 = "whyred"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 116(0x74, float:1.63E-43)
            goto L_0x0602
        L_0x0498:
            java.lang.String r2 = "watson"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 115(0x73, float:1.61E-43)
            goto L_0x0602
        L_0x04a4:
            java.lang.String r2 = "SVP-DTV15"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 103(0x67, float:1.44E-43)
            goto L_0x0602
        L_0x04b0:
            java.lang.String r2 = "A7000-a"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 6
            goto L_0x0602
        L_0x04bb:
            java.lang.String r2 = "nicklaus_f"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 74
            goto L_0x0602
        L_0x04c7:
            java.lang.String r2 = "tcl_eu"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 110(0x6e, float:1.54E-43)
            goto L_0x0602
        L_0x04d3:
            java.lang.String r2 = "ELUGA_Ray_X"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 28
            goto L_0x0602
        L_0x04df:
            java.lang.String r2 = "s905x018"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 104(0x68, float:1.46E-43)
            goto L_0x0602
        L_0x04eb:
            java.lang.String r2 = "A10-70F"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 3
            goto L_0x0602
        L_0x04f6:
            java.lang.String r2 = "namath"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 73
            goto L_0x0602
        L_0x0502:
            java.lang.String r2 = "Slate_Pro"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 102(0x66, float:1.43E-43)
            goto L_0x0602
        L_0x050e:
            java.lang.String r2 = "iris60"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 58
            goto L_0x0602
        L_0x051a:
            java.lang.String r2 = "BRAVIA_ATV2"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 14
            goto L_0x0602
        L_0x0526:
            java.lang.String r2 = "GiONEE_GBL7319"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 40
            goto L_0x0602
        L_0x0532:
            java.lang.String r2 = "panell_dt"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 84
            goto L_0x0602
        L_0x053e:
            java.lang.String r2 = "panell_ds"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 83
            goto L_0x0602
        L_0x054a:
            java.lang.String r2 = "panell_dl"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 82
            goto L_0x0602
        L_0x0556:
            java.lang.String r2 = "vernee_M5"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 114(0x72, float:1.6E-43)
            goto L_0x0602
        L_0x0562:
            java.lang.String r2 = "Phantom6"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 89
            goto L_0x0602
        L_0x056e:
            java.lang.String r2 = "ComioS1"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 17
            goto L_0x0602
        L_0x057a:
            java.lang.String r2 = "XT1663"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 121(0x79, float:1.7E-43)
            goto L_0x0602
        L_0x0586:
            java.lang.String r2 = "AquaPowerM"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 10
            goto L_0x0602
        L_0x0592:
            java.lang.String r2 = "PGN611"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 88
            goto L_0x0602
        L_0x059e:
            java.lang.String r2 = "PGN610"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 87
            goto L_0x0602
        L_0x05a9:
            java.lang.String r2 = "PGN528"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 86
            goto L_0x0602
        L_0x05b4:
            java.lang.String r2 = "NX573J"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 76
            goto L_0x0602
        L_0x05bf:
            java.lang.String r2 = "NX541J"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 75
            goto L_0x0602
        L_0x05ca:
            java.lang.String r2 = "CP8676_I02"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 18
            goto L_0x0602
        L_0x05d5:
            java.lang.String r2 = "K50a40"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 62
            goto L_0x0602
        L_0x05e0:
            java.lang.String r2 = "GIONEE_SWW1631"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 44
            goto L_0x0602
        L_0x05eb:
            java.lang.String r2 = "GIONEE_SWW1627"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 43
            goto L_0x0602
        L_0x05f6:
            java.lang.String r2 = "GIONEE_SWW1609"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x0601
            r1 = 42
            goto L_0x0602
        L_0x0601:
            r1 = -1
        L_0x0602:
            switch(r1) {
                case 0: goto L_0x0606;
                case 1: goto L_0x0606;
                case 2: goto L_0x0606;
                case 3: goto L_0x0606;
                case 4: goto L_0x0606;
                case 5: goto L_0x0606;
                case 6: goto L_0x0606;
                case 7: goto L_0x0606;
                case 8: goto L_0x0606;
                case 9: goto L_0x0606;
                case 10: goto L_0x0606;
                case 11: goto L_0x0606;
                case 12: goto L_0x0606;
                case 13: goto L_0x0606;
                case 14: goto L_0x0606;
                case 15: goto L_0x0606;
                case 16: goto L_0x0606;
                case 17: goto L_0x0606;
                case 18: goto L_0x0606;
                case 19: goto L_0x0606;
                case 20: goto L_0x0606;
                case 21: goto L_0x0606;
                case 22: goto L_0x0606;
                case 23: goto L_0x0606;
                case 24: goto L_0x0606;
                case 25: goto L_0x0606;
                case 26: goto L_0x0606;
                case 27: goto L_0x0606;
                case 28: goto L_0x0606;
                case 29: goto L_0x0606;
                case 30: goto L_0x0606;
                case 31: goto L_0x0606;
                case 32: goto L_0x0606;
                case 33: goto L_0x0606;
                case 34: goto L_0x0606;
                case 35: goto L_0x0606;
                case 36: goto L_0x0606;
                case 37: goto L_0x0606;
                case 38: goto L_0x0606;
                case 39: goto L_0x0606;
                case 40: goto L_0x0606;
                case 41: goto L_0x0606;
                case 42: goto L_0x0606;
                case 43: goto L_0x0606;
                case 44: goto L_0x0606;
                case 45: goto L_0x0606;
                case 46: goto L_0x0606;
                case 47: goto L_0x0606;
                case 48: goto L_0x0606;
                case 49: goto L_0x0606;
                case 50: goto L_0x0606;
                case 51: goto L_0x0606;
                case 52: goto L_0x0606;
                case 53: goto L_0x0606;
                case 54: goto L_0x0606;
                case 55: goto L_0x0606;
                case 56: goto L_0x0606;
                case 57: goto L_0x0606;
                case 58: goto L_0x0606;
                case 59: goto L_0x0606;
                case 60: goto L_0x0606;
                case 61: goto L_0x0606;
                case 62: goto L_0x0606;
                case 63: goto L_0x0606;
                case 64: goto L_0x0606;
                case 65: goto L_0x0606;
                case 66: goto L_0x0606;
                case 67: goto L_0x0606;
                case 68: goto L_0x0606;
                case 69: goto L_0x0606;
                case 70: goto L_0x0606;
                case 71: goto L_0x0606;
                case 72: goto L_0x0606;
                case 73: goto L_0x0606;
                case 74: goto L_0x0606;
                case 75: goto L_0x0606;
                case 76: goto L_0x0606;
                case 77: goto L_0x0606;
                case 78: goto L_0x0606;
                case 79: goto L_0x0606;
                case 80: goto L_0x0606;
                case 81: goto L_0x0606;
                case 82: goto L_0x0606;
                case 83: goto L_0x0606;
                case 84: goto L_0x0606;
                case 85: goto L_0x0606;
                case 86: goto L_0x0606;
                case 87: goto L_0x0606;
                case 88: goto L_0x0606;
                case 89: goto L_0x0606;
                case 90: goto L_0x0606;
                case 91: goto L_0x0606;
                case 92: goto L_0x0606;
                case 93: goto L_0x0606;
                case 94: goto L_0x0606;
                case 95: goto L_0x0606;
                case 96: goto L_0x0606;
                case 97: goto L_0x0606;
                case 98: goto L_0x0606;
                case 99: goto L_0x0606;
                case 100: goto L_0x0606;
                case 101: goto L_0x0606;
                case 102: goto L_0x0606;
                case 103: goto L_0x0606;
                case 104: goto L_0x0606;
                case 105: goto L_0x0606;
                case 106: goto L_0x0606;
                case 107: goto L_0x0606;
                case 108: goto L_0x0606;
                case 109: goto L_0x0606;
                case 110: goto L_0x0606;
                case 111: goto L_0x0606;
                case 112: goto L_0x0606;
                case 113: goto L_0x0606;
                case 114: goto L_0x0606;
                case 115: goto L_0x0606;
                case 116: goto L_0x0606;
                case 117: goto L_0x0606;
                case 118: goto L_0x0606;
                case 119: goto L_0x0606;
                case 120: goto L_0x0606;
                case 121: goto L_0x0606;
                case 122: goto L_0x0606;
                case 123: goto L_0x0606;
                default: goto L_0x0605;
            }     // Catch:{ all -> 0x063a }
        L_0x0605:
            goto L_0x0608
        L_0x0606:
            oa = r3     // Catch:{ all -> 0x063a }
        L_0x0608:
            java.lang.String r1 = c.e.a.a.o.I.f9568d     // Catch:{ all -> 0x063a }
            int r2 = r1.hashCode()     // Catch:{ all -> 0x063a }
            r4 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r2 == r4) goto L_0x0623
            r0 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r2 == r0) goto L_0x0619
            goto L_0x062c
        L_0x0619:
            java.lang.String r0 = "AFTN"
            boolean r0 = r1.equals(r0)     // Catch:{ all -> 0x063a }
            if (r0 == 0) goto L_0x062c
            r0 = 1
            goto L_0x062d
        L_0x0623:
            java.lang.String r2 = "AFTA"
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x063a }
            if (r1 == 0) goto L_0x062c
            goto L_0x062d
        L_0x062c:
            r0 = -1
        L_0x062d:
            if (r0 == 0) goto L_0x0632
            if (r0 == r3) goto L_0x0632
            goto L_0x0634
        L_0x0632:
            oa = r3     // Catch:{ all -> 0x063a }
        L_0x0634:
            na = r3     // Catch:{ all -> 0x063a }
        L_0x0636:
            monitor-exit(r7)     // Catch:{ all -> 0x063a }
            boolean r7 = oa
            return r7
        L_0x063a:
            r0 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x063a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.p.n.f(java.lang.String):boolean");
    }

    public void i(long j2) {
        Format f2 = f(j2);
        if (f2 != null) {
            a(E(), f2.n, f2.o);
        }
        aa();
        Z();
        c(j2);
    }

    public void t() {
        this.Xa = -9223372036854775807L;
        this.Ya = -9223372036854775807L;
        this.Za = 0;
        W();
        V();
        this.qa.a();
        this.Wa = null;
        try {
            super.t();
        } finally {
            this.ra.a(this.la);
        }
    }

    public void u() {
        try {
            super.u();
        } finally {
            Surface surface = this.Aa;
            if (surface != null) {
                if (this.za == surface) {
                    this.za = null;
                }
                this.Aa.release();
                this.Aa = null;
            }
        }
    }

    public void v() {
        super.v();
        this.Ga = 0;
        this.Fa = SystemClock.elapsedRealtime();
        this.Ja = SystemClock.elapsedRealtime() * 1000;
    }

    public void w() {
        this.Ea = -9223372036854775807L;
        Y();
        super.w();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public n(Context context, c cVar, long j2, l<p> lVar, boolean z, boolean z2, Handler handler, s sVar, int i2) {
        super(2, cVar, lVar, z, z2, 30.0f);
        this.sa = j2;
        this.ta = i2;
        this.pa = context.getApplicationContext();
        this.qa = new p(this.pa);
        this.ra = new s.a(handler, sVar);
        this.ua = X();
        this.va = new long[10];
        this.wa = new long[10];
        this.Ya = -9223372036854775807L;
        this.Xa = -9223372036854775807L;
        this.Ea = -9223372036854775807L;
        this.Ma = -1;
        this.Na = -1;
        this.Pa = -1.0f;
        this.La = -1.0f;
        this.Ba = 1;
        W();
    }

    public void b(Format format) {
        super.b(format);
        this.ra.a(format);
        this.La = format.r;
        this.Ka = format.q;
    }

    public void b(MediaCodec mediaCodec, int i2, long j2) {
        aa();
        G.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, true);
        G.a();
        this.Ja = SystemClock.elapsedRealtime() * 1000;
        this.la.f7539e++;
        this.Ha = 0;
        Z();
    }

    public void c(long j2) {
        this.Ia--;
        while (true) {
            if (this.Za != 0 && j2 >= this.wa[0]) {
                long[] jArr = this.va;
                this.Ya = jArr[0];
                this.Za = r0 - 1;
                System.arraycopy(jArr, 1, jArr, 0, this.Za);
                long[] jArr2 = this.wa;
                System.arraycopy(jArr2, 1, jArr2, 0, this.Za);
            } else {
                return;
            }
        }
    }

    public boolean c(long j2, long j3) {
        return h(j2);
    }

    @TargetApi(21)
    public void b(MediaCodec mediaCodec, int i2, long j2, long j3) {
        aa();
        G.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, j3);
        G.a();
        this.Ja = SystemClock.elapsedRealtime() * 1000;
        this.la.f7539e++;
        this.Ha = 0;
        Z();
    }

    public void c(MediaCodec mediaCodec, int i2, long j2) {
        G.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i2, false);
        G.a();
        this.la.f7540f++;
    }

    public void c(int i2) {
        e eVar = this.la;
        eVar.f7541g += i2;
        this.Ga += i2;
        this.Ha += i2;
        eVar.f7542h = Math.max(this.Ha, eVar.f7542h);
        int i3 = this.ta;
        if (i3 > 0 && this.Ga >= i3) {
            Y();
        }
    }

    public List<c.e.a.a.f.a> a(c cVar, Format format, boolean z) {
        return Collections.unmodifiableList(cVar.a(format.f12514i, z, this.Ua));
    }

    public static int b(c.e.a.a.f.a aVar, Format format) {
        if (format.f12515j == -1) {
            return a(aVar, format.f12514i, format.n, format.o);
        }
        int size = format.f12516k.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += format.f12516k.get(i3).length;
        }
        return format.f12515j + i2;
    }

    public void a(boolean z) {
        super.a(z);
        int i2 = this.Va;
        this.Va = p().f7317b;
        this.Ua = this.Va != 0;
        if (this.Va != i2) {
            O();
        }
        this.ra.b(this.la);
        this.qa.b();
    }

    public final boolean c(c.e.a.a.f.a aVar) {
        return I.f9565a >= 23 && !this.Ua && !f(aVar.f8333a) && (!aVar.f8338f || DummySurface.b(this.pa));
    }

    public void a(Format[] formatArr, long j2) {
        if (this.Ya == -9223372036854775807L) {
            this.Ya = j2;
        } else {
            int i2 = this.Za;
            if (i2 == this.va.length) {
                c.e.a.a.o.p.d("MediaCodecVideoRenderer", "Too many stream changes, so dropping offset: " + this.va[this.Za - 1]);
            } else {
                this.Za = i2 + 1;
            }
            long[] jArr = this.va;
            int i3 = this.Za;
            jArr[i3 - 1] = j2;
            this.wa[i3 - 1] = this.Xa;
        }
        super.a(formatArr, j2);
    }

    public void a(long j2, boolean z) {
        super.a(j2, z);
        V();
        this.Da = -9223372036854775807L;
        this.Ha = 0;
        this.Xa = -9223372036854775807L;
        int i2 = this.Za;
        if (i2 != 0) {
            this.Ya = this.va[i2 - 1];
            this.Za = 0;
        }
        if (z) {
            da();
        } else {
            this.Ea = -9223372036854775807L;
        }
    }

    public void a(int i2, Object obj) {
        if (i2 == 1) {
            a((Surface) obj);
        } else if (i2 == 4) {
            this.Ba = ((Integer) obj).intValue();
            MediaCodec E = E();
            if (E != null) {
                E.setVideoScalingMode(this.Ba);
            }
        } else if (i2 == 6) {
            this._a = (o) obj;
        } else {
            super.a(i2, obj);
        }
    }

    public final void a(Surface surface) {
        if (surface == null) {
            Surface surface2 = this.Aa;
            if (surface2 != null) {
                surface = surface2;
            } else {
                c.e.a.a.f.a F = F();
                if (F != null && c(F)) {
                    this.Aa = DummySurface.a(this.pa, F.f8338f);
                    surface = this.Aa;
                }
            }
        }
        if (this.za != surface) {
            this.za = surface;
            int state = getState();
            MediaCodec E = E();
            if (E != null) {
                if (I.f9565a < 23 || surface == null || this.ya) {
                    O();
                    J();
                } else {
                    a(E, surface);
                }
            }
            if (surface == null || surface == this.Aa) {
                W();
                V();
                return;
            }
            ca();
            V();
            if (state == 2) {
                da();
            }
        } else if (surface != null && surface != this.Aa) {
            ca();
            ba();
        }
    }

    public void a(c.e.a.a.f.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f2) {
        this.xa = a(aVar, format, r());
        MediaFormat a2 = a(format, this.xa, f2, this.ua, this.Va);
        if (this.za == null) {
            C0737e.b(c(aVar));
            if (this.Aa == null) {
                this.Aa = DummySurface.a(this.pa, aVar.f8338f);
            }
            this.za = this.Aa;
        }
        mediaCodec.configure(a2, this.za, mediaCrypto, 0);
        if (I.f9565a >= 23 && this.Ua) {
            this.Wa = new b(mediaCodec);
        }
    }

    public int a(MediaCodec mediaCodec, c.e.a.a.f.a aVar, Format format, Format format2) {
        if (aVar.a(format, format2, true)) {
            int i2 = format2.n;
            a aVar2 = this.xa;
            if (i2 <= aVar2.f9702a && format2.o <= aVar2.f9703b && b(aVar, format2) <= this.xa.f9704c) {
                return format.b(format2) ? 3 : 2;
            }
        }
        return 0;
    }

    public float a(float f2, Format format, Format[] formatArr) {
        float f3 = -1.0f;
        for (Format format2 : formatArr) {
            float f4 = format2.p;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    public void a(String str, long j2, long j3) {
        this.ra.a(str, j2, j3);
        this.ya = f(str);
    }

    public void a(f fVar) {
        this.Ia++;
        this.Xa = Math.max(fVar.f7546d, this.Xa);
        if (I.f9565a < 23 && this.Ua) {
            i(fVar.f7546d);
        }
    }

    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i2;
        int i3;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            i2 = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            i2 = mediaFormat.getInteger("width");
        }
        if (z) {
            i3 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            i3 = mediaFormat.getInteger("height");
        }
        a(mediaCodec, i2, i3);
    }

    public boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z, Format format) {
        long j5 = j2;
        long j6 = j3;
        MediaCodec mediaCodec2 = mediaCodec;
        int i4 = i2;
        long j7 = j4;
        if (this.Da == -9223372036854775807L) {
            this.Da = j5;
        }
        long j8 = j7 - this.Ya;
        if (z) {
            c(mediaCodec2, i4, j8);
            return true;
        }
        long j9 = j7 - j5;
        if (this.za != this.Aa) {
            long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            boolean z2 = getState() == 2;
            if (!this.Ca || (z2 && e(j9, elapsedRealtime - this.Ja))) {
                long nanoTime = System.nanoTime();
                a(j8, nanoTime, format);
                if (I.f9565a >= 21) {
                    b(mediaCodec, i2, j8, nanoTime);
                } else {
                    b(mediaCodec2, i4, j8);
                }
                return true;
            }
            if (z2 && j5 != this.Da) {
                long nanoTime2 = System.nanoTime();
                long a2 = this.qa.a(j7, ((j9 - (elapsedRealtime - j6)) * 1000) + nanoTime2);
                long j10 = (a2 - nanoTime2) / 1000;
                if (c(j10, j6) && a(mediaCodec, i2, j8, j2)) {
                    return false;
                }
                if (d(j10, j6)) {
                    a(mediaCodec2, i4, j8);
                } else if (I.f9565a >= 21) {
                    if (j10 < 50000) {
                        a(j8, a2, format);
                        b(mediaCodec, i2, j8, a2);
                    }
                } else if (j10 < 30000) {
                    if (j10 > 11000) {
                        try {
                            Thread.sleep((j10 - 10000) / 1000);
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            return false;
                        }
                    }
                    a(j8, a2, format);
                    b(mediaCodec2, i4, j8);
                }
                return true;
            }
            return false;
        } else if (!g(j9)) {
            return false;
        } else {
            c(mediaCodec2, i4, j8);
            return true;
        }
    }

    public final void a(MediaCodec mediaCodec, int i2, int i3) {
        this.Ma = i2;
        this.Na = i3;
        this.Pa = this.La;
        if (I.f9565a >= 21) {
            int i4 = this.Ka;
            if (i4 == 90 || i4 == 270) {
                int i5 = this.Ma;
                this.Ma = this.Na;
                this.Na = i5;
                this.Pa = 1.0f / this.Pa;
            }
        } else {
            this.Oa = this.Ka;
        }
        mediaCodec.setVideoScalingMode(this.Ba);
    }

    public final void a(long j2, long j3, Format format) {
        o oVar = this._a;
        if (oVar != null) {
            oVar.a(j2, j3, format);
        }
    }

    public void a(MediaCodec mediaCodec, int i2, long j2) {
        G.a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i2, false);
        G.a();
        c(1);
    }

    public boolean a(MediaCodec mediaCodec, int i2, long j2, long j3) {
        int b2 = b(j3);
        if (b2 == 0) {
            return false;
        }
        this.la.f7543i++;
        c(this.Ia + b2);
        C();
        return true;
    }

    @TargetApi(23)
    public static void a(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    @TargetApi(21)
    public static void a(MediaFormat mediaFormat, int i2) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i2);
    }

    @SuppressLint({"InlinedApi"})
    public MediaFormat a(Format format, a aVar, float f2, boolean z, int i2) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", format.f12514i);
        mediaFormat.setInteger("width", format.n);
        mediaFormat.setInteger("height", format.o);
        c.e.a.a.f.e.a(mediaFormat, format.f12516k);
        c.e.a.a.f.e.a(mediaFormat, "frame-rate", format.p);
        c.e.a.a.f.e.a(mediaFormat, "rotation-degrees", format.q);
        c.e.a.a.f.e.a(mediaFormat, format.u);
        if ("video/dolby-vision".equals(format.f12514i)) {
            Pair<Integer, Integer> b2 = MediaCodecUtil.b(format.f12511f);
            if (b2 != null) {
                c.e.a.a.f.e.a(mediaFormat, "profile", ((Integer) b2.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", aVar.f9702a);
        mediaFormat.setInteger("max-height", aVar.f9703b);
        c.e.a.a.f.e.a(mediaFormat, "max-input-size", aVar.f9704c);
        if (I.f9565a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i2 != 0) {
            a(mediaFormat, i2);
        }
        return mediaFormat;
    }

    public a a(c.e.a.a.f.a aVar, Format format, Format[] formatArr) {
        int i2 = format.n;
        int i3 = format.o;
        int b2 = b(aVar, format);
        if (formatArr.length == 1) {
            if (b2 != -1) {
                int a2 = a(aVar, format.f12514i, format.n, format.o);
                if (a2 != -1) {
                    b2 = Math.min((int) (((float) b2) * 1.5f), a2);
                }
            }
            return new a(i2, i3, b2);
        }
        int i4 = i3;
        int i5 = b2;
        boolean z = false;
        int i6 = i2;
        for (Format format2 : formatArr) {
            if (aVar.a(format, format2, false)) {
                z |= format2.n == -1 || format2.o == -1;
                i6 = Math.max(i6, format2.n);
                i4 = Math.max(i4, format2.o);
                i5 = Math.max(i5, b(aVar, format2));
            }
        }
        if (z) {
            c.e.a.a.o.p.d("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i6 + "x" + i4);
            Point a3 = a(aVar, format);
            if (a3 != null) {
                i6 = Math.max(i6, a3.x);
                i4 = Math.max(i4, a3.y);
                i5 = Math.max(i5, a(aVar, format.f12514i, i6, i4));
                c.e.a.a.o.p.d("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i6 + "x" + i4);
            }
        }
        return new a(i6, i4, i5);
    }

    public static Point a(c.e.a.a.f.a aVar, Format format) {
        boolean z = format.o > format.n;
        int i2 = z ? format.o : format.n;
        int i3 = z ? format.n : format.o;
        float f2 = ((float) i3) / ((float) i2);
        for (int i4 : ma) {
            int i5 = (int) (((float) i4) * f2);
            if (i4 <= i2 || i5 <= i3) {
                break;
            }
            if (I.f9565a >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point a2 = aVar.a(i6, i4);
                if (aVar.a(a2.x, a2.y, (double) format.p)) {
                    return a2;
                }
            } else {
                int a3 = I.a(i4, 16) * 16;
                int a4 = I.a(i5, 16) * 16;
                if (a3 * a4 <= MediaCodecUtil.b()) {
                    int i7 = z ? a4 : a3;
                    if (z) {
                        a4 = a3;
                    }
                    return new Point(i7, a4);
                }
            }
        }
        return null;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(c.e.a.a.f.a r7, java.lang.String r8, int r9, int r10) {
        /*
            r0 = -1
            if (r9 == r0) goto L_0x00a9
            if (r10 != r0) goto L_0x0007
            goto L_0x00a9
        L_0x0007:
            int r1 = r8.hashCode()
            r2 = 5
            r3 = 1
            r4 = 4
            r5 = 3
            r6 = 2
            switch(r1) {
                case -1664118616: goto L_0x0046;
                case -1662541442: goto L_0x003c;
                case 1187890754: goto L_0x0032;
                case 1331836730: goto L_0x0028;
                case 1599127256: goto L_0x001e;
                case 1599127257: goto L_0x0014;
                default: goto L_0x0013;
            }
        L_0x0013:
            goto L_0x0050
        L_0x0014:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 5
            goto L_0x0051
        L_0x001e:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 3
            goto L_0x0051
        L_0x0028:
            java.lang.String r1 = "video/avc"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 2
            goto L_0x0051
        L_0x0032:
            java.lang.String r1 = "video/mp4v-es"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 1
            goto L_0x0051
        L_0x003c:
            java.lang.String r1 = "video/hevc"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 4
            goto L_0x0051
        L_0x0046:
            java.lang.String r1 = "video/3gpp"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L_0x0050
            r8 = 0
            goto L_0x0051
        L_0x0050:
            r8 = -1
        L_0x0051:
            if (r8 == 0) goto L_0x00a0
            if (r8 == r3) goto L_0x00a0
            if (r8 == r6) goto L_0x0061
            if (r8 == r5) goto L_0x00a0
            if (r8 == r4) goto L_0x005e
            if (r8 == r2) goto L_0x005e
            return r0
        L_0x005e:
            int r9 = r9 * r10
            goto L_0x00a3
        L_0x0061:
            java.lang.String r8 = c.e.a.a.o.I.f9568d
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r8 = r1.equals(r8)
            if (r8 != 0) goto L_0x009f
            java.lang.String r8 = c.e.a.a.o.I.f9567c
            java.lang.String r1 = "Amazon"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L_0x008e
            java.lang.String r8 = c.e.a.a.o.I.f9568d
            java.lang.String r1 = "KFSOWI"
            boolean r8 = r1.equals(r8)
            if (r8 != 0) goto L_0x009f
            java.lang.String r8 = c.e.a.a.o.I.f9568d
            java.lang.String r1 = "AFTS"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto L_0x008e
            boolean r7 = r7.f8338f
            if (r7 == 0) goto L_0x008e
            goto L_0x009f
        L_0x008e:
            r7 = 16
            int r8 = c.e.a.a.o.I.a((int) r9, (int) r7)
            int r9 = c.e.a.a.o.I.a((int) r10, (int) r7)
            int r8 = r8 * r9
            int r8 = r8 * 16
            int r9 = r8 * 16
            goto L_0x00a2
        L_0x009f:
            return r0
        L_0x00a0:
            int r9 = r9 * r10
        L_0x00a2:
            r4 = 2
        L_0x00a3:
            int r9 = r9 * 3
            int r4 = r4 * 2
            int r9 = r9 / r4
            return r9
        L_0x00a9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.p.n.a(c.e.a.a.f.a, java.lang.String, int, int):int");
    }
}
