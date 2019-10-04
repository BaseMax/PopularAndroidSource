package c.e.a.a.g.c;

import c.e.a.a.g.e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* compiled from: Id3Decoder */
public final class h implements c.e.a.a.g.b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f8347a = a.f8346a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f8348b = I.b("ID3");

    /* renamed from: c  reason: collision with root package name */
    public final a f8349c;

    /* compiled from: Id3Decoder */
    public interface a {
        boolean a(int i2, int i3, int i4, int i5, int i6);
    }

    /* compiled from: Id3Decoder */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f8350a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f8351b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8352c;

        public b(int i2, boolean z, int i3) {
            this.f8350a = i2;
            this.f8351b = z;
            this.f8352c = i3;
        }
    }

    public h() {
        this(null);
    }

    public static int a(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    public static TextInformationFrame b(v vVar, int i2, String str) {
        if (i2 < 1) {
            return null;
        }
        int u = vVar.u();
        String b2 = b(u);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        vVar.a(bArr, 0, i3);
        return new TextInformationFrame(str, null, new String(bArr, 0, b(bArr, 0, u), b2));
    }

    public static String b(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    public static /* synthetic */ boolean b(int i2, int i3, int i4, int i5, int i6) {
        return false;
    }

    public static UrlLinkFrame c(v vVar, int i2, String str) {
        byte[] bArr = new byte[i2];
        vVar.a(bArr, 0, i2);
        return new UrlLinkFrame(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    public static PrivFrame d(v vVar, int i2) {
        byte[] bArr = new byte[i2];
        vVar.a(bArr, 0, i2);
        int b2 = b(bArr, 0);
        return new PrivFrame(new String(bArr, 0, b2, "ISO-8859-1"), a(bArr, b2 + 1, bArr.length));
    }

    public static TextInformationFrame e(v vVar, int i2) {
        if (i2 < 1) {
            return null;
        }
        int u = vVar.u();
        String b2 = b(u);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        vVar.a(bArr, 0, i3);
        int b3 = b(bArr, 0, u);
        String str = new String(bArr, 0, b3, b2);
        int a2 = b3 + a(u);
        return new TextInformationFrame("TXXX", str, a(bArr, a2, b(bArr, a2, u), b2));
    }

    public static UrlLinkFrame f(v vVar, int i2) {
        if (i2 < 1) {
            return null;
        }
        int u = vVar.u();
        String b2 = b(u);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        vVar.a(bArr, 0, i3);
        int b3 = b(bArr, 0, u);
        String str = new String(bArr, 0, b3, b2);
        int a2 = b3 + a(u);
        return new UrlLinkFrame("WXXX", str, a(bArr, a2, b(bArr, a2), "ISO-8859-1"));
    }

    public static int g(v vVar, int i2) {
        byte[] bArr = vVar.f9634a;
        int c2 = vVar.c();
        int i3 = i2;
        int i4 = c2;
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= c2 + i3) {
                return i3;
            }
            if ((bArr[i4] & 255) == 255 && bArr[i5] == 0) {
                System.arraycopy(bArr, i4 + 2, bArr, i5, (i3 - (i4 - c2)) - 2);
                i3--;
            }
            i4 = i5;
        }
    }

    public Metadata a(e eVar) {
        ByteBuffer byteBuffer = eVar.f7545c;
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    public h(a aVar) {
        this.f8349c = aVar;
    }

    public Metadata a(byte[] bArr, int i2) {
        ArrayList arrayList = new ArrayList();
        v vVar = new v(bArr, i2);
        b a2 = a(vVar);
        if (a2 == null) {
            return null;
        }
        int c2 = vVar.c();
        int i3 = a2.f8350a == 2 ? 6 : 10;
        int b2 = a2.f8352c;
        if (a2.f8351b) {
            b2 = g(vVar, a2.f8352c);
        }
        vVar.d(c2 + b2);
        boolean z = false;
        if (!a(vVar, a2.f8350a, i3, false)) {
            if (a2.f8350a != 4 || !a(vVar, 4, i3, true)) {
                p.d("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + a2.f8350a);
                return null;
            }
            z = true;
        }
        while (vVar.a() >= i3) {
            Id3Frame a3 = a(a2.f8350a, vVar, z, i3, this.f8349c);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return new Metadata((List<? extends Metadata.Entry>) arrayList);
    }

    public static MlltFrame c(v vVar, int i2) {
        int A = vVar.A();
        int x = vVar.x();
        int x2 = vVar.x();
        int u = vVar.u();
        int u2 = vVar.u();
        u uVar = new u();
        uVar.a(vVar);
        int i3 = ((i2 - 10) * 8) / (u + u2);
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int a2 = uVar.a(u);
            int a3 = uVar.a(u2);
            iArr[i4] = a2;
            iArr2[i4] = a3;
        }
        MlltFrame mlltFrame = new MlltFrame(A, x, x2, iArr, iArr2);
        return mlltFrame;
    }

    public static GeobFrame b(v vVar, int i2) {
        int u = vVar.u();
        String b2 = b(u);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        vVar.a(bArr, 0, i3);
        int b3 = b(bArr, 0);
        String str = new String(bArr, 0, b3, "ISO-8859-1");
        int i4 = b3 + 1;
        int b4 = b(bArr, i4, u);
        String a2 = a(bArr, i4, b4, b2);
        int a3 = b4 + a(u);
        int b5 = b(bArr, a3, u);
        return new GeobFrame(str, a2, a(bArr, a3, b5, b2), a(bArr, b5 + a(u), bArr.length));
    }

    public static b a(v vVar) {
        int t;
        if (vVar.a() < 10) {
            p.d("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (vVar.x() != f8348b) {
            p.d("Id3Decoder", "Unexpected first three bytes of ID3 tag header: " + r0);
            return null;
        }
        int u = vVar.u();
        boolean z = true;
        vVar.f(1);
        int u2 = vVar.u();
        int t2 = vVar.t();
        if (u == 2) {
            if ((u2 & 64) != 0) {
                p.d("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (u == 3) {
            if ((u2 & 64) != 0) {
                int i2 = vVar.i();
                vVar.f(i2);
                t2 -= i2 + 4;
            }
        } else if (u == 4) {
            if ((u2 & 64) != 0) {
                vVar.f(vVar.t() - 4);
                t2 -= t;
            }
            if ((u2 & 16) != 0) {
                t2 -= 10;
            }
        } else {
            p.d("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + u);
            return null;
        }
        if (u >= 4 || (u2 & 128) == 0) {
            z = false;
        }
        return new b(u, z, t2);
    }

    public static ChapterTocFrame b(v vVar, int i2, int i3, boolean z, int i4, a aVar) {
        v vVar2 = vVar;
        int c2 = vVar.c();
        int b2 = b(vVar2.f9634a, c2);
        String str = new String(vVar2.f9634a, c2, b2 - c2, "ISO-8859-1");
        vVar.e(b2 + 1);
        int u = vVar.u();
        boolean z2 = (u & 2) != 0;
        boolean z3 = (u & 1) != 0;
        int u2 = vVar.u();
        String[] strArr = new String[u2];
        for (int i5 = 0; i5 < u2; i5++) {
            int c3 = vVar.c();
            int b3 = b(vVar2.f9634a, c3);
            strArr[i5] = new String(vVar2.f9634a, c3, b3 - c3, "ISO-8859-1");
            vVar.e(b3 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i6 = c2 + i2;
        while (vVar.c() < i6) {
            Id3Frame a2 = a(i3, vVar, z, i4, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        ChapterTocFrame chapterTocFrame = new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
        return chapterTocFrame;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0076, code lost:
        if ((r10 & 1) != 0) goto L_0x0078;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0085, code lost:
        if ((r10 & 128) != 0) goto L_0x0078;
     */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x009b A[SYNTHETIC, Splitter:B:49:0x009b] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0097 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(c.e.a.a.o.v r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.c()
        L_0x0008:
            int r3 = r18.a()     // Catch:{ all -> 0x00b2 }
            r4 = 1
            r5 = r20
            if (r3 < r5) goto L_0x00ae
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L_0x0022
            int r7 = r18.i()     // Catch:{ all -> 0x00b2 }
            long r8 = r18.w()     // Catch:{ all -> 0x00b2 }
            int r10 = r18.A()     // Catch:{ all -> 0x00b2 }
            goto L_0x002c
        L_0x0022:
            int r7 = r18.x()     // Catch:{ all -> 0x00b2 }
            int r8 = r18.x()     // Catch:{ all -> 0x00b2 }
            long r8 = (long) r8
            r10 = 0
        L_0x002c:
            r11 = 0
            if (r7 != 0) goto L_0x003a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L_0x003a
            if (r10 != 0) goto L_0x003a
            r1.e(r2)
            return r4
        L_0x003a:
            r7 = 4
            if (r0 != r7) goto L_0x006b
            if (r21 != 0) goto L_0x006b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L_0x004b
            r1.e(r2)
            return r6
        L_0x004b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L_0x006b:
            if (r0 != r7) goto L_0x007a
            r3 = r10 & 64
            if (r3 == 0) goto L_0x0073
            r3 = 1
            goto L_0x0074
        L_0x0073:
            r3 = 0
        L_0x0074:
            r7 = r10 & 1
            if (r7 == 0) goto L_0x0089
        L_0x0078:
            r7 = 1
            goto L_0x008a
        L_0x007a:
            if (r0 != r3) goto L_0x0088
            r3 = r10 & 32
            if (r3 == 0) goto L_0x0082
            r3 = 1
            goto L_0x0083
        L_0x0082:
            r3 = 0
        L_0x0083:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L_0x0089
            goto L_0x0078
        L_0x0088:
            r3 = 0
        L_0x0089:
            r7 = 0
        L_0x008a:
            if (r3 == 0) goto L_0x008d
            goto L_0x008e
        L_0x008d:
            r4 = 0
        L_0x008e:
            if (r7 == 0) goto L_0x0092
            int r4 = r4 + 4
        L_0x0092:
            long r3 = (long) r4
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L_0x009b
            r1.e(r2)
            return r6
        L_0x009b:
            int r3 = r18.a()     // Catch:{ all -> 0x00b2 }
            long r3 = (long) r3
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto L_0x00a8
            r1.e(r2)
            return r6
        L_0x00a8:
            int r3 = (int) r8
            r1.f(r3)     // Catch:{ all -> 0x00b2 }
            goto L_0x0008
        L_0x00ae:
            r1.e(r2)
            return r4
        L_0x00b2:
            r0 = move-exception
            r1.e(r2)
            goto L_0x00b8
        L_0x00b7:
            throw r0
        L_0x00b8:
            goto L_0x00b7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.g.c.h.a(c.e.a.a.o.v, int, int, boolean):boolean");
    }

    public static int b(byte[] bArr, int i2, int i3) {
        int b2 = b(bArr, i2);
        if (i3 == 0 || i3 == 3) {
            return b2;
        }
        while (b2 < bArr.length - 1) {
            if (b2 % 2 == 0 && bArr[b2 + 1] == 0) {
                return b2;
            }
            b2 = b(bArr, b2 + 1);
        }
        return bArr.length;
    }

    public static int b(byte[] bArr, int i2) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:131:0x0193, code lost:
        if (r13 == 67) goto L_0x0195;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.exoplayer2.metadata.id3.Id3Frame a(int r19, c.e.a.a.o.v r20, boolean r21, int r22, c.e.a.a.g.c.h.a r23) {
        /*
            r0 = r19
            r7 = r20
            int r8 = r20.u()
            int r9 = r20.u()
            int r10 = r20.u()
            r11 = 3
            if (r0 < r11) goto L_0x0019
            int r1 = r20.u()
            r13 = r1
            goto L_0x001a
        L_0x0019:
            r13 = 0
        L_0x001a:
            r14 = 4
            if (r0 != r14) goto L_0x003c
            int r1 = r20.y()
            if (r21 != 0) goto L_0x003a
            r2 = r1 & 255(0xff, float:3.57E-43)
            int r3 = r1 >> 8
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 7
            r2 = r2 | r3
            int r3 = r1 >> 16
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 14
            r2 = r2 | r3
            int r1 = r1 >> 24
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 21
            r1 = r1 | r2
        L_0x003a:
            r15 = r1
            goto L_0x0048
        L_0x003c:
            if (r0 != r11) goto L_0x0043
            int r1 = r20.y()
            goto L_0x003a
        L_0x0043:
            int r1 = r20.x()
            goto L_0x003a
        L_0x0048:
            if (r0 < r11) goto L_0x0050
            int r1 = r20.A()
            r6 = r1
            goto L_0x0051
        L_0x0050:
            r6 = 0
        L_0x0051:
            r16 = 0
            if (r8 != 0) goto L_0x0067
            if (r9 != 0) goto L_0x0067
            if (r10 != 0) goto L_0x0067
            if (r13 != 0) goto L_0x0067
            if (r15 != 0) goto L_0x0067
            if (r6 != 0) goto L_0x0067
            int r0 = r20.d()
            r7.e(r0)
            return r16
        L_0x0067:
            int r1 = r20.c()
            int r5 = r1 + r15
            int r1 = r20.d()
            java.lang.String r4 = "Id3Decoder"
            if (r5 <= r1) goto L_0x0082
            java.lang.String r0 = "Frame size exceeds remaining tag data"
            c.e.a.a.o.p.d(r4, r0)
            int r0 = r20.d()
            r7.e(r0)
            return r16
        L_0x0082:
            if (r23 == 0) goto L_0x009a
            r1 = r23
            r2 = r19
            r3 = r8
            r12 = r4
            r4 = r9
            r14 = r5
            r5 = r10
            r18 = r6
            r6 = r13
            boolean r1 = r1.a(r2, r3, r4, r5, r6)
            if (r1 != 0) goto L_0x009e
            r7.e(r14)
            return r16
        L_0x009a:
            r12 = r4
            r14 = r5
            r18 = r6
        L_0x009e:
            r1 = 1
            if (r0 != r11) goto L_0x00bc
            r2 = r18
            r3 = r2 & 128(0x80, float:1.794E-43)
            if (r3 == 0) goto L_0x00a9
            r3 = 1
            goto L_0x00aa
        L_0x00a9:
            r3 = 0
        L_0x00aa:
            r4 = r2 & 64
            if (r4 == 0) goto L_0x00b0
            r4 = 1
            goto L_0x00b1
        L_0x00b0:
            r4 = 0
        L_0x00b1:
            r2 = r2 & 32
            if (r2 == 0) goto L_0x00b7
            r2 = 1
            goto L_0x00b8
        L_0x00b7:
            r2 = 0
        L_0x00b8:
            r17 = r3
            r6 = 0
            goto L_0x00f2
        L_0x00bc:
            r2 = r18
            r3 = 4
            if (r0 != r3) goto L_0x00ec
            r3 = r2 & 64
            if (r3 == 0) goto L_0x00c7
            r3 = 1
            goto L_0x00c8
        L_0x00c7:
            r3 = 0
        L_0x00c8:
            r4 = r2 & 8
            if (r4 == 0) goto L_0x00ce
            r4 = 1
            goto L_0x00cf
        L_0x00ce:
            r4 = 0
        L_0x00cf:
            r5 = r2 & 4
            if (r5 == 0) goto L_0x00d5
            r5 = 1
            goto L_0x00d6
        L_0x00d5:
            r5 = 0
        L_0x00d6:
            r6 = r2 & 2
            if (r6 == 0) goto L_0x00dc
            r6 = 1
            goto L_0x00dd
        L_0x00dc:
            r6 = 0
        L_0x00dd:
            r2 = r2 & r1
            if (r2 == 0) goto L_0x00e3
            r17 = 1
            goto L_0x00e5
        L_0x00e3:
            r17 = 0
        L_0x00e5:
            r2 = r3
            r3 = r17
            r17 = r4
            r4 = r5
            goto L_0x00f2
        L_0x00ec:
            r2 = 0
            r3 = 0
            r4 = 0
            r6 = 0
            r17 = 0
        L_0x00f2:
            if (r17 != 0) goto L_0x022c
            if (r4 == 0) goto L_0x00f8
            goto L_0x022c
        L_0x00f8:
            if (r2 == 0) goto L_0x00ff
            int r15 = r15 + -1
            r7.f(r1)
        L_0x00ff:
            if (r3 == 0) goto L_0x0107
            int r15 = r15 + -4
            r1 = 4
            r7.f(r1)
        L_0x0107:
            if (r6 == 0) goto L_0x010e
            int r1 = g(r7, r15)
            r15 = r1
        L_0x010e:
            r1 = 84
            r2 = 2
            r3 = 88
            if (r8 != r1) goto L_0x0123
            if (r9 != r3) goto L_0x0123
            if (r10 != r3) goto L_0x0123
            if (r0 == r2) goto L_0x011d
            if (r13 != r3) goto L_0x0123
        L_0x011d:
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = e(r7, r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x0123:
            if (r8 != r1) goto L_0x0132
            java.lang.String r1 = a((int) r0, (int) r8, (int) r9, (int) r10, (int) r13)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = b((c.e.a.a.o.v) r7, (int) r15, (java.lang.String) r1)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x012f:
            r0 = move-exception
            goto L_0x0228
        L_0x0132:
            r4 = 87
            if (r8 != r4) goto L_0x0144
            if (r9 != r3) goto L_0x0144
            if (r10 != r3) goto L_0x0144
            if (r0 == r2) goto L_0x013e
            if (r13 != r3) goto L_0x0144
        L_0x013e:
            com.google.android.exoplayer2.metadata.id3.UrlLinkFrame r1 = f(r7, r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x0144:
            r3 = 87
            if (r8 != r3) goto L_0x0152
            java.lang.String r1 = a((int) r0, (int) r8, (int) r9, (int) r10, (int) r13)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            com.google.android.exoplayer2.metadata.id3.UrlLinkFrame r1 = c(r7, r15, r1)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x0152:
            r3 = 73
            r4 = 80
            if (r8 != r4) goto L_0x0168
            r5 = 82
            if (r9 != r5) goto L_0x0168
            if (r10 != r3) goto L_0x0168
            r5 = 86
            if (r13 != r5) goto L_0x0168
            com.google.android.exoplayer2.metadata.id3.PrivFrame r1 = d(r7, r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x0168:
            r5 = 71
            r6 = 79
            if (r8 != r5) goto L_0x0180
            r5 = 69
            if (r9 != r5) goto L_0x0180
            if (r10 != r6) goto L_0x0180
            r5 = 66
            if (r13 == r5) goto L_0x017a
            if (r0 != r2) goto L_0x0180
        L_0x017a:
            com.google.android.exoplayer2.metadata.id3.GeobFrame r1 = b((c.e.a.a.o.v) r7, (int) r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x0180:
            r5 = 67
            if (r0 != r2) goto L_0x018b
            if (r8 != r4) goto L_0x019b
            if (r9 != r3) goto L_0x019b
            if (r10 != r5) goto L_0x019b
            goto L_0x0195
        L_0x018b:
            r11 = 65
            if (r8 != r11) goto L_0x019b
            if (r9 != r4) goto L_0x019b
            if (r10 != r3) goto L_0x019b
            if (r13 != r5) goto L_0x019b
        L_0x0195:
            com.google.android.exoplayer2.metadata.id3.ApicFrame r1 = a((c.e.a.a.o.v) r7, (int) r15, (int) r0)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x019b:
            r3 = 77
            if (r8 != r5) goto L_0x01ac
            if (r9 != r6) goto L_0x01ac
            if (r10 != r3) goto L_0x01ac
            if (r13 == r3) goto L_0x01a7
            if (r0 != r2) goto L_0x01ac
        L_0x01a7:
            com.google.android.exoplayer2.metadata.id3.CommentFrame r1 = a((c.e.a.a.o.v) r7, (int) r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x01ac:
            if (r8 != r5) goto L_0x01c8
            r2 = 72
            if (r9 != r2) goto L_0x01c8
            r2 = 65
            if (r10 != r2) goto L_0x01c8
            if (r13 != r4) goto L_0x01c8
            r1 = r20
            r2 = r15
            r3 = r19
            r4 = r21
            r5 = r22
            r6 = r23
            com.google.android.exoplayer2.metadata.id3.ChapterFrame r1 = a(r1, r2, r3, r4, r5, r6)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x01c8:
            if (r8 != r5) goto L_0x01e0
            if (r9 != r1) goto L_0x01e0
            if (r10 != r6) goto L_0x01e0
            if (r13 != r5) goto L_0x01e0
            r1 = r20
            r2 = r15
            r3 = r19
            r4 = r21
            r5 = r22
            r6 = r23
            com.google.android.exoplayer2.metadata.id3.ChapterTocFrame r1 = b(r1, r2, r3, r4, r5, r6)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x01e0:
            if (r8 != r3) goto L_0x01f1
            r2 = 76
            if (r9 != r2) goto L_0x01f1
            r2 = 76
            if (r10 != r2) goto L_0x01f1
            if (r13 != r1) goto L_0x01f1
            com.google.android.exoplayer2.metadata.id3.MlltFrame r1 = c(r7, r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            goto L_0x01f9
        L_0x01f1:
            java.lang.String r1 = a((int) r0, (int) r8, (int) r9, (int) r10, (int) r13)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            com.google.android.exoplayer2.metadata.id3.BinaryFrame r1 = a((c.e.a.a.o.v) r7, (int) r15, (java.lang.String) r1)     // Catch:{ UnsupportedEncodingException -> 0x021f }
        L_0x01f9:
            if (r1 != 0) goto L_0x021b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ UnsupportedEncodingException -> 0x021f }
            r2.<init>()     // Catch:{ UnsupportedEncodingException -> 0x021f }
            java.lang.String r3 = "Failed to decode frame: id="
            r2.append(r3)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            java.lang.String r0 = a((int) r0, (int) r8, (int) r9, (int) r10, (int) r13)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            r2.append(r0)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            java.lang.String r0 = ", frameSize="
            r2.append(r0)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            r2.append(r15)     // Catch:{ UnsupportedEncodingException -> 0x021f }
            java.lang.String r0 = r2.toString()     // Catch:{ UnsupportedEncodingException -> 0x021f }
            c.e.a.a.o.p.d(r12, r0)     // Catch:{ UnsupportedEncodingException -> 0x021f }
        L_0x021b:
            r7.e(r14)
            return r1
        L_0x021f:
            java.lang.String r0 = "Unsupported character encoding"
            c.e.a.a.o.p.d(r12, r0)     // Catch:{ all -> 0x012f }
            r7.e(r14)
            return r16
        L_0x0228:
            r7.e(r14)
            throw r0
        L_0x022c:
            java.lang.String r0 = "Skipping unsupported compressed or encrypted frame"
            c.e.a.a.o.p.d(r12, r0)
            r7.e(r14)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.g.c.h.a(int, c.e.a.a.o.v, boolean, int, c.e.a.a.g.c.h$a):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    public static ApicFrame a(v vVar, int i2, int i3) {
        int i4;
        String str;
        int u = vVar.u();
        String b2 = b(u);
        int i5 = i2 - 1;
        byte[] bArr = new byte[i5];
        vVar.a(bArr, 0, i5);
        if (i3 == 2) {
            str = "image/" + I.l(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            i4 = 2;
        } else {
            i4 = b(bArr, 0);
            String l2 = I.l(new String(bArr, 0, i4, "ISO-8859-1"));
            if (l2.indexOf(47) == -1) {
                str = "image/" + l2;
            } else {
                str = l2;
            }
        }
        int i6 = i4 + 2;
        int b3 = b(bArr, i6, u);
        return new ApicFrame(str, new String(bArr, i6, b3 - i6, b2), bArr[i4 + 1] & 255, a(bArr, b3 + a(u), bArr.length));
    }

    public static CommentFrame a(v vVar, int i2) {
        if (i2 < 4) {
            return null;
        }
        int u = vVar.u();
        String b2 = b(u);
        byte[] bArr = new byte[3];
        vVar.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        vVar.a(bArr2, 0, i3);
        int b3 = b(bArr2, 0, u);
        String str2 = new String(bArr2, 0, b3, b2);
        int a2 = b3 + a(u);
        return new CommentFrame(str, str2, a(bArr2, a2, b(bArr2, a2, u), b2));
    }

    public static ChapterFrame a(v vVar, int i2, int i3, boolean z, int i4, a aVar) {
        v vVar2 = vVar;
        int c2 = vVar.c();
        int b2 = b(vVar2.f9634a, c2);
        String str = new String(vVar2.f9634a, c2, b2 - c2, "ISO-8859-1");
        vVar.e(b2 + 1);
        int i5 = vVar.i();
        int i6 = vVar.i();
        long w = vVar.w();
        long j2 = w == 4294967295L ? -1 : w;
        long w2 = vVar.w();
        long j3 = w2 == 4294967295L ? -1 : w2;
        ArrayList arrayList = new ArrayList();
        int i7 = c2 + i2;
        while (vVar.c() < i7) {
            Id3Frame a2 = a(i3, vVar, z, i4, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        ChapterFrame chapterFrame = new ChapterFrame(str, i5, i6, j2, j3, id3FrameArr);
        return chapterFrame;
    }

    public static BinaryFrame a(v vVar, int i2, String str) {
        byte[] bArr = new byte[i2];
        vVar.a(bArr, 0, i2);
        return new BinaryFrame(str, bArr);
    }

    public static String a(int i2, int i3, int i4, int i5, int i6) {
        if (i2 == 2) {
            return String.format(Locale.US, "%c%c%c", new Object[]{Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)});
        }
        return String.format(Locale.US, "%c%c%c%c", new Object[]{Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6)});
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        if (i3 <= i2) {
            return I.f9570f;
        }
        return Arrays.copyOfRange(bArr, i2, i3);
    }

    public static String a(byte[] bArr, int i2, int i3, String str) {
        return (i3 <= i2 || i3 > bArr.length) ? "" : new String(bArr, i2, i3 - i2, str);
    }
}
