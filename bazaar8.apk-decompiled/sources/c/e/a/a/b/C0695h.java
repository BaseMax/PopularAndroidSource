package c.e.a.a.b;

import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: c.e.a.a.b.h  reason: case insensitive filesystem */
/* compiled from: Ac3Util */
public final class C0695h {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f7436a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f7437b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f7438c = {24000, 22050, 16000};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f7439d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f7440e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f7441f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: c.e.a.a.b.h$a */
    /* compiled from: Ac3Util */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f7442a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7443b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7444c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7445d;

        /* renamed from: e  reason: collision with root package name */
        public final int f7446e;

        /* renamed from: f  reason: collision with root package name */
        public final int f7447f;

        public a(String str, int i2, int i3, int i4, int i5, int i6) {
            this.f7442a = str;
            this.f7443b = i2;
            this.f7445d = i3;
            this.f7444c = i4;
            this.f7446e = i5;
            this.f7447f = i6;
        }
    }

    public static int a() {
        return 1536;
    }

    public static Format a(v vVar, String str, String str2, DrmInitData drmInitData) {
        int i2 = f7437b[(vVar.u() & 192) >> 6];
        int u = vVar.u();
        int i3 = f7439d[(u & 56) >> 3];
        if ((u & 4) != 0) {
            i3++;
        }
        return Format.a(str, "audio/ac3", (String) null, -1, -1, i3, i2, (List<byte[]>) null, drmInitData, 0, str2);
    }

    public static Format b(v vVar, String str, String str2, DrmInitData drmInitData) {
        v vVar2 = vVar;
        vVar.f(2);
        int i2 = f7437b[(vVar.u() & 192) >> 6];
        int u = vVar.u();
        int i3 = f7439d[(u & 14) >> 1];
        if ((u & 1) != 0) {
            i3++;
        }
        if (((vVar.u() & 30) >> 1) > 0 && (2 & vVar.u()) != 0) {
            i3 += 2;
        }
        return Format.a(str, (vVar.a() <= 0 || (vVar.u() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", (String) null, -1, -1, i3, i2, (List<byte[]>) null, drmInitData, 0, str2);
    }

    public static a a(u uVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        String str;
        int i7;
        int i8;
        int i9;
        int i10;
        u uVar2 = uVar;
        int e2 = uVar.e();
        uVar2.c(40);
        boolean z = uVar2.a(5) == 16;
        uVar2.b(e2);
        int i11 = -1;
        if (z) {
            uVar2.c(16);
            int a2 = uVar2.a(2);
            if (a2 == 0) {
                i11 = 0;
            } else if (a2 == 1) {
                i11 = 1;
            } else if (a2 == 2) {
                i11 = 2;
            }
            uVar2.c(3);
            int a3 = (uVar2.a(11) + 1) * 2;
            int a4 = uVar2.a(2);
            if (a4 == 3) {
                i7 = f7438c[uVar2.a(2)];
                i9 = 3;
                i8 = 6;
            } else {
                i9 = uVar2.a(2);
                i8 = f7436a[i9];
                i7 = f7437b[a4];
            }
            int i12 = i8 * 256;
            int a5 = uVar2.a(3);
            boolean f2 = uVar.f();
            int i13 = f7439d[a5] + (f2 ? 1 : 0);
            uVar2.c(10);
            if (uVar.f()) {
                uVar2.c(8);
            }
            if (a5 == 0) {
                uVar2.c(5);
                if (uVar.f()) {
                    uVar2.c(8);
                }
            }
            if (i11 == 1 && uVar.f()) {
                uVar2.c(16);
            }
            if (uVar.f()) {
                if (a5 > 2) {
                    uVar2.c(2);
                }
                if ((a5 & 1) != 0 && a5 > 2) {
                    uVar2.c(6);
                }
                if ((a5 & 4) != 0) {
                    uVar2.c(6);
                }
                if (f2 && uVar.f()) {
                    uVar2.c(5);
                }
                if (i11 == 0) {
                    if (uVar.f()) {
                        uVar2.c(6);
                    }
                    if (a5 == 0 && uVar.f()) {
                        uVar2.c(6);
                    }
                    if (uVar.f()) {
                        uVar2.c(6);
                    }
                    int a6 = uVar2.a(2);
                    if (a6 == 1) {
                        uVar2.c(5);
                    } else if (a6 == 2) {
                        uVar2.c(12);
                    } else if (a6 == 3) {
                        int a7 = uVar2.a(5);
                        if (uVar.f()) {
                            uVar2.c(5);
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                uVar2.c(4);
                            }
                            if (uVar.f()) {
                                if (uVar.f()) {
                                    uVar2.c(4);
                                }
                                if (uVar.f()) {
                                    uVar2.c(4);
                                }
                            }
                        }
                        if (uVar.f()) {
                            uVar2.c(5);
                            if (uVar.f()) {
                                uVar2.c(7);
                                if (uVar.f()) {
                                    uVar2.c(8);
                                }
                            }
                        }
                        uVar2.c((a7 + 2) * 8);
                        uVar.c();
                    }
                    if (a5 < 2) {
                        if (uVar.f()) {
                            uVar2.c(14);
                        }
                        if (a5 == 0 && uVar.f()) {
                            uVar2.c(14);
                        }
                    }
                    if (uVar.f()) {
                        if (i9 == 0) {
                            uVar2.c(5);
                        } else {
                            for (int i14 = 0; i14 < i8; i14++) {
                                if (uVar.f()) {
                                    uVar2.c(5);
                                }
                            }
                        }
                    }
                }
            }
            if (uVar.f()) {
                uVar2.c(5);
                if (a5 == 2) {
                    uVar2.c(4);
                }
                if (a5 >= 6) {
                    uVar2.c(2);
                }
                if (uVar.f()) {
                    uVar2.c(8);
                }
                if (a5 == 0 && uVar.f()) {
                    uVar2.c(8);
                }
                i10 = 3;
                if (a4 < 3) {
                    uVar.g();
                }
            } else {
                i10 = 3;
            }
            if (i11 == 0 && i9 != i10) {
                uVar.g();
            }
            if (i11 == 2 && (i9 == i10 || uVar.f())) {
                uVar2.c(6);
            }
            str = (uVar.f() && uVar2.a(6) == 1 && uVar2.a(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i6 = i11;
            i3 = a3;
            i4 = i7;
            i2 = i12;
            i5 = i13;
        } else {
            uVar2.c(32);
            int a8 = uVar2.a(2);
            String str2 = a8 == 3 ? null : "audio/ac3";
            int a9 = a(a8, uVar2.a(6));
            uVar2.c(8);
            int a10 = uVar2.a(3);
            if (!((a10 & 1) == 0 || a10 == 1)) {
                uVar2.c(2);
            }
            if ((a10 & 4) != 0) {
                uVar2.c(2);
            }
            if (a10 == 2) {
                uVar2.c(2);
            }
            int[] iArr = f7437b;
            str = str2;
            i3 = a9;
            i4 = a8 < iArr.length ? iArr[a8] : -1;
            i5 = f7439d[a10] + (uVar.f() ? 1 : 0);
            i6 = -1;
            i2 = 1536;
        }
        a aVar = new a(str, i6, i5, i4, i3, i2);
        return aVar;
    }

    public static int b(ByteBuffer byteBuffer) {
        int i2 = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i2 = f7436a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i2 * 256;
    }

    public static int b(byte[] bArr) {
        boolean z = false;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        if ((bArr[7] & 255) == 187) {
            z = true;
        }
        return 40 << ((bArr[z ? (char) 9 : 8] >> 4) & 7);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 255) >> 3) == 16)) {
            return a((bArr[4] & 192) >> 6, (int) bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i2 = position; i2 <= limit; i2++) {
            if ((byteBuffer.getInt(i2 + 4) & -16777217) == -1167101192) {
                return i2 - position;
            }
        }
        return -1;
    }

    public static int a(ByteBuffer byteBuffer, int i2) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i2) + ((byteBuffer.get((byteBuffer.position() + i2) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int a(int i2, int i3) {
        int i4 = i3 / 2;
        if (i2 >= 0) {
            int[] iArr = f7437b;
            if (i2 < iArr.length && i3 >= 0) {
                int[] iArr2 = f7441f;
                if (i4 < iArr2.length) {
                    int i5 = iArr[i2];
                    if (i5 == 44100) {
                        return (iArr2[i4] + (i3 % 2)) * 2;
                    }
                    int i6 = f7440e[i4];
                    return i5 == 32000 ? i6 * 6 : i6 * 4;
                }
            }
        }
        return -1;
    }
}
