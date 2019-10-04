package c.e.a.a.e.c;

import android.util.Pair;
import android.util.SparseArray;
import c.e.a.a.C0744q;
import c.e.a.a.b.C0695h;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.q;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* compiled from: MatroskaExtractor */
public class g implements c.e.a.a.e.g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7670a = a.f7660a;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f7671b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f7672c = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f7673d = I.e("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f7674e = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f7675f = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: g  reason: collision with root package name */
    public static final UUID f7676g = new UUID(72057594037932032L, -9223371306706625679L);
    public b A;
    public boolean B;
    public int C;
    public long D;
    public boolean E;
    public long F;
    public long G;
    public long H;
    public q I;
    public q J;
    public boolean K;
    public int L;
    public long M;
    public long N;
    public int O;
    public int P;
    public int[] Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public byte Z;
    public int aa;
    public int ba;
    public int ca;
    public boolean da;
    public boolean ea;
    public i fa;

    /* renamed from: h  reason: collision with root package name */
    public final e f7677h;

    /* renamed from: i  reason: collision with root package name */
    public final i f7678i;

    /* renamed from: j  reason: collision with root package name */
    public final SparseArray<b> f7679j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f7680k;

    /* renamed from: l  reason: collision with root package name */
    public final v f7681l;
    public final v m;
    public final v n;
    public final v o;
    public final v p;
    public final v q;
    public final v r;
    public final v s;
    public final v t;
    public ByteBuffer u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    /* compiled from: MatroskaExtractor */
    private final class a implements d {
        public a() {
        }

        public void a(int i2, long j2, long j3) {
            g.this.a(i2, j2, j3);
        }

        public int b(int i2) {
            return g.this.b(i2);
        }

        public boolean c(int i2) {
            return g.this.c(i2);
        }

        public void a(int i2) {
            g.this.a(i2);
        }

        public void a(int i2, long j2) {
            g.this.a(i2, j2);
        }

        public void a(int i2, double d2) {
            g.this.a(i2, d2);
        }

        public void a(int i2, String str) {
            g.this.a(i2, str);
        }

        public void a(int i2, int i3, h hVar) {
            g.this.a(i2, i3, hVar);
        }
    }

    /* compiled from: MatroskaExtractor */
    private static final class b {
        public int A;
        public float B;
        public float C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public int L;
        public int M;
        public int N;
        public long O;
        public long P;
        public c Q;
        public boolean R;
        public boolean S;
        public String T;
        public c.e.a.a.e.q U;
        public int V;

        /* renamed from: a  reason: collision with root package name */
        public String f7683a;

        /* renamed from: b  reason: collision with root package name */
        public String f7684b;

        /* renamed from: c  reason: collision with root package name */
        public int f7685c;

        /* renamed from: d  reason: collision with root package name */
        public int f7686d;

        /* renamed from: e  reason: collision with root package name */
        public int f7687e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7688f;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f7689g;

        /* renamed from: h  reason: collision with root package name */
        public q.a f7690h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f7691i;

        /* renamed from: j  reason: collision with root package name */
        public DrmInitData f7692j;

        /* renamed from: k  reason: collision with root package name */
        public int f7693k;

        /* renamed from: l  reason: collision with root package name */
        public int f7694l;
        public int m;
        public int n;
        public int o;
        public int p;
        public float q;
        public float r;
        public float s;
        public byte[] t;
        public int u;
        public boolean v;
        public int w;
        public int x;
        public int y;
        public int z;

        public b() {
            this.f7693k = -1;
            this.f7694l = -1;
            this.m = -1;
            this.n = -1;
            this.o = 0;
            this.p = -1;
            this.q = 0.0f;
            this.r = 0.0f;
            this.s = 0.0f;
            this.t = null;
            this.u = -1;
            this.v = false;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = AnswersRetryFilesSender.BACKOFF_MS;
            this.A = 200;
            this.B = -1.0f;
            this.C = -1.0f;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = 1;
            this.M = -1;
            this.N = e.a.a.a.a.d.c.MAX_BYTE_SIZE_PER_FILE;
            this.O = 0;
            this.P = 0;
            this.S = true;
            this.T = "eng";
        }

        public void b() {
            c cVar = this.Q;
            if (cVar != null) {
                cVar.a(this);
            }
        }

        public void c() {
            c cVar = this.Q;
            if (cVar != null) {
                cVar.a();
            }
        }

        /* JADX WARNING: Can't fix incorrect switch cases order */
        /* JADX WARNING: Code restructure failed: missing block: B:105:0x01de, code lost:
            r23 = r1;
            r1 = "audio/raw";
            r3 = null;
            r20 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:0x022e, code lost:
            r1 = "audio/x-unknown";
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x025b, code lost:
            r3 = null;
            r20 = com.crashlytics.android.core.CodedOutputStream.DEFAULT_BUFFER_SIZE;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:0x02d4, code lost:
            r20 = -1;
            r23 = -1;
            r31 = r3;
            r3 = r1;
            r1 = r31;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:139:0x031e, code lost:
            r3 = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:140:0x031f, code lost:
            r20 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:141:0x0321, code lost:
            r23 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:142:0x0323, code lost:
            r11 = r0.S | false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:143:0x0328, code lost:
            if (r0.R == false) goto L_0x032c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:144:0x032a, code lost:
            r12 = 2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:145:0x032c, code lost:
            r12 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:146:0x032d, code lost:
            r11 = r11 | r12;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:147:0x0332, code lost:
            if (c.e.a.a.o.s.j(r1) == false) goto L_0x0359;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:148:0x0334, code lost:
            r1 = com.google.android.exoplayer2.Format.a(java.lang.Integer.toString(r34), r1, (java.lang.String) null, -1, r20, r0.L, r0.N, r23, r3, r0.f7692j, r11 ? 1 : 0, r0.T);
            r7 = 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:150:0x035d, code lost:
            if (c.e.a.a.o.s.l(r1) == false) goto L_0x0459;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:152:0x0361, code lost:
            if (r0.o != 0) goto L_0x0373;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:153:0x0363, code lost:
            r2 = r0.m;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:154:0x0365, code lost:
            if (r2 != -1) goto L_0x0369;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:155:0x0367, code lost:
            r2 = r0.f7693k;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:156:0x0369, code lost:
            r0.m = r2;
            r2 = r0.n;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:157:0x036d, code lost:
            if (r2 != -1) goto L_0x0371;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:158:0x036f, code lost:
            r2 = r0.f7694l;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:159:0x0371, code lost:
            r0.n = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:160:0x0373, code lost:
            r4 = r0.m;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:161:0x0377, code lost:
            if (r4 == -1) goto L_0x038b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:162:0x0379, code lost:
            r7 = r0.n;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:163:0x037b, code lost:
            if (r7 == -1) goto L_0x038b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:164:0x037d, code lost:
            r26 = ((float) (r0.f7694l * r4)) / ((float) (r0.f7693k * r7));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:165:0x038b, code lost:
            r26 = -1.0f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:167:0x038f, code lost:
            if (r0.v == false) goto L_0x03a0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:168:0x0391, code lost:
            r15 = new com.google.android.exoplayer2.video.ColorInfo(r0.w, r0.y, r0.x, a());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:169:0x03a0, code lost:
            r29 = r15;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:170:0x03aa, code lost:
            if ("htc_video_rotA-000".equals(r0.f7683a) == false) goto L_0x03ae;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:171:0x03ac, code lost:
            r2 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:173:0x03b6, code lost:
            if ("htc_video_rotA-090".equals(r0.f7683a) == false) goto L_0x03bb;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:174:0x03b8, code lost:
            r2 = 90;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:176:0x03c3, code lost:
            if ("htc_video_rotA-180".equals(r0.f7683a) == false) goto L_0x03c8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:177:0x03c5, code lost:
            r2 = 180;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:179:0x03d0, code lost:
            if ("htc_video_rotA-270".equals(r0.f7683a) == false) goto L_0x03d5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:180:0x03d2, code lost:
            r2 = 270;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:181:0x03d5, code lost:
            r2 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:183:0x03d8, code lost:
            if (r0.p != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:185:0x03e1, code lost:
            if (java.lang.Float.compare(r0.q, 0.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:187:0x03e9, code lost:
            if (java.lang.Float.compare(r0.r, 0.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:189:0x03f1, code lost:
            if (java.lang.Float.compare(r0.s, 0.0f) != 0) goto L_0x03f6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:190:0x03f3, code lost:
            r25 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:192:0x03fe, code lost:
            if (java.lang.Float.compare(r0.r, 90.0f) != 0) goto L_0x0405;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:193:0x0400, code lost:
            r25 = 90;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:195:0x040d, code lost:
            if (java.lang.Float.compare(r0.r, -180.0f) == 0) goto L_0x0429;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:197:0x0417, code lost:
            if (java.lang.Float.compare(r0.r, 180.0f) != 0) goto L_0x041a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:199:0x0422, code lost:
            if (java.lang.Float.compare(r0.r, -90.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:200:0x0424, code lost:
            r25 = 270;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:201:0x0429, code lost:
            r25 = 180;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:202:0x042e, code lost:
            r25 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:203:0x0430, code lost:
            r1 = com.google.android.exoplayer2.Format.a(java.lang.Integer.toString(r34), r1, (java.lang.String) null, -1, r20, r0.f7693k, r0.f7694l, -1.0f, r3, r25, r26, r0.t, r0.u, r29, r0.f7692j);
            r7 = 2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:205:0x045d, code lost:
            if ("application/x-subrip".equals(r1) == false) goto L_0x046d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:206:0x045f, code lost:
            r1 = com.google.android.exoplayer2.Format.a(java.lang.Integer.toString(r34), r1, r11 ? 1 : 0, r0.T, r0.f7692j);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:208:0x0471, code lost:
            if ("text/x-ssa".equals(r1) == false) goto L_0x04a6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:209:0x0473, code lost:
            r2 = new java.util.ArrayList(2);
            r2.add(c.e.a.a.e.c.g.b());
            r2.add(r0.f7691i);
            r1 = com.google.android.exoplayer2.Format.a(java.lang.Integer.toString(r34), r1, (java.lang.String) null, -1, r11 ? 1 : 0, r0.T, -1, r0.f7692j, Long.MAX_VALUE, (java.util.List<byte[]>) r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:211:0x04aa, code lost:
            if ("application/vobsub".equals(r1) != false) goto L_0x04c5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:213:0x04b2, code lost:
            if ("application/pgs".equals(r1) != false) goto L_0x04c5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:215:0x04ba, code lost:
            if ("application/dvbsubs".equals(r1) == false) goto L_0x04bd;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:217:0x04c4, code lost:
            throw new com.google.android.exoplayer2.ParserException("Unexpected MIME type.");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:218:0x04c5, code lost:
            r1 = com.google.android.exoplayer2.Format.a(java.lang.Integer.toString(r34), r1, (java.lang.String) null, -1, r11 ? 1 : 0, r3, r0.T, r0.f7692j);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:219:0x04df, code lost:
            r0.U = r33.a(r0.f7685c, r7);
            r0.U.a(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:220:0x04ee, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(c.e.a.a.e.i r33, int r34) {
            /*
                r32 = this;
                r0 = r32
                java.lang.String r1 = r0.f7684b
                int r2 = r1.hashCode()
                r3 = 8
                r4 = 1
                r5 = 2
                r6 = 0
                r7 = 3
                r8 = -1
                switch(r2) {
                    case -2095576542: goto L_0x0161;
                    case -2095575984: goto L_0x0157;
                    case -1985379776: goto L_0x014c;
                    case -1784763192: goto L_0x0141;
                    case -1730367663: goto L_0x0136;
                    case -1482641358: goto L_0x012b;
                    case -1482641357: goto L_0x0120;
                    case -1373388978: goto L_0x0115;
                    case -933872740: goto L_0x010a;
                    case -538363189: goto L_0x00ff;
                    case -538363109: goto L_0x00f4;
                    case -425012669: goto L_0x00e8;
                    case -356037306: goto L_0x00dc;
                    case 62923557: goto L_0x00d0;
                    case 62923603: goto L_0x00c4;
                    case 62927045: goto L_0x00b8;
                    case 82318131: goto L_0x00ad;
                    case 82338133: goto L_0x00a2;
                    case 82338134: goto L_0x0097;
                    case 99146302: goto L_0x008b;
                    case 444813526: goto L_0x007f;
                    case 542569478: goto L_0x0073;
                    case 725957860: goto L_0x0067;
                    case 738597099: goto L_0x005b;
                    case 855502857: goto L_0x004f;
                    case 1422270023: goto L_0x0043;
                    case 1809237540: goto L_0x0038;
                    case 1950749482: goto L_0x002c;
                    case 1950789798: goto L_0x0020;
                    case 1951062397: goto L_0x0014;
                    default: goto L_0x0012;
                }
            L_0x0012:
                goto L_0x016b
            L_0x0014:
                java.lang.String r2 = "A_OPUS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 12
                goto L_0x016c
            L_0x0020:
                java.lang.String r2 = "A_FLAC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 22
                goto L_0x016c
            L_0x002c:
                java.lang.String r2 = "A_EAC3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 17
                goto L_0x016c
            L_0x0038:
                java.lang.String r2 = "V_MPEG2"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 3
                goto L_0x016c
            L_0x0043:
                java.lang.String r2 = "S_TEXT/UTF8"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 25
                goto L_0x016c
            L_0x004f:
                java.lang.String r2 = "V_MPEGH/ISO/HEVC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 8
                goto L_0x016c
            L_0x005b:
                java.lang.String r2 = "S_TEXT/ASS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 26
                goto L_0x016c
            L_0x0067:
                java.lang.String r2 = "A_PCM/INT/LIT"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 24
                goto L_0x016c
            L_0x0073:
                java.lang.String r2 = "A_DTS/EXPRESS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 20
                goto L_0x016c
            L_0x007f:
                java.lang.String r2 = "V_THEORA"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 10
                goto L_0x016c
            L_0x008b:
                java.lang.String r2 = "S_HDMV/PGS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 28
                goto L_0x016c
            L_0x0097:
                java.lang.String r2 = "V_VP9"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 1
                goto L_0x016c
            L_0x00a2:
                java.lang.String r2 = "V_VP8"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 0
                goto L_0x016c
            L_0x00ad:
                java.lang.String r2 = "V_AV1"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 2
                goto L_0x016c
            L_0x00b8:
                java.lang.String r2 = "A_DTS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 19
                goto L_0x016c
            L_0x00c4:
                java.lang.String r2 = "A_AC3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 16
                goto L_0x016c
            L_0x00d0:
                java.lang.String r2 = "A_AAC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 13
                goto L_0x016c
            L_0x00dc:
                java.lang.String r2 = "A_DTS/LOSSLESS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 21
                goto L_0x016c
            L_0x00e8:
                java.lang.String r2 = "S_VOBSUB"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 27
                goto L_0x016c
            L_0x00f4:
                java.lang.String r2 = "V_MPEG4/ISO/AVC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 7
                goto L_0x016c
            L_0x00ff:
                java.lang.String r2 = "V_MPEG4/ISO/ASP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 5
                goto L_0x016c
            L_0x010a:
                java.lang.String r2 = "S_DVBSUB"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 29
                goto L_0x016c
            L_0x0115:
                java.lang.String r2 = "V_MS/VFW/FOURCC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 9
                goto L_0x016c
            L_0x0120:
                java.lang.String r2 = "A_MPEG/L3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 15
                goto L_0x016c
            L_0x012b:
                java.lang.String r2 = "A_MPEG/L2"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 14
                goto L_0x016c
            L_0x0136:
                java.lang.String r2 = "A_VORBIS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 11
                goto L_0x016c
            L_0x0141:
                java.lang.String r2 = "A_TRUEHD"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 18
                goto L_0x016c
            L_0x014c:
                java.lang.String r2 = "A_MS/ACM"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 23
                goto L_0x016c
            L_0x0157:
                java.lang.String r2 = "V_MPEG4/ISO/SP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 4
                goto L_0x016c
            L_0x0161:
                java.lang.String r2 = "V_MPEG4/ISO/AP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 6
                goto L_0x016c
            L_0x016b:
                r1 = -1
            L_0x016c:
                java.lang.String r2 = "application/vobsub"
                java.lang.String r9 = "text/x-ssa"
                java.lang.String r10 = "application/x-subrip"
                java.lang.String r11 = "audio/raw"
                r12 = 4096(0x1000, float:5.74E-42)
                java.lang.String r13 = "MatroskaExtractor"
                java.lang.String r14 = "audio/x-unknown"
                r15 = 0
                switch(r1) {
                    case 0: goto L_0x031c;
                    case 1: goto L_0x0319;
                    case 2: goto L_0x0316;
                    case 3: goto L_0x0313;
                    case 4: goto L_0x0306;
                    case 5: goto L_0x0306;
                    case 6: goto L_0x0306;
                    case 7: goto L_0x02f2;
                    case 8: goto L_0x02de;
                    case 9: goto L_0x02c1;
                    case 10: goto L_0x02be;
                    case 11: goto L_0x02af;
                    case 12: goto L_0x0269;
                    case 13: goto L_0x0260;
                    case 14: goto L_0x0259;
                    case 15: goto L_0x0256;
                    case 16: goto L_0x0252;
                    case 17: goto L_0x024e;
                    case 18: goto L_0x0243;
                    case 19: goto L_0x023f;
                    case 20: goto L_0x023f;
                    case 21: goto L_0x023b;
                    case 22: goto L_0x0231;
                    case 23: goto L_0x01e6;
                    case 24: goto L_0x01b7;
                    case 25: goto L_0x01b4;
                    case 26: goto L_0x01b1;
                    case 27: goto L_0x01a7;
                    case 28: goto L_0x01a3;
                    case 29: goto L_0x0186;
                    default: goto L_0x017e;
                }
            L_0x017e:
                com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
                java.lang.String r2 = "Unrecognized codec identifier."
                r1.<init>((java.lang.String) r2)
                throw r1
            L_0x0186:
                r1 = 4
                byte[] r1 = new byte[r1]
                byte[] r3 = r0.f7691i
                byte r11 = r3[r6]
                r1[r6] = r11
                byte r11 = r3[r4]
                r1[r4] = r11
                byte r11 = r3[r5]
                r1[r5] = r11
                byte r3 = r3[r7]
                r1[r7] = r3
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "application/dvbsubs"
                goto L_0x02d4
            L_0x01a3:
                java.lang.String r1 = "application/pgs"
                goto L_0x031e
            L_0x01a7:
                byte[] r1 = r0.f7691i
                java.util.List r1 = java.util.Collections.singletonList(r1)
                r3 = r1
                r1 = r2
                goto L_0x031f
            L_0x01b1:
                r1 = r9
                goto L_0x031e
            L_0x01b4:
                r1 = r10
                goto L_0x031e
            L_0x01b7:
                int r1 = r0.M
                int r1 = c.e.a.a.o.I.c((int) r1)
                if (r1 != 0) goto L_0x01de
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Unsupported PCM bit depth: "
                r1.append(r3)
                int r3 = r0.M
                r1.append(r3)
                java.lang.String r3 = ". Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                c.e.a.a.o.p.d(r13, r1)
                goto L_0x022e
            L_0x01de:
                r23 = r1
                r1 = r11
                r3 = r15
                r20 = -1
                goto L_0x0323
            L_0x01e6:
                c.e.a.a.o.v r1 = new c.e.a.a.o.v
                byte[] r3 = r0.f7691i
                r1.<init>((byte[]) r3)
                boolean r1 = b(r1)
                if (r1 == 0) goto L_0x021a
                int r1 = r0.M
                int r1 = c.e.a.a.o.I.c((int) r1)
                if (r1 != 0) goto L_0x01de
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Unsupported PCM bit depth: "
                r1.append(r3)
                int r3 = r0.M
                r1.append(r3)
                java.lang.String r3 = ". Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                c.e.a.a.o.p.d(r13, r1)
                goto L_0x022e
            L_0x021a:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Non-PCM MS/ACM is unsupported. Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                c.e.a.a.o.p.d(r13, r1)
            L_0x022e:
                r1 = r14
                goto L_0x031e
            L_0x0231:
                byte[] r1 = r0.f7691i
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "audio/flac"
                goto L_0x02d4
            L_0x023b:
                java.lang.String r1 = "audio/vnd.dts.hd"
                goto L_0x031e
            L_0x023f:
                java.lang.String r1 = "audio/vnd.dts"
                goto L_0x031e
            L_0x0243:
                c.e.a.a.e.c.g$c r1 = new c.e.a.a.e.c.g$c
                r1.<init>()
                r0.Q = r1
                java.lang.String r1 = "audio/true-hd"
                goto L_0x031e
            L_0x024e:
                java.lang.String r1 = "audio/eac3"
                goto L_0x031e
            L_0x0252:
                java.lang.String r1 = "audio/ac3"
                goto L_0x031e
            L_0x0256:
                java.lang.String r1 = "audio/mpeg"
                goto L_0x025b
            L_0x0259:
                java.lang.String r1 = "audio/mpeg-L2"
            L_0x025b:
                r3 = r15
                r20 = 4096(0x1000, float:5.74E-42)
                goto L_0x0321
            L_0x0260:
                byte[] r1 = r0.f7691i
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "audio/mp4a-latm"
                goto L_0x02d4
            L_0x0269:
                r1 = 5760(0x1680, float:8.071E-42)
                java.util.ArrayList r11 = new java.util.ArrayList
                r11.<init>(r7)
                byte[] r12 = r0.f7691i
                r11.add(r12)
                java.nio.ByteBuffer r12 = java.nio.ByteBuffer.allocate(r3)
                java.nio.ByteOrder r13 = java.nio.ByteOrder.nativeOrder()
                java.nio.ByteBuffer r12 = r12.order(r13)
                long r13 = r0.O
                java.nio.ByteBuffer r12 = r12.putLong(r13)
                byte[] r12 = r12.array()
                r11.add(r12)
                java.nio.ByteBuffer r3 = java.nio.ByteBuffer.allocate(r3)
                java.nio.ByteOrder r12 = java.nio.ByteOrder.nativeOrder()
                java.nio.ByteBuffer r3 = r3.order(r12)
                long r12 = r0.P
                java.nio.ByteBuffer r3 = r3.putLong(r12)
                byte[] r3 = r3.array()
                r11.add(r3)
                java.lang.String r3 = "audio/opus"
                r1 = r3
                r3 = r11
                r20 = 5760(0x1680, float:8.071E-42)
                goto L_0x0321
            L_0x02af:
                r1 = 8192(0x2000, float:1.14794E-41)
                byte[] r3 = r0.f7691i
                java.util.List r3 = a((byte[]) r3)
                java.lang.String r11 = "audio/vorbis"
                r1 = r11
                r20 = 8192(0x2000, float:1.14794E-41)
                goto L_0x0321
            L_0x02be:
                java.lang.String r1 = "video/x-unknown"
                goto L_0x031e
            L_0x02c1:
                c.e.a.a.o.v r1 = new c.e.a.a.o.v
                byte[] r3 = r0.f7691i
                r1.<init>((byte[]) r3)
                android.util.Pair r1 = a((c.e.a.a.o.v) r1)
                java.lang.Object r3 = r1.first
                java.lang.String r3 = (java.lang.String) r3
                java.lang.Object r1 = r1.second
                java.util.List r1 = (java.util.List) r1
            L_0x02d4:
                r20 = -1
                r23 = -1
                r31 = r3
                r3 = r1
                r1 = r31
                goto L_0x0323
            L_0x02de:
                c.e.a.a.o.v r1 = new c.e.a.a.o.v
                byte[] r3 = r0.f7691i
                r1.<init>((byte[]) r3)
                c.e.a.a.p.l r1 = c.e.a.a.p.l.a(r1)
                java.util.List<byte[]> r3 = r1.f9700a
                int r1 = r1.f9701b
                r0.V = r1
                java.lang.String r1 = "video/hevc"
                goto L_0x031f
            L_0x02f2:
                c.e.a.a.o.v r1 = new c.e.a.a.o.v
                byte[] r3 = r0.f7691i
                r1.<init>((byte[]) r3)
                c.e.a.a.p.h r1 = c.e.a.a.p.h.b(r1)
                java.util.List<byte[]> r3 = r1.f9692a
                int r1 = r1.f9693b
                r0.V = r1
                java.lang.String r1 = "video/avc"
                goto L_0x031f
            L_0x0306:
                byte[] r1 = r0.f7691i
                if (r1 != 0) goto L_0x030c
                r1 = r15
                goto L_0x0310
            L_0x030c:
                java.util.List r1 = java.util.Collections.singletonList(r1)
            L_0x0310:
                java.lang.String r3 = "video/mp4v-es"
                goto L_0x02d4
            L_0x0313:
                java.lang.String r1 = "video/mpeg2"
                goto L_0x031e
            L_0x0316:
                java.lang.String r1 = "video/av01"
                goto L_0x031e
            L_0x0319:
                java.lang.String r1 = "video/x-vnd.on2.vp9"
                goto L_0x031e
            L_0x031c:
                java.lang.String r1 = "video/x-vnd.on2.vp8"
            L_0x031e:
                r3 = r15
            L_0x031f:
                r20 = -1
            L_0x0321:
                r23 = -1
            L_0x0323:
                boolean r11 = r0.S
                r11 = r11 | r6
                boolean r12 = r0.R
                if (r12 == 0) goto L_0x032c
                r12 = 2
                goto L_0x032d
            L_0x032c:
                r12 = 0
            L_0x032d:
                r11 = r11 | r12
                boolean r12 = c.e.a.a.o.s.j(r1)
                if (r12 == 0) goto L_0x0359
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                int r2 = r0.L
                int r5 = r0.N
                com.google.android.exoplayer2.drm.DrmInitData r6 = r0.f7692j
                java.lang.String r7 = r0.T
                r17 = r1
                r21 = r2
                r22 = r5
                r24 = r3
                r25 = r6
                r26 = r11
                r27 = r7
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r16, (java.lang.String) r17, (java.lang.String) r18, (int) r19, (int) r20, (int) r21, (int) r22, (int) r23, (java.util.List<byte[]>) r24, (com.google.android.exoplayer2.drm.DrmInitData) r25, (int) r26, (java.lang.String) r27)
                r7 = 1
                goto L_0x04df
            L_0x0359:
                boolean r4 = c.e.a.a.o.s.l(r1)
                if (r4 == 0) goto L_0x0459
                int r2 = r0.o
                if (r2 != 0) goto L_0x0373
                int r2 = r0.m
                if (r2 != r8) goto L_0x0369
                int r2 = r0.f7693k
            L_0x0369:
                r0.m = r2
                int r2 = r0.n
                if (r2 != r8) goto L_0x0371
                int r2 = r0.f7694l
            L_0x0371:
                r0.n = r2
            L_0x0373:
                r2 = -1082130432(0xffffffffbf800000, float:-1.0)
                int r4 = r0.m
                if (r4 == r8) goto L_0x038b
                int r7 = r0.n
                if (r7 == r8) goto L_0x038b
                int r2 = r0.f7694l
                int r2 = r2 * r4
                float r2 = (float) r2
                int r4 = r0.f7693k
                int r4 = r4 * r7
                float r4 = (float) r4
                float r2 = r2 / r4
                r26 = r2
                goto L_0x038d
            L_0x038b:
                r26 = -1082130432(0xffffffffbf800000, float:-1.0)
            L_0x038d:
                boolean r2 = r0.v
                if (r2 == 0) goto L_0x03a0
                byte[] r2 = r32.a()
                com.google.android.exoplayer2.video.ColorInfo r15 = new com.google.android.exoplayer2.video.ColorInfo
                int r4 = r0.w
                int r7 = r0.y
                int r9 = r0.x
                r15.<init>(r4, r7, r9, r2)
            L_0x03a0:
                r29 = r15
                java.lang.String r2 = r0.f7683a
                java.lang.String r4 = "htc_video_rotA-000"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03ae
                r2 = 0
                goto L_0x03d6
            L_0x03ae:
                java.lang.String r2 = r0.f7683a
                java.lang.String r4 = "htc_video_rotA-090"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03bb
                r2 = 90
                goto L_0x03d6
            L_0x03bb:
                java.lang.String r2 = r0.f7683a
                java.lang.String r4 = "htc_video_rotA-180"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03c8
                r2 = 180(0xb4, float:2.52E-43)
                goto L_0x03d6
            L_0x03c8:
                java.lang.String r2 = r0.f7683a
                java.lang.String r4 = "htc_video_rotA-270"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03d5
                r2 = 270(0x10e, float:3.78E-43)
                goto L_0x03d6
            L_0x03d5:
                r2 = -1
            L_0x03d6:
                int r4 = r0.p
                if (r4 != 0) goto L_0x042e
                float r4 = r0.q
                r7 = 0
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x042e
                float r4 = r0.r
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x042e
                float r4 = r0.s
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x03f6
                r25 = 0
                goto L_0x0430
            L_0x03f6:
                float r4 = r0.r
                r6 = 1119092736(0x42b40000, float:90.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x0405
                r6 = 90
                r25 = 90
                goto L_0x0430
            L_0x0405:
                float r4 = r0.r
                r6 = -1020002304(0xffffffffc3340000, float:-180.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 == 0) goto L_0x0429
                float r4 = r0.r
                r6 = 1127481344(0x43340000, float:180.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x041a
                goto L_0x0429
            L_0x041a:
                float r4 = r0.r
                r6 = -1028390912(0xffffffffc2b40000, float:-90.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x042e
                r6 = 270(0x10e, float:3.78E-43)
                r25 = 270(0x10e, float:3.78E-43)
                goto L_0x0430
            L_0x0429:
                r6 = 180(0xb4, float:2.52E-43)
                r25 = 180(0xb4, float:2.52E-43)
                goto L_0x0430
            L_0x042e:
                r25 = r2
            L_0x0430:
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                int r2 = r0.f7693k
                int r4 = r0.f7694l
                r23 = -1082130432(0xffffffffbf800000, float:-1.0)
                byte[] r6 = r0.t
                int r7 = r0.u
                com.google.android.exoplayer2.drm.DrmInitData r8 = r0.f7692j
                r17 = r1
                r21 = r2
                r22 = r4
                r24 = r3
                r27 = r6
                r28 = r7
                r30 = r8
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r16, (java.lang.String) r17, (java.lang.String) r18, (int) r19, (int) r20, (int) r21, (int) r22, (float) r23, (java.util.List<byte[]>) r24, (int) r25, (float) r26, (byte[]) r27, (int) r28, (com.google.android.exoplayer2.video.ColorInfo) r29, (com.google.android.exoplayer2.drm.DrmInitData) r30)
                r7 = 2
                goto L_0x04df
            L_0x0459:
                boolean r4 = r10.equals(r1)
                if (r4 == 0) goto L_0x046d
                java.lang.String r2 = java.lang.Integer.toString(r34)
                java.lang.String r3 = r0.T
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.f7692j
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r2, (java.lang.String) r1, (int) r11, (java.lang.String) r3, (com.google.android.exoplayer2.drm.DrmInitData) r4)
                goto L_0x04df
            L_0x046d:
                boolean r4 = r9.equals(r1)
                if (r4 == 0) goto L_0x04a6
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>(r5)
                byte[] r3 = c.e.a.a.e.c.g.f7673d
                r2.add(r3)
                byte[] r3 = r0.f7691i
                r2.add(r3)
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                java.lang.String r3 = r0.T
                r22 = -1
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.f7692j
                r24 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r17 = r1
                r20 = r11
                r21 = r3
                r23 = r4
                r26 = r2
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r16, (java.lang.String) r17, (java.lang.String) r18, (int) r19, (int) r20, (java.lang.String) r21, (int) r22, (com.google.android.exoplayer2.drm.DrmInitData) r23, (long) r24, (java.util.List<byte[]>) r26)
                goto L_0x04df
            L_0x04a6:
                boolean r2 = r2.equals(r1)
                if (r2 != 0) goto L_0x04c5
                java.lang.String r2 = "application/pgs"
                boolean r2 = r2.equals(r1)
                if (r2 != 0) goto L_0x04c5
                java.lang.String r2 = "application/dvbsubs"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L_0x04bd
                goto L_0x04c5
            L_0x04bd:
                com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
                java.lang.String r2 = "Unexpected MIME type."
                r1.<init>((java.lang.String) r2)
                throw r1
            L_0x04c5:
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                java.lang.String r2 = r0.T
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.f7692j
                r17 = r1
                r20 = r11
                r21 = r3
                r22 = r2
                r23 = r4
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r16, (java.lang.String) r17, (java.lang.String) r18, (int) r19, (int) r20, (java.util.List<byte[]>) r21, (java.lang.String) r22, (com.google.android.exoplayer2.drm.DrmInitData) r23)
            L_0x04df:
                int r2 = r0.f7685c
                r3 = r33
                c.e.a.a.e.q r2 = r3.a(r2, r7)
                r0.U = r2
                c.e.a.a.e.q r2 = r0.U
                r2.a(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.c.g.b.a(c.e.a.a.e.i, int):void");
        }

        public static boolean b(v vVar) {
            try {
                int p2 = vVar.p();
                boolean z2 = true;
                if (p2 == 1) {
                    return true;
                }
                if (p2 != 65534) {
                    return false;
                }
                vVar.e(24);
                if (!(vVar.q() == g.f7676g.getMostSignificantBits() && vVar.q() == g.f7676g.getLeastSignificantBits())) {
                    z2 = false;
                }
                return z2;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }

        public final byte[] a() {
            if (this.B == -1.0f || this.C == -1.0f || this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.put((byte) 0);
            wrap.putShort((short) ((int) ((this.B * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.C * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.D * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.E * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.F * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.G * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.H * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.I * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) (this.J + 0.5f)));
            wrap.putShort((short) ((int) (this.K + 0.5f)));
            wrap.putShort((short) this.z);
            wrap.putShort((short) this.A);
            return bArr;
        }

        public static Pair<String, List<byte[]>> a(v vVar) {
            try {
                vVar.f(16);
                long n2 = vVar.n();
                if (n2 == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (n2 == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (n2 == 826496599) {
                    byte[] bArr = vVar.f9634a;
                    for (int c2 = vVar.c() + 20; c2 < bArr.length - 4; c2++) {
                        if (bArr[c2] == 0 && bArr[c2 + 1] == 0 && bArr[c2 + 2] == 1 && bArr[c2 + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, c2, bArr.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                p.d("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        public static List<byte[]> a(byte[] bArr) {
            try {
                if (bArr[0] == 2) {
                    int i2 = 1;
                    int i3 = 0;
                    while (bArr[i2] == -1) {
                        i3 += 255;
                        i2++;
                    }
                    int i4 = i2 + 1;
                    int i5 = i3 + bArr[i2];
                    int i6 = 0;
                    while (bArr[i4] == -1) {
                        i6 += 255;
                        i4++;
                    }
                    int i7 = i4 + 1;
                    int i8 = i6 + bArr[i4];
                    if (bArr[i7] == 1) {
                        byte[] bArr2 = new byte[i5];
                        System.arraycopy(bArr, i7, bArr2, 0, i5);
                        int i9 = i7 + i5;
                        if (bArr[i9] == 3) {
                            int i10 = i9 + i8;
                            if (bArr[i10] == 5) {
                                byte[] bArr3 = new byte[(bArr.length - i10)];
                                System.arraycopy(bArr, i10, bArr3, 0, bArr.length - i10);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw new ParserException("Error parsing vorbis codec private");
                        }
                        throw new ParserException("Error parsing vorbis codec private");
                    }
                    throw new ParserException("Error parsing vorbis codec private");
                }
                throw new ParserException("Error parsing vorbis codec private");
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }
    }

    /* compiled from: MatroskaExtractor */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f7695a = new byte[10];

        /* renamed from: b  reason: collision with root package name */
        public boolean f7696b;

        /* renamed from: c  reason: collision with root package name */
        public int f7697c;

        /* renamed from: d  reason: collision with root package name */
        public int f7698d;

        /* renamed from: e  reason: collision with root package name */
        public long f7699e;

        /* renamed from: f  reason: collision with root package name */
        public int f7700f;

        public void a() {
            this.f7696b = false;
        }

        public void a(h hVar, int i2, int i3) {
            if (!this.f7696b) {
                hVar.a(this.f7695a, 0, 10);
                hVar.b();
                if (C0695h.b(this.f7695a) != 0) {
                    this.f7696b = true;
                    this.f7697c = 0;
                } else {
                    return;
                }
            }
            if (this.f7697c == 0) {
                this.f7700f = i2;
                this.f7698d = 0;
            }
            this.f7698d += i3;
        }

        public void a(b bVar, long j2) {
            if (this.f7696b) {
                int i2 = this.f7697c;
                this.f7697c = i2 + 1;
                if (i2 == 0) {
                    this.f7699e = j2;
                }
                if (this.f7697c >= 16) {
                    bVar.U.a(this.f7699e, this.f7700f, this.f7698d, 0, bVar.f7690h);
                    this.f7697c = 0;
                }
            }
        }

        public void a(b bVar) {
            if (this.f7696b && this.f7697c > 0) {
                bVar.U.a(this.f7699e, this.f7700f, this.f7698d, 0, bVar.f7690h);
                this.f7697c = 0;
            }
        }
    }

    public g() {
        this(0);
    }

    public static /* synthetic */ c.e.a.a.e.g[] e() {
        return new c.e.a.a.e.g[]{new g()};
    }

    public final void a() {
    }

    public final boolean a(h hVar) {
        return new h().b(hVar);
    }

    public int b(int i2) {
        switch (i2) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    public boolean c(int i2) {
        return i2 == 357149030 || i2 == 524531317 || i2 == 475249515 || i2 == 374648427;
    }

    public final o d() {
        if (!(this.w == -1 || this.z == -9223372036854775807L)) {
            c.e.a.a.o.q qVar = this.I;
            if (!(qVar == null || qVar.a() == 0)) {
                c.e.a.a.o.q qVar2 = this.J;
                if (qVar2 != null && qVar2.a() == this.I.a()) {
                    int a2 = this.I.a();
                    int[] iArr = new int[a2];
                    long[] jArr = new long[a2];
                    long[] jArr2 = new long[a2];
                    long[] jArr3 = new long[a2];
                    int i2 = 0;
                    for (int i3 = 0; i3 < a2; i3++) {
                        jArr3[i3] = this.I.a(i3);
                        jArr[i3] = this.w + this.J.a(i3);
                    }
                    while (true) {
                        int i4 = a2 - 1;
                        if (i2 < i4) {
                            int i5 = i2 + 1;
                            iArr[i2] = (int) (jArr[i5] - jArr[i2]);
                            jArr2[i2] = jArr3[i5] - jArr3[i2];
                            i2 = i5;
                        } else {
                            iArr[i4] = (int) ((this.w + this.v) - jArr[i4]);
                            jArr2[i4] = this.z - jArr3[i4];
                            this.I = null;
                            this.J = null;
                            return new c.e.a.a.e.b(iArr, jArr, jArr2, jArr3);
                        }
                    }
                }
            }
        }
        this.I = null;
        this.J = null;
        return new o.b(this.z);
    }

    public final void f() {
        this.U = 0;
        this.ca = 0;
        this.ba = 0;
        this.V = false;
        this.W = false;
        this.Y = false;
        this.aa = 0;
        this.Z = 0;
        this.X = false;
        this.q.C();
    }

    public g(int i2) {
        this(new c(), i2);
    }

    public final void a(i iVar) {
        this.fa = iVar;
    }

    public g(e eVar, int i2) {
        this.w = -1;
        this.x = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.F = -1;
        this.G = -1;
        this.H = -9223372036854775807L;
        this.f7677h = eVar;
        this.f7677h.a((d) new a());
        this.f7680k = (i2 & 1) != 0 ? false : true;
        this.f7678i = new i();
        this.f7679j = new SparseArray<>();
        this.n = new v(4);
        this.o = new v(ByteBuffer.allocate(4).putInt(-1).array());
        this.p = new v(4);
        this.f7681l = new v(t.f9611a);
        this.m = new v(4);
        this.q = new v();
        this.r = new v();
        this.s = new v(8);
        this.t = new v();
    }

    public void a(long j2, long j3) {
        this.H = -9223372036854775807L;
        this.L = 0;
        this.f7677h.reset();
        this.f7678i.b();
        f();
        for (int i2 = 0; i2 < this.f7679j.size(); i2++) {
            this.f7679j.valueAt(i2).c();
        }
    }

    public final int a(h hVar, n nVar) {
        this.da = false;
        boolean z2 = true;
        while (z2 && !this.da) {
            z2 = this.f7677h.a(hVar);
            if (z2 && a(nVar, hVar.getPosition())) {
                return 1;
            }
        }
        if (z2) {
            return 0;
        }
        for (int i2 = 0; i2 < this.f7679j.size(); i2++) {
            this.f7679j.valueAt(i2).b();
        }
        return -1;
    }

    public void a(int i2, long j2, long j3) {
        if (i2 == 160) {
            this.ea = false;
        } else if (i2 == 174) {
            this.A = new b();
        } else if (i2 == 187) {
            this.K = false;
        } else if (i2 == 19899) {
            this.C = -1;
            this.D = -1;
        } else if (i2 == 20533) {
            this.A.f7688f = true;
        } else if (i2 == 21968) {
            this.A.v = true;
        } else if (i2 == 25152) {
        } else {
            if (i2 == 408125543) {
                long j4 = this.w;
                if (j4 == -1 || j4 == j2) {
                    this.w = j2;
                    this.v = j3;
                    return;
                }
                throw new ParserException("Multiple Segment elements not supported");
            } else if (i2 == 475249515) {
                this.I = new c.e.a.a.o.q();
                this.J = new c.e.a.a.o.q();
            } else if (i2 != 524531317 || this.B) {
            } else {
                if (!this.f7680k || this.F == -1) {
                    this.fa.a(new o.b(this.z));
                    this.B = true;
                    return;
                }
                this.E = true;
            }
        }
    }

    public void a(int i2) {
        if (i2 != 160) {
            if (i2 == 174) {
                if (a(this.A.f7684b)) {
                    b bVar = this.A;
                    bVar.a(this.fa, bVar.f7685c);
                    SparseArray<b> sparseArray = this.f7679j;
                    b bVar2 = this.A;
                    sparseArray.put(bVar2.f7685c, bVar2);
                }
                this.A = null;
            } else if (i2 == 19899) {
                int i3 = this.C;
                if (i3 != -1) {
                    long j2 = this.D;
                    if (j2 != -1) {
                        if (i3 == 475249515) {
                            this.F = j2;
                        }
                    }
                }
                throw new ParserException("Mandatory element SeekID or SeekPosition not found");
            } else if (i2 == 25152) {
                b bVar3 = this.A;
                if (bVar3.f7688f) {
                    q.a aVar = bVar3.f7690h;
                    if (aVar != null) {
                        bVar3.f7692j = new DrmInitData(new DrmInitData.SchemeData(C0744q.f9728a, "video/webm", aVar.f8329b));
                    } else {
                        throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                    }
                }
            } else if (i2 == 28032) {
                b bVar4 = this.A;
                if (bVar4.f7688f && bVar4.f7689g != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
            } else if (i2 == 357149030) {
                if (this.x == -9223372036854775807L) {
                    this.x = RetryManager.NANOSECONDS_IN_MS;
                }
                long j3 = this.y;
                if (j3 != -9223372036854775807L) {
                    this.z = a(j3);
                }
            } else if (i2 != 374648427) {
                if (i2 == 475249515 && !this.B) {
                    this.fa.a(d());
                    this.B = true;
                }
            } else if (this.f7679j.size() != 0) {
                this.fa.a();
            } else {
                throw new ParserException("No valid tracks were found");
            }
        } else if (this.L == 2) {
            if (!this.ea) {
                this.T |= 1;
            }
            a(this.f7679j.get(this.R), this.M);
            this.L = 0;
        }
    }

    public void a(int i2, long j2) {
        if (i2 != 20529) {
            if (i2 != 20530) {
                boolean z2 = false;
                switch (i2) {
                    case 131:
                        this.A.f7686d = (int) j2;
                        return;
                    case 136:
                        b bVar = this.A;
                        if (j2 == 1) {
                            z2 = true;
                        }
                        bVar.S = z2;
                        return;
                    case 155:
                        this.N = a(j2);
                        return;
                    case 159:
                        this.A.L = (int) j2;
                        return;
                    case 176:
                        this.A.f7693k = (int) j2;
                        return;
                    case 179:
                        this.I.a(a(j2));
                        return;
                    case 186:
                        this.A.f7694l = (int) j2;
                        return;
                    case 215:
                        this.A.f7685c = (int) j2;
                        return;
                    case 231:
                        this.H = a(j2);
                        return;
                    case 241:
                        if (!this.K) {
                            this.J.a(j2);
                            this.K = true;
                            return;
                        }
                        return;
                    case 251:
                        this.ea = true;
                        return;
                    case 16980:
                        if (j2 != 3) {
                            throw new ParserException("ContentCompAlgo " + j2 + " not supported");
                        }
                        return;
                    case 17029:
                        if (j2 < 1 || j2 > 2) {
                            throw new ParserException("DocTypeReadVersion " + j2 + " not supported");
                        }
                        return;
                    case 17143:
                        if (j2 != 1) {
                            throw new ParserException("EBMLReadVersion " + j2 + " not supported");
                        }
                        return;
                    case 18401:
                        if (j2 != 5) {
                            throw new ParserException("ContentEncAlgo " + j2 + " not supported");
                        }
                        return;
                    case 18408:
                        if (j2 != 1) {
                            throw new ParserException("AESSettingsCipherMode " + j2 + " not supported");
                        }
                        return;
                    case 21420:
                        this.D = j2 + this.w;
                        return;
                    case 21432:
                        int i3 = (int) j2;
                        if (i3 == 0) {
                            this.A.u = 0;
                            return;
                        } else if (i3 == 1) {
                            this.A.u = 2;
                            return;
                        } else if (i3 == 3) {
                            this.A.u = 1;
                            return;
                        } else if (i3 == 15) {
                            this.A.u = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        this.A.m = (int) j2;
                        return;
                    case 21682:
                        this.A.o = (int) j2;
                        return;
                    case 21690:
                        this.A.n = (int) j2;
                        return;
                    case 21930:
                        b bVar2 = this.A;
                        if (j2 == 1) {
                            z2 = true;
                        }
                        bVar2.R = z2;
                        return;
                    case 22186:
                        this.A.O = j2;
                        return;
                    case 22203:
                        this.A.P = j2;
                        return;
                    case 25188:
                        this.A.M = (int) j2;
                        return;
                    case 30321:
                        int i4 = (int) j2;
                        if (i4 == 0) {
                            this.A.p = 0;
                            return;
                        } else if (i4 == 1) {
                            this.A.p = 1;
                            return;
                        } else if (i4 == 2) {
                            this.A.p = 2;
                            return;
                        } else if (i4 == 3) {
                            this.A.p = 3;
                            return;
                        } else {
                            return;
                        }
                    case 2352003:
                        this.A.f7687e = (int) j2;
                        return;
                    case 2807729:
                        this.x = j2;
                        return;
                    default:
                        switch (i2) {
                            case 21945:
                                int i5 = (int) j2;
                                if (i5 == 1) {
                                    this.A.y = 2;
                                    return;
                                } else if (i5 == 2) {
                                    this.A.y = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i6 = (int) j2;
                                if (i6 != 1) {
                                    if (i6 == 16) {
                                        this.A.x = 6;
                                        return;
                                    } else if (i6 == 18) {
                                        this.A.x = 7;
                                        return;
                                    } else if (!(i6 == 6 || i6 == 7)) {
                                        return;
                                    }
                                }
                                this.A.x = 3;
                                return;
                            case 21947:
                                b bVar3 = this.A;
                                bVar3.v = true;
                                int i7 = (int) j2;
                                if (i7 == 1) {
                                    bVar3.w = 1;
                                    return;
                                } else if (i7 == 9) {
                                    bVar3.w = 6;
                                    return;
                                } else if (i7 == 4 || i7 == 5 || i7 == 6 || i7 == 7) {
                                    this.A.w = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                this.A.z = (int) j2;
                                return;
                            case 21949:
                                this.A.A = (int) j2;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j2 != 1) {
                throw new ParserException("ContentEncodingScope " + j2 + " not supported");
            }
        } else if (j2 != 0) {
            throw new ParserException("ContentEncodingOrder " + j2 + " not supported");
        }
    }

    public void a(int i2, double d2) {
        if (i2 == 181) {
            this.A.N = (int) d2;
        } else if (i2 != 17545) {
            switch (i2) {
                case 21969:
                    this.A.B = (float) d2;
                    return;
                case 21970:
                    this.A.C = (float) d2;
                    return;
                case 21971:
                    this.A.D = (float) d2;
                    return;
                case 21972:
                    this.A.E = (float) d2;
                    return;
                case 21973:
                    this.A.F = (float) d2;
                    return;
                case 21974:
                    this.A.G = (float) d2;
                    return;
                case 21975:
                    this.A.H = (float) d2;
                    return;
                case 21976:
                    this.A.I = (float) d2;
                    return;
                case 21977:
                    this.A.J = (float) d2;
                    return;
                case 21978:
                    this.A.K = (float) d2;
                    return;
                default:
                    switch (i2) {
                        case 30323:
                            this.A.q = (float) d2;
                            return;
                        case 30324:
                            this.A.r = (float) d2;
                            return;
                        case 30325:
                            this.A.s = (float) d2;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.y = (long) d2;
        }
    }

    public void a(int i2, String str) {
        if (i2 == 134) {
            this.A.f7684b = str;
        } else if (i2 != 17026) {
            if (i2 == 21358) {
                this.A.f7683a = str;
            } else if (i2 == 2274716) {
                String unused = this.A.T = str;
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            throw new ParserException("DocType " + str + " not supported");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0200, code lost:
        throw new com.google.android.exoplayer2.ParserException("EBML lacing sample size out of range.");
     */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0237  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0239  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0253  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0256  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r20, int r21, c.e.a.a.e.h r22) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = r21
            r3 = r22
            r4 = 161(0xa1, float:2.26E-43)
            r5 = 163(0xa3, float:2.28E-43)
            r6 = 4
            r7 = 0
            r8 = 1
            if (r1 == r4) goto L_0x0094
            if (r1 == r5) goto L_0x0094
            r4 = 16981(0x4255, float:2.3795E-41)
            if (r1 == r4) goto L_0x0087
            r4 = 18402(0x47e2, float:2.5787E-41)
            if (r1 == r4) goto L_0x0077
            r4 = 21419(0x53ab, float:3.0014E-41)
            if (r1 == r4) goto L_0x0058
            r4 = 25506(0x63a2, float:3.5742E-41)
            if (r1 == r4) goto L_0x004b
            r4 = 30322(0x7672, float:4.249E-41)
            if (r1 != r4) goto L_0x0034
            c.e.a.a.e.c.g$b r1 = r0.A
            byte[] r4 = new byte[r2]
            r1.t = r4
            byte[] r1 = r1.t
            r3.readFully(r1, r7, r2)
            goto L_0x02b4
        L_0x0034:
            com.google.android.exoplayer2.ParserException r2 = new com.google.android.exoplayer2.ParserException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Unexpected id: "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>((java.lang.String) r1)
            throw r2
        L_0x004b:
            c.e.a.a.e.c.g$b r1 = r0.A
            byte[] r4 = new byte[r2]
            r1.f7691i = r4
            byte[] r1 = r1.f7691i
            r3.readFully(r1, r7, r2)
            goto L_0x02b4
        L_0x0058:
            c.e.a.a.o.v r1 = r0.p
            byte[] r1 = r1.f9634a
            java.util.Arrays.fill(r1, r7)
            c.e.a.a.o.v r1 = r0.p
            byte[] r1 = r1.f9634a
            int r6 = r6 - r2
            r3.readFully(r1, r6, r2)
            c.e.a.a.o.v r1 = r0.p
            r1.e(r7)
            c.e.a.a.o.v r1 = r0.p
            long r1 = r1.w()
            int r2 = (int) r1
            r0.C = r2
            goto L_0x02b4
        L_0x0077:
            byte[] r1 = new byte[r2]
            r3.readFully(r1, r7, r2)
            c.e.a.a.e.c.g$b r2 = r0.A
            c.e.a.a.e.q$a r3 = new c.e.a.a.e.q$a
            r3.<init>(r8, r1, r7, r7)
            r2.f7690h = r3
            goto L_0x02b4
        L_0x0087:
            c.e.a.a.e.c.g$b r1 = r0.A
            byte[] r4 = new byte[r2]
            r1.f7689g = r4
            byte[] r1 = r1.f7689g
            r3.readFully(r1, r7, r2)
            goto L_0x02b4
        L_0x0094:
            int r4 = r0.L
            r9 = 8
            if (r4 != 0) goto L_0x00b9
            c.e.a.a.e.c.i r4 = r0.f7678i
            long r10 = r4.a(r3, r7, r8, r9)
            int r4 = (int) r10
            r0.R = r4
            c.e.a.a.e.c.i r4 = r0.f7678i
            int r4 = r4.a()
            r0.S = r4
            r10 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.N = r10
            r0.L = r8
            c.e.a.a.o.v r4 = r0.n
            r4.C()
        L_0x00b9:
            android.util.SparseArray<c.e.a.a.e.c.g$b> r4 = r0.f7679j
            int r10 = r0.R
            java.lang.Object r4 = r4.get(r10)
            c.e.a.a.e.c.g$b r4 = (c.e.a.a.e.c.g.b) r4
            if (r4 != 0) goto L_0x00cf
            int r1 = r0.S
            int r1 = r2 - r1
            r3.c(r1)
            r0.L = r7
            return
        L_0x00cf:
            int r10 = r0.L
            if (r10 != r8) goto L_0x0281
            r10 = 3
            r0.a((c.e.a.a.e.h) r3, (int) r10)
            c.e.a.a.o.v r11 = r0.n
            byte[] r11 = r11.f9634a
            r12 = 2
            byte r11 = r11[r12]
            r11 = r11 & 6
            int r11 = r11 >> r8
            r13 = 255(0xff, float:3.57E-43)
            if (r11 != 0) goto L_0x00fa
            r0.P = r8
            int[] r6 = r0.Q
            int[] r6 = a((int[]) r6, (int) r8)
            r0.Q = r6
            int[] r6 = r0.Q
            int r11 = r0.S
            int r2 = r2 - r11
            int r2 = r2 - r10
            r6[r7] = r2
        L_0x00f7:
            r6 = 1
            goto L_0x0214
        L_0x00fa:
            if (r1 != r5) goto L_0x0279
            r0.a((c.e.a.a.e.h) r3, (int) r6)
            c.e.a.a.o.v r14 = r0.n
            byte[] r14 = r14.f9634a
            byte r14 = r14[r10]
            r14 = r14 & r13
            int r14 = r14 + r8
            r0.P = r14
            int[] r14 = r0.Q
            int r15 = r0.P
            int[] r14 = a((int[]) r14, (int) r15)
            r0.Q = r14
            if (r11 != r12) goto L_0x0122
            int r10 = r0.S
            int r2 = r2 - r10
            int r2 = r2 - r6
            int r6 = r0.P
            int r2 = r2 / r6
            int[] r10 = r0.Q
            java.util.Arrays.fill(r10, r7, r6, r2)
            goto L_0x00f7
        L_0x0122:
            if (r11 != r8) goto L_0x0159
            r6 = 0
            r10 = 4
            r11 = 0
        L_0x0127:
            int r14 = r0.P
            int r15 = r14 + -1
            if (r6 >= r15) goto L_0x014e
            int[] r14 = r0.Q
            r14[r6] = r7
        L_0x0131:
            int r10 = r10 + r8
            r0.a((c.e.a.a.e.h) r3, (int) r10)
            c.e.a.a.o.v r14 = r0.n
            byte[] r14 = r14.f9634a
            int r15 = r10 + -1
            byte r14 = r14[r15]
            r14 = r14 & r13
            int[] r15 = r0.Q
            r16 = r15[r6]
            int r16 = r16 + r14
            r15[r6] = r16
            if (r14 == r13) goto L_0x0131
            r14 = r15[r6]
            int r11 = r11 + r14
            int r6 = r6 + 1
            goto L_0x0127
        L_0x014e:
            int[] r6 = r0.Q
            int r14 = r14 - r8
            int r15 = r0.S
            int r2 = r2 - r15
            int r2 = r2 - r10
            int r2 = r2 - r11
            r6[r14] = r2
            goto L_0x00f7
        L_0x0159:
            if (r11 != r10) goto L_0x0262
            r6 = 0
            r10 = 4
            r11 = 0
        L_0x015e:
            int r14 = r0.P
            int r15 = r14 + -1
            if (r6 >= r15) goto L_0x0209
            int[] r14 = r0.Q
            r14[r6] = r7
            int r10 = r10 + 1
            r0.a((c.e.a.a.e.h) r3, (int) r10)
            c.e.a.a.o.v r14 = r0.n
            byte[] r14 = r14.f9634a
            int r15 = r10 + -1
            byte r14 = r14[r15]
            if (r14 == 0) goto L_0x0201
            r16 = 0
            r14 = 0
        L_0x017a:
            if (r14 >= r9) goto L_0x01cc
            int r18 = 7 - r14
            int r18 = r8 << r18
            c.e.a.a.o.v r5 = r0.n
            byte[] r5 = r5.f9634a
            byte r5 = r5[r15]
            r5 = r5 & r18
            if (r5 == 0) goto L_0x01c2
            int r10 = r10 + r14
            r0.a((c.e.a.a.e.h) r3, (int) r10)
            c.e.a.a.o.v r5 = r0.n
            byte[] r5 = r5.f9634a
            int r16 = r15 + 1
            byte r5 = r5[r15]
            r5 = r5 & r13
            r15 = r18 ^ -1
            r5 = r5 & r15
            long r7 = (long) r5
            r5 = r16
        L_0x019d:
            r16 = r7
            if (r5 >= r10) goto L_0x01b4
            long r7 = r16 << r9
            c.e.a.a.o.v r15 = r0.n
            byte[] r15 = r15.f9634a
            int r16 = r5 + 1
            byte r5 = r15[r5]
            r5 = r5 & r13
            long r12 = (long) r5
            long r7 = r7 | r12
            r5 = r16
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x019d
        L_0x01b4:
            if (r6 <= 0) goto L_0x01cc
            int r14 = r14 * 7
            int r14 = r14 + 6
            r7 = 1
            long r12 = r7 << r14
            long r12 = r12 - r7
            long r16 = r16 - r12
            goto L_0x01cc
        L_0x01c2:
            int r14 = r14 + 1
            r5 = 163(0xa3, float:2.28E-43)
            r7 = 0
            r8 = 1
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x017a
        L_0x01cc:
            r7 = r16
            r12 = -2147483648(0xffffffff80000000, double:NaN)
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 < 0) goto L_0x01f9
            r12 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 > 0) goto L_0x01f9
            int r5 = (int) r7
            int[] r7 = r0.Q
            if (r6 != 0) goto L_0x01e2
            goto L_0x01e7
        L_0x01e2:
            int r8 = r6 + -1
            r8 = r7[r8]
            int r5 = r5 + r8
        L_0x01e7:
            r7[r6] = r5
            int[] r5 = r0.Q
            r5 = r5[r6]
            int r11 = r11 + r5
            int r6 = r6 + 1
            r5 = 163(0xa3, float:2.28E-43)
            r7 = 0
            r8 = 1
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x015e
        L_0x01f9:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "EBML lacing sample size out of range."
            r1.<init>((java.lang.String) r2)
            throw r1
        L_0x0201:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "No valid varint length mask found"
            r1.<init>((java.lang.String) r2)
            throw r1
        L_0x0209:
            int[] r5 = r0.Q
            r6 = 1
            int r14 = r14 - r6
            int r7 = r0.S
            int r2 = r2 - r7
            int r2 = r2 - r10
            int r2 = r2 - r11
            r5[r14] = r2
        L_0x0214:
            c.e.a.a.o.v r2 = r0.n
            byte[] r2 = r2.f9634a
            r5 = 0
            byte r7 = r2[r5]
            int r5 = r7 << 8
            byte r2 = r2[r6]
            r6 = 255(0xff, float:3.57E-43)
            r2 = r2 & r6
            r2 = r2 | r5
            long r5 = r0.H
            long r7 = (long) r2
            long r7 = r0.a((long) r7)
            long r5 = r5 + r7
            r0.M = r5
            c.e.a.a.o.v r2 = r0.n
            byte[] r2 = r2.f9634a
            r5 = 2
            byte r2 = r2[r5]
            r2 = r2 & r9
            if (r2 != r9) goto L_0x0239
            r2 = 1
            goto L_0x023a
        L_0x0239:
            r2 = 0
        L_0x023a:
            int r6 = r4.f7686d
            if (r6 == r5) goto L_0x0250
            r6 = 163(0xa3, float:2.28E-43)
            if (r1 != r6) goto L_0x024e
            c.e.a.a.o.v r6 = r0.n
            byte[] r6 = r6.f9634a
            byte r6 = r6[r5]
            r5 = 128(0x80, float:1.794E-43)
            r6 = r6 & r5
            if (r6 != r5) goto L_0x024e
            goto L_0x0250
        L_0x024e:
            r5 = 0
            goto L_0x0251
        L_0x0250:
            r5 = 1
        L_0x0251:
            if (r2 == 0) goto L_0x0256
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L_0x0257
        L_0x0256:
            r7 = 0
        L_0x0257:
            r2 = r5 | r7
            r0.T = r2
            r2 = 2
            r0.L = r2
            r2 = 0
            r0.O = r2
            goto L_0x0281
        L_0x0262:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unexpected lacing value: "
            r2.append(r3)
            r2.append(r11)
            java.lang.String r2 = r2.toString()
            r1.<init>((java.lang.String) r2)
            throw r1
        L_0x0279:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "Lacing only supported in SimpleBlocks."
            r1.<init>((java.lang.String) r2)
            throw r1
        L_0x0281:
            r2 = 163(0xa3, float:2.28E-43)
            if (r1 != r2) goto L_0x02ac
        L_0x0285:
            int r1 = r0.O
            int r2 = r0.P
            if (r1 >= r2) goto L_0x02a8
            int[] r2 = r0.Q
            r1 = r2[r1]
            r0.a((c.e.a.a.e.h) r3, (c.e.a.a.e.c.g.b) r4, (int) r1)
            long r1 = r0.M
            int r5 = r0.O
            int r6 = r4.f7687e
            int r5 = r5 * r6
            int r5 = r5 / 1000
            long r5 = (long) r5
            long r1 = r1 + r5
            r0.a((c.e.a.a.e.c.g.b) r4, (long) r1)
            int r1 = r0.O
            r2 = 1
            int r1 = r1 + r2
            r0.O = r1
            goto L_0x0285
        L_0x02a8:
            r1 = 0
            r0.L = r1
            goto L_0x02b4
        L_0x02ac:
            r1 = 0
            int[] r2 = r0.Q
            r1 = r2[r1]
            r0.a((c.e.a.a.e.h) r3, (c.e.a.a.e.c.g.b) r4, (int) r1)
        L_0x02b4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.c.g.a(int, int, c.e.a.a.e.h):void");
    }

    public final void a(b bVar, long j2) {
        b bVar2 = bVar;
        c cVar = bVar2.Q;
        if (cVar != null) {
            cVar.a(bVar2, j2);
        } else {
            long j3 = j2;
            if ("S_TEXT/UTF8".equals(bVar2.f7684b)) {
                a(bVar, "%02d:%02d:%02d,%03d", 19, 1000, f7672c);
            } else if ("S_TEXT/ASS".equals(bVar2.f7684b)) {
                a(bVar, "%01d:%02d:%02d:%02d", 21, 10000, f7675f);
            }
            bVar2.U.a(j2, this.T, this.ca, 0, bVar2.f7690h);
        }
        this.da = true;
        f();
    }

    public final void a(h hVar, int i2) {
        if (this.n.d() < i2) {
            if (this.n.b() < i2) {
                v vVar = this.n;
                byte[] bArr = vVar.f9634a;
                vVar.a(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i2)), this.n.d());
            }
            v vVar2 = this.n;
            hVar.readFully(vVar2.f9634a, vVar2.d(), i2 - this.n.d());
            this.n.d(i2);
        }
    }

    public final void a(h hVar, b bVar, int i2) {
        int i3;
        if ("S_TEXT/UTF8".equals(bVar.f7684b)) {
            a(hVar, f7671b, i2);
        } else if ("S_TEXT/ASS".equals(bVar.f7684b)) {
            a(hVar, f7674e, i2);
        } else {
            c.e.a.a.e.q qVar = bVar.U;
            boolean z2 = true;
            if (!this.V) {
                if (bVar.f7688f) {
                    this.T &= -1073741825;
                    int i4 = 128;
                    if (!this.W) {
                        hVar.readFully(this.n.f9634a, 0, 1);
                        this.U++;
                        byte[] bArr = this.n.f9634a;
                        if ((bArr[0] & 128) != 128) {
                            this.Z = bArr[0];
                            this.W = true;
                        } else {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                    }
                    if ((this.Z & 1) == 1) {
                        boolean z3 = (this.Z & 2) == 2;
                        this.T |= 1073741824;
                        if (!this.X) {
                            hVar.readFully(this.s.f9634a, 0, 8);
                            this.U += 8;
                            this.X = true;
                            byte[] bArr2 = this.n.f9634a;
                            if (!z3) {
                                i4 = 0;
                            }
                            bArr2[0] = (byte) (i4 | 8);
                            this.n.e(0);
                            qVar.a(this.n, 1);
                            this.ca++;
                            this.s.e(0);
                            qVar.a(this.s, 8);
                            this.ca += 8;
                        }
                        if (z3) {
                            if (!this.Y) {
                                hVar.readFully(this.n.f9634a, 0, 1);
                                this.U++;
                                this.n.e(0);
                                this.aa = this.n.u();
                                this.Y = true;
                            }
                            int i5 = this.aa * 4;
                            this.n.c(i5);
                            hVar.readFully(this.n.f9634a, 0, i5);
                            this.U += i5;
                            short s2 = (short) ((this.aa / 2) + 1);
                            int i6 = (s2 * 6) + 2;
                            ByteBuffer byteBuffer = this.u;
                            if (byteBuffer == null || byteBuffer.capacity() < i6) {
                                this.u = ByteBuffer.allocate(i6);
                            }
                            this.u.position(0);
                            this.u.putShort(s2);
                            int i7 = 0;
                            int i8 = 0;
                            while (true) {
                                i3 = this.aa;
                                if (i7 >= i3) {
                                    break;
                                }
                                int y2 = this.n.y();
                                if (i7 % 2 == 0) {
                                    this.u.putShort((short) (y2 - i8));
                                } else {
                                    this.u.putInt(y2 - i8);
                                }
                                i7++;
                                i8 = y2;
                            }
                            int i9 = (i2 - this.U) - i8;
                            if (i3 % 2 == 1) {
                                this.u.putInt(i9);
                            } else {
                                this.u.putShort((short) i9);
                                this.u.putInt(0);
                            }
                            this.t.a(this.u.array(), i6);
                            qVar.a(this.t, i6);
                            this.ca += i6;
                        }
                    }
                } else {
                    byte[] bArr3 = bVar.f7689g;
                    if (bArr3 != null) {
                        this.q.a(bArr3, bArr3.length);
                    }
                }
                this.V = true;
            }
            int d2 = i2 + this.q.d();
            if (!"V_MPEG4/ISO/AVC".equals(bVar.f7684b) && !"V_MPEGH/ISO/HEVC".equals(bVar.f7684b)) {
                if (bVar.Q != null) {
                    if (this.q.d() != 0) {
                        z2 = false;
                    }
                    C0737e.b(z2);
                    bVar.Q.a(hVar, this.T, d2);
                }
                while (true) {
                    int i10 = this.U;
                    if (i10 >= d2) {
                        break;
                    }
                    a(hVar, qVar, d2 - i10);
                }
            } else {
                byte[] bArr4 = this.m.f9634a;
                bArr4[0] = 0;
                bArr4[1] = 0;
                bArr4[2] = 0;
                int i11 = bVar.V;
                int i12 = 4 - i11;
                while (this.U < d2) {
                    int i13 = this.ba;
                    if (i13 == 0) {
                        a(hVar, bArr4, i12, i11);
                        this.m.e(0);
                        this.ba = this.m.y();
                        this.f7681l.e(0);
                        qVar.a(this.f7681l, 4);
                        this.ca += 4;
                    } else {
                        this.ba = i13 - a(hVar, qVar, i13);
                    }
                }
            }
            if ("A_VORBIS".equals(bVar.f7684b)) {
                this.o.e(0);
                qVar.a(this.o, 4);
                this.ca += 4;
            }
        }
    }

    public final void a(h hVar, byte[] bArr, int i2) {
        int length = bArr.length + i2;
        if (this.r.b() < length) {
            this.r.f9634a = Arrays.copyOf(bArr, length + i2);
        } else {
            System.arraycopy(bArr, 0, this.r.f9634a, 0, bArr.length);
        }
        hVar.readFully(this.r.f9634a, bArr.length, i2);
        this.r.c(length);
    }

    public final void a(b bVar, String str, int i2, long j2, byte[] bArr) {
        a(this.r.f9634a, this.N, str, i2, j2, bArr);
        c.e.a.a.e.q qVar = bVar.U;
        v vVar = this.r;
        qVar.a(vVar, vVar.d());
        this.ca += this.r.d();
    }

    public static void a(byte[] bArr, long j2, String str, int i2, long j3, byte[] bArr2) {
        byte[] bArr3;
        byte[] bArr4;
        if (j2 == -9223372036854775807L) {
            bArr4 = bArr2;
            bArr3 = bArr4;
        } else {
            int i3 = (int) (j2 / 3600000000L);
            long j4 = j2 - (((long) (i3 * 3600)) * RetryManager.NANOSECONDS_IN_MS);
            int i4 = (int) (j4 / 60000000);
            long j5 = j4 - (((long) (i4 * 60)) * RetryManager.NANOSECONDS_IN_MS);
            int i5 = (int) (j5 / RetryManager.NANOSECONDS_IN_MS);
            int i6 = (int) ((j5 - (((long) i5) * RetryManager.NANOSECONDS_IN_MS)) / j3);
            Locale locale = Locale.US;
            Object[] objArr = {Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6)};
            String str2 = str;
            bArr3 = I.e(String.format(locale, str, objArr));
            bArr4 = bArr2;
        }
        byte[] bArr5 = bArr;
        int i7 = i2;
        System.arraycopy(bArr3, 0, bArr, i2, bArr4.length);
    }

    public final void a(h hVar, byte[] bArr, int i2, int i3) {
        int min = Math.min(i3, this.q.a());
        hVar.readFully(bArr, i2 + min, i3 - min);
        if (min > 0) {
            this.q.a(bArr, i2, min);
        }
        this.U += i3;
    }

    public final int a(h hVar, c.e.a.a.e.q qVar, int i2) {
        int i3;
        int a2 = this.q.a();
        if (a2 > 0) {
            i3 = Math.min(i2, a2);
            qVar.a(this.q, i3);
        } else {
            i3 = qVar.a(hVar, i2, false);
        }
        this.U += i3;
        this.ca += i3;
        return i3;
    }

    public final boolean a(n nVar, long j2) {
        if (this.E) {
            this.G = j2;
            nVar.f8320a = this.F;
            this.E = false;
            return true;
        }
        if (this.B) {
            long j3 = this.G;
            if (j3 != -1) {
                nVar.f8320a = j3;
                this.G = -1;
                return true;
            }
        }
        return false;
    }

    public final long a(long j2) {
        long j3 = this.x;
        if (j3 != -9223372036854775807L) {
            return I.c(j2, j3, 1000);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    public static boolean a(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_AV1".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_TEXT/ASS".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str);
    }

    public static int[] a(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[i2];
        }
        if (iArr.length >= i2) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i2)];
    }
}
