package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import com.google.android.gms.internal.measurement.zzdp;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

public final class Wb<T> implements C0829hc<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f10263a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final Unsafe f10264b = Fc.d();

    /* renamed from: c  reason: collision with root package name */
    public final int[] f10265c;

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f10266d;

    /* renamed from: e  reason: collision with root package name */
    public final int f10267e;

    /* renamed from: f  reason: collision with root package name */
    public final int f10268f;

    /* renamed from: g  reason: collision with root package name */
    public final Sb f10269g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10270h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f10271i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f10272j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f10273k;

    /* renamed from: l  reason: collision with root package name */
    public final int[] f10274l;
    public final int m;
    public final int n;
    public final Zb o;
    public final Db p;
    public final C0900zc<?, ?> q;
    public final C0812db<?> r;
    public final Nb s;

    public Wb(int[] iArr, Object[] objArr, int i2, int i3, Sb sb, boolean z, boolean z2, int[] iArr2, int i4, int i5, Zb zb, Db db, C0900zc<?, ?> zcVar, C0812db<?> dbVar, Nb nb) {
        this.f10265c = iArr;
        this.f10266d = objArr;
        this.f10267e = i2;
        this.f10268f = i3;
        this.f10271i = sb instanceof C0852nb;
        this.f10272j = z;
        this.f10270h = dbVar != null && dbVar.a(sb);
        this.f10273k = false;
        this.f10274l = iArr2;
        this.m = i4;
        this.n = i5;
        this.o = zb;
        this.p = db;
        this.q = zcVar;
        this.r = dbVar;
        this.f10269g = sb;
        this.s = nb;
    }

    public static <T> Wb<T> a(Class<T> cls, Qb qb, Zb zb, Db db, C0900zc<?, ?> zcVar, C0812db<?> dbVar, Nb nb) {
        int i2;
        int i3;
        char c2;
        int[] iArr;
        char c3;
        char c4;
        int i4;
        char c5;
        char c6;
        int i5;
        int i6;
        String str;
        char c7;
        int i7;
        char c8;
        int i8;
        int i9;
        int i10;
        int i11;
        Class<?> cls2;
        int i12;
        int i13;
        Field field;
        int i14;
        char charAt;
        int i15;
        char c9;
        Field field2;
        Field field3;
        int i16;
        char charAt2;
        int i17;
        char charAt3;
        int i18;
        char charAt4;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        char charAt5;
        int i25;
        char charAt6;
        int i26;
        char charAt7;
        int i27;
        char charAt8;
        char charAt9;
        char charAt10;
        char charAt11;
        char charAt12;
        char charAt13;
        char charAt14;
        Qb qb2 = qb;
        if (qb2 instanceof C0821fc) {
            C0821fc fcVar = (C0821fc) qb2;
            char c10 = 0;
            boolean z = fcVar.c() == C0852nb.e.f10481j;
            String d2 = fcVar.d();
            int length = d2.length();
            char charAt15 = d2.charAt(0);
            if (charAt15 >= 55296) {
                char c11 = charAt15 & 8191;
                int i28 = 1;
                int i29 = 13;
                while (true) {
                    i2 = i28 + 1;
                    charAt14 = d2.charAt(i28);
                    if (charAt14 < 55296) {
                        break;
                    }
                    c11 |= (charAt14 & 8191) << i29;
                    i29 += 13;
                    i28 = i2;
                }
                charAt15 = (charAt14 << i29) | c11;
            } else {
                i2 = 1;
            }
            int i30 = i2 + 1;
            char charAt16 = d2.charAt(i2);
            if (charAt16 >= 55296) {
                char c12 = charAt16 & 8191;
                int i31 = 13;
                while (true) {
                    i3 = i30 + 1;
                    charAt13 = d2.charAt(i30);
                    if (charAt13 < 55296) {
                        break;
                    }
                    c12 |= (charAt13 & 8191) << i31;
                    i31 += 13;
                    i30 = i3;
                }
                charAt16 = c12 | (charAt13 << i31);
            } else {
                i3 = i30;
            }
            if (charAt16 == 0) {
                iArr = f10263a;
                c6 = 0;
                c5 = 0;
                i4 = 0;
                c4 = 0;
                c3 = 0;
                c2 = 0;
            } else {
                int i32 = i3 + 1;
                char charAt17 = d2.charAt(i3);
                if (charAt17 >= 55296) {
                    char c13 = charAt17 & 8191;
                    int i33 = 13;
                    while (true) {
                        i19 = i32 + 1;
                        charAt12 = d2.charAt(i32);
                        if (charAt12 < 55296) {
                            break;
                        }
                        c13 |= (charAt12 & 8191) << i33;
                        i33 += 13;
                        i32 = i19;
                    }
                    charAt17 = (charAt12 << i33) | c13;
                } else {
                    i19 = i32;
                }
                int i34 = i19 + 1;
                char charAt18 = d2.charAt(i19);
                if (charAt18 >= 55296) {
                    char c14 = charAt18 & 8191;
                    int i35 = 13;
                    while (true) {
                        i20 = i34 + 1;
                        charAt11 = d2.charAt(i34);
                        if (charAt11 < 55296) {
                            break;
                        }
                        c14 |= (charAt11 & 8191) << i35;
                        i35 += 13;
                        i34 = i20;
                    }
                    charAt18 = c14 | (charAt11 << i35);
                } else {
                    i20 = i34;
                }
                int i36 = i20 + 1;
                char charAt19 = d2.charAt(i20);
                if (charAt19 >= 55296) {
                    char c15 = charAt19 & 8191;
                    int i37 = 13;
                    while (true) {
                        i21 = i36 + 1;
                        charAt10 = d2.charAt(i36);
                        if (charAt10 < 55296) {
                            break;
                        }
                        c15 |= (charAt10 & 8191) << i37;
                        i37 += 13;
                        i36 = i21;
                    }
                    charAt19 = (charAt10 << i37) | c15;
                } else {
                    i21 = i36;
                }
                int i38 = i21 + 1;
                c4 = d2.charAt(i21);
                if (c4 >= 55296) {
                    char c16 = c4 & 8191;
                    int i39 = 13;
                    while (true) {
                        i22 = i38 + 1;
                        charAt9 = d2.charAt(i38);
                        if (charAt9 < 55296) {
                            break;
                        }
                        c16 |= (charAt9 & 8191) << i39;
                        i39 += 13;
                        i38 = i22;
                    }
                    c4 = (charAt9 << i39) | c16;
                } else {
                    i22 = i38;
                }
                int i40 = i22 + 1;
                c3 = d2.charAt(i22);
                if (c3 >= 55296) {
                    char c17 = c3 & 8191;
                    int i41 = 13;
                    while (true) {
                        i27 = i40 + 1;
                        charAt8 = d2.charAt(i40);
                        if (charAt8 < 55296) {
                            break;
                        }
                        c17 |= (charAt8 & 8191) << i41;
                        i41 += 13;
                        i40 = i27;
                    }
                    c3 = (charAt8 << i41) | c17;
                    i40 = i27;
                }
                int i42 = i40 + 1;
                c6 = d2.charAt(i40);
                if (c6 >= 55296) {
                    char c18 = c6 & 8191;
                    int i43 = 13;
                    while (true) {
                        i26 = i42 + 1;
                        charAt7 = d2.charAt(i42);
                        if (charAt7 < 55296) {
                            break;
                        }
                        c18 |= (charAt7 & 8191) << i43;
                        i43 += 13;
                        i42 = i26;
                    }
                    c6 = c18 | (charAt7 << i43);
                    i42 = i26;
                }
                int i44 = i42 + 1;
                char charAt20 = d2.charAt(i42);
                if (charAt20 >= 55296) {
                    int i45 = 13;
                    int i46 = i44;
                    char c19 = charAt20 & 8191;
                    int i47 = i46;
                    while (true) {
                        i25 = i47 + 1;
                        charAt6 = d2.charAt(i47);
                        if (charAt6 < 55296) {
                            break;
                        }
                        c19 |= (charAt6 & 8191) << i45;
                        i45 += 13;
                        i47 = i25;
                    }
                    charAt20 = c19 | (charAt6 << i45);
                    i23 = i25;
                } else {
                    i23 = i44;
                }
                int i48 = i23 + 1;
                c10 = d2.charAt(i23);
                if (c10 >= 55296) {
                    int i49 = 13;
                    int i50 = i48;
                    char c20 = c10 & 8191;
                    int i51 = i50;
                    while (true) {
                        i24 = i51 + 1;
                        charAt5 = d2.charAt(i51);
                        if (charAt5 < 55296) {
                            break;
                        }
                        c20 |= (charAt5 & 8191) << i49;
                        i49 += 13;
                        i51 = i24;
                    }
                    c10 = c20 | (charAt5 << i49);
                    i48 = i24;
                }
                iArr = new int[(c10 + c6 + charAt20)];
                i4 = (charAt17 << 1) + charAt18;
                int i52 = i48;
                c2 = charAt17;
                c5 = charAt19;
                i3 = i52;
            }
            Unsafe unsafe = f10264b;
            Object[] e2 = fcVar.e();
            Class<?> cls3 = fcVar.a().getClass();
            int i53 = i4;
            int[] iArr2 = new int[(c3 * 3)];
            Object[] objArr = new Object[(c3 << 1)];
            int i54 = c10 + c6;
            char c21 = c10;
            int i55 = i54;
            int i56 = 0;
            int i57 = 0;
            while (i3 < length) {
                int i58 = i3 + 1;
                char charAt21 = d2.charAt(i3);
                char c22 = 55296;
                if (charAt21 >= 55296) {
                    int i59 = 13;
                    int i60 = i58;
                    char c23 = charAt21 & 8191;
                    int i61 = i60;
                    while (true) {
                        i18 = i61 + 1;
                        charAt4 = d2.charAt(i61);
                        if (charAt4 < c22) {
                            break;
                        }
                        c23 |= (charAt4 & 8191) << i59;
                        i59 += 13;
                        i61 = i18;
                        c22 = 55296;
                    }
                    charAt21 = c23 | (charAt4 << i59);
                    i5 = i18;
                } else {
                    i5 = i58;
                }
                int i62 = i5 + 1;
                char charAt22 = d2.charAt(i5);
                int i63 = length;
                char c24 = 55296;
                if (charAt22 >= 55296) {
                    int i64 = 13;
                    int i65 = i62;
                    char c25 = charAt22 & 8191;
                    int i66 = i65;
                    while (true) {
                        i17 = i66 + 1;
                        charAt3 = d2.charAt(i66);
                        if (charAt3 < c24) {
                            break;
                        }
                        c25 |= (charAt3 & 8191) << i64;
                        i64 += 13;
                        i66 = i17;
                        c24 = 55296;
                    }
                    charAt22 = c25 | (charAt3 << i64);
                    i6 = i17;
                } else {
                    i6 = i62;
                }
                char c26 = c10;
                char c27 = charAt22 & 255;
                boolean z2 = z;
                if ((charAt22 & 1024) != 0) {
                    iArr[i56] = i57;
                    i56++;
                }
                int i67 = i56;
                if (c27 >= '3') {
                    int i68 = i6 + 1;
                    char charAt23 = d2.charAt(i6);
                    char c28 = 55296;
                    if (charAt23 >= 55296) {
                        char c29 = charAt23 & 8191;
                        int i69 = 13;
                        while (true) {
                            i16 = i68 + 1;
                            charAt2 = d2.charAt(i68);
                            if (charAt2 < c28) {
                                break;
                            }
                            c29 |= (charAt2 & 8191) << i69;
                            i69 += 13;
                            i68 = i16;
                            c28 = 55296;
                        }
                        charAt23 = c29 | (charAt2 << i69);
                        i68 = i16;
                    }
                    int i70 = c27 - '3';
                    int i71 = i68;
                    if (i70 == 9 || i70 == 17) {
                        c9 = 1;
                        objArr[((i57 / 3) << 1) + 1] = e2[i53];
                        i53++;
                    } else {
                        if (i70 == 12 && (charAt15 & 1) == 1) {
                            objArr[((i57 / 3) << 1) + 1] = e2[i53];
                            i53++;
                        }
                        c9 = 1;
                    }
                    int i72 = charAt23 << c9;
                    Object obj = e2[i72];
                    if (obj instanceof Field) {
                        field2 = (Field) obj;
                    } else {
                        field2 = a(cls3, (String) obj);
                        e2[i72] = field2;
                    }
                    char c30 = c5;
                    int objectFieldOffset = (int) unsafe.objectFieldOffset(field2);
                    int i73 = i72 + 1;
                    Object obj2 = e2[i73];
                    int i74 = objectFieldOffset;
                    if (obj2 instanceof Field) {
                        field3 = (Field) obj2;
                    } else {
                        field3 = a(cls3, (String) obj2);
                        e2[i73] = field3;
                    }
                    str = d2;
                    i10 = (int) unsafe.objectFieldOffset(field3);
                    cls2 = cls3;
                    i7 = i53;
                    i9 = i74;
                    i11 = 0;
                    c7 = c30;
                    c8 = c4;
                    i8 = charAt21;
                    i13 = i71;
                } else {
                    char c31 = c5;
                    int i75 = i53 + 1;
                    Field a2 = a(cls3, (String) e2[i53]);
                    c8 = c4;
                    if (c27 == 9 || c27 == 17) {
                        c7 = c31;
                        objArr[((i57 / 3) << 1) + 1] = a2.getType();
                    } else {
                        if (c27 == 27 || c27 == '1') {
                            c7 = c31;
                            i15 = i75 + 1;
                            objArr[((i57 / 3) << 1) + 1] = e2[i75];
                        } else if (c27 == 12 || c27 == 30 || c27 == ',') {
                            c7 = c31;
                            if ((charAt15 & 1) == 1) {
                                i15 = i75 + 1;
                                objArr[((i57 / 3) << 1) + 1] = e2[i75];
                            }
                        } else if (c27 == '2') {
                            int i76 = c21 + 1;
                            iArr[c21] = i57;
                            int i77 = (i57 / 3) << 1;
                            int i78 = i75 + 1;
                            objArr[i77] = e2[i75];
                            if ((charAt22 & 2048) != 0) {
                                i75 = i78 + 1;
                                objArr[i77 + 1] = e2[i78];
                                c7 = c31;
                                c21 = i76;
                            } else {
                                c21 = i76;
                                i75 = i78;
                                c7 = c31;
                            }
                        } else {
                            c7 = c31;
                        }
                        i8 = charAt21;
                        i75 = i15;
                        i9 = (int) unsafe.objectFieldOffset(a2);
                        if ((charAt15 & 1) == 1 || c27 > 17) {
                            str = d2;
                            cls2 = cls3;
                            i7 = i75;
                            i12 = i6;
                            i11 = 0;
                            i10 = 0;
                        } else {
                            i12 = i6 + 1;
                            char charAt24 = d2.charAt(i6);
                            if (charAt24 >= 55296) {
                                char c32 = charAt24 & 8191;
                                int i79 = 13;
                                while (true) {
                                    i14 = i12 + 1;
                                    charAt = d2.charAt(i12);
                                    if (charAt < 55296) {
                                        break;
                                    }
                                    c32 |= (charAt & 8191) << i79;
                                    i79 += 13;
                                    i12 = i14;
                                }
                                charAt24 = c32 | (charAt << i79);
                                i12 = i14;
                            }
                            int i80 = (c2 << 1) + (charAt24 / ' ');
                            Object obj3 = e2[i80];
                            str = d2;
                            if (obj3 instanceof Field) {
                                field = (Field) obj3;
                            } else {
                                field = a(cls3, (String) obj3);
                                e2[i80] = field;
                            }
                            cls2 = cls3;
                            i7 = i75;
                            i10 = (int) unsafe.objectFieldOffset(field);
                            i11 = charAt24 % ' ';
                        }
                        if (c27 >= 18 && c27 <= '1') {
                            iArr[i55] = i9;
                            i55++;
                        }
                        i13 = i12;
                    }
                    i8 = charAt21;
                    i9 = (int) unsafe.objectFieldOffset(a2);
                    if ((charAt15 & 1) == 1) {
                    }
                    str = d2;
                    cls2 = cls3;
                    i7 = i75;
                    i12 = i6;
                    i11 = 0;
                    i10 = 0;
                    iArr[i55] = i9;
                    i55++;
                    i13 = i12;
                }
                int i81 = i57 + 1;
                iArr2[i57] = i8;
                int i82 = i81 + 1;
                iArr2[i81] = (c27 << 20) | ((charAt22 & 256) != 0 ? 268435456 : 0) | ((charAt22 & 512) != 0 ? 536870912 : 0) | i9;
                i57 = i82 + 1;
                iArr2[i82] = (i11 << 20) | i10;
                cls3 = cls2;
                c4 = c8;
                c10 = c26;
                i53 = i7;
                length = i63;
                z = z2;
                c5 = c7;
                i56 = i67;
                d2 = str;
            }
            boolean z3 = z;
            Wb wb = new Wb(iArr2, objArr, c5, c4, fcVar.a(), z, false, iArr, c10, i54, zb, db, zcVar, dbVar, nb);
            return wb;
        }
        ((C0884vc) qb2).c();
        throw null;
    }

    public static Ac e(Object obj) {
        C0852nb nbVar = (C0852nb) obj;
        Ac ac = nbVar.zzagn;
        if (ac != Ac.c()) {
            return ac;
        }
        Ac d2 = Ac.d();
        nbVar.zzagn = d2;
        return d2;
    }

    public static boolean f(int i2) {
        return (i2 & 536870912) != 0;
    }

    public static <T> boolean f(T t, long j2) {
        return ((Boolean) Fc.f(t, j2)).booleanValue();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (c.e.a.b.g.f.C0841kc.a(c.e.a.b.g.f.Fc.f(r10, r6), c.e.a.b.g.f.Fc.f(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007e, code lost:
        if (c.e.a.b.g.f.Fc.b(r10, r6) == c.e.a.b.g.f.Fc.b(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0090, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (c.e.a.b.g.f.Fc.b(r10, r6) == c.e.a.b.g.f.Fc.b(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00f0, code lost:
        if (c.e.a.b.g.f.C0841kc.a(c.e.a.b.g.f.Fc.f(r10, r6), c.e.a.b.g.f.Fc.f(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0106, code lost:
        if (c.e.a.b.g.f.C0841kc.a(c.e.a.b.g.f.Fc.f(r10, r6), c.e.a.b.g.f.Fc.f(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (c.e.a.b.g.f.C0841kc.a(c.e.a.b.g.f.Fc.f(r10, r6), c.e.a.b.g.f.Fc.f(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (c.e.a.b.g.f.Fc.c(r10, r6) == c.e.a.b.g.f.Fc.c(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0140, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (c.e.a.b.g.f.Fc.b(r10, r6) == c.e.a.b.g.f.Fc.b(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (c.e.a.b.g.f.Fc.a((java.lang.Object) r10, r6) == c.e.a.b.g.f.Fc.a((java.lang.Object) r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0178, code lost:
        if (c.e.a.b.g.f.Fc.b(r10, r6) == c.e.a.b.g.f.Fc.b(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018b, code lost:
        if (c.e.a.b.g.f.Fc.b(r10, r6) == c.e.a.b.g.f.Fc.b(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(c.e.a.b.g.f.Fc.d(r10, r6)) == java.lang.Float.floatToIntBits(c.e.a.b.g.f.Fc.d(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(c.e.a.b.g.f.Fc.e(r10, r6)) == java.lang.Double.doubleToLongBits(c.e.a.b.g.f.Fc.e(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x01c1, code lost:
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (c.e.a.b.g.f.C0841kc.a(c.e.a.b.g.f.Fc.f(r10, r6), c.e.a.b.g.f.Fc.f(r11, r6)) != false) goto L_0x01c2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(T r10, T r11) {
        /*
            r9 = this;
            int[] r0 = r9.f10265c
            int r0 = r0.length
            r1 = 0
            r2 = 0
        L_0x0005:
            r3 = 1
            if (r2 >= r0) goto L_0x01c9
            int r4 = r9.d((int) r2)
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r6 = r4 & r5
            long r6 = (long) r6
            r8 = 267386880(0xff00000, float:2.3665827E-29)
            r4 = r4 & r8
            int r4 = r4 >>> 20
            switch(r4) {
                case 0: goto L_0x01a7;
                case 1: goto L_0x018e;
                case 2: goto L_0x017b;
                case 3: goto L_0x0168;
                case 4: goto L_0x0157;
                case 5: goto L_0x0144;
                case 6: goto L_0x0132;
                case 7: goto L_0x0120;
                case 8: goto L_0x010a;
                case 9: goto L_0x00f4;
                case 10: goto L_0x00de;
                case 11: goto L_0x00cc;
                case 12: goto L_0x00ba;
                case 13: goto L_0x00a8;
                case 14: goto L_0x0094;
                case 15: goto L_0x0082;
                case 16: goto L_0x006e;
                case 17: goto L_0x0058;
                case 18: goto L_0x004a;
                case 19: goto L_0x004a;
                case 20: goto L_0x004a;
                case 21: goto L_0x004a;
                case 22: goto L_0x004a;
                case 23: goto L_0x004a;
                case 24: goto L_0x004a;
                case 25: goto L_0x004a;
                case 26: goto L_0x004a;
                case 27: goto L_0x004a;
                case 28: goto L_0x004a;
                case 29: goto L_0x004a;
                case 30: goto L_0x004a;
                case 31: goto L_0x004a;
                case 32: goto L_0x004a;
                case 33: goto L_0x004a;
                case 34: goto L_0x004a;
                case 35: goto L_0x004a;
                case 36: goto L_0x004a;
                case 37: goto L_0x004a;
                case 38: goto L_0x004a;
                case 39: goto L_0x004a;
                case 40: goto L_0x004a;
                case 41: goto L_0x004a;
                case 42: goto L_0x004a;
                case 43: goto L_0x004a;
                case 44: goto L_0x004a;
                case 45: goto L_0x004a;
                case 46: goto L_0x004a;
                case 47: goto L_0x004a;
                case 48: goto L_0x004a;
                case 49: goto L_0x004a;
                case 50: goto L_0x003c;
                case 51: goto L_0x001c;
                case 52: goto L_0x001c;
                case 53: goto L_0x001c;
                case 54: goto L_0x001c;
                case 55: goto L_0x001c;
                case 56: goto L_0x001c;
                case 57: goto L_0x001c;
                case 58: goto L_0x001c;
                case 59: goto L_0x001c;
                case 60: goto L_0x001c;
                case 61: goto L_0x001c;
                case 62: goto L_0x001c;
                case 63: goto L_0x001c;
                case 64: goto L_0x001c;
                case 65: goto L_0x001c;
                case 66: goto L_0x001c;
                case 67: goto L_0x001c;
                case 68: goto L_0x001c;
                default: goto L_0x001a;
            }
        L_0x001a:
            goto L_0x01c2
        L_0x001c:
            int r4 = r9.e((int) r2)
            r4 = r4 & r5
            long r4 = (long) r4
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r4)
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r4)
            if (r8 != r4) goto L_0x01c1
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r4 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r4, (java.lang.Object) r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x003c:
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r3 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r3, (java.lang.Object) r4)
            goto L_0x01c2
        L_0x004a:
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r3 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r3, (java.lang.Object) r4)
            goto L_0x01c2
        L_0x0058:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r4 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r4, (java.lang.Object) r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x006e:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = c.e.a.b.g.f.Fc.b(r10, r6)
            long r6 = c.e.a.b.g.f.Fc.b(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0082:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0094:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = c.e.a.b.g.f.Fc.b(r10, r6)
            long r6 = c.e.a.b.g.f.Fc.b(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x00a8:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00ba:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00cc:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x00de:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r4 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r4, (java.lang.Object) r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x00f4:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r4 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r4, (java.lang.Object) r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x010a:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r10, r6)
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r6)
            boolean r4 = c.e.a.b.g.f.C0841kc.a((java.lang.Object) r4, (java.lang.Object) r5)
            if (r4 != 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0120:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            boolean r4 = c.e.a.b.g.f.Fc.c(r10, r6)
            boolean r5 = c.e.a.b.g.f.Fc.c(r11, r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0132:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0144:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = c.e.a.b.g.f.Fc.b(r10, r6)
            long r6 = c.e.a.b.g.f.Fc.b(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x0157:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            int r4 = c.e.a.b.g.f.Fc.a((java.lang.Object) r10, (long) r6)
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r6)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x0168:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = c.e.a.b.g.f.Fc.b(r10, r6)
            long r6 = c.e.a.b.g.f.Fc.b(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x017b:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            long r4 = c.e.a.b.g.f.Fc.b(r10, r6)
            long r6 = c.e.a.b.g.f.Fc.b(r11, r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
            goto L_0x01c1
        L_0x018e:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            float r4 = c.e.a.b.g.f.Fc.d(r10, r6)
            int r4 = java.lang.Float.floatToIntBits(r4)
            float r5 = c.e.a.b.g.f.Fc.d(r11, r6)
            int r5 = java.lang.Float.floatToIntBits(r5)
            if (r4 == r5) goto L_0x01c2
            goto L_0x01c1
        L_0x01a7:
            boolean r4 = r9.c(r10, r11, r2)
            if (r4 == 0) goto L_0x01c1
            double r4 = c.e.a.b.g.f.Fc.e(r10, r6)
            long r4 = java.lang.Double.doubleToLongBits(r4)
            double r6 = c.e.a.b.g.f.Fc.e(r11, r6)
            long r6 = java.lang.Double.doubleToLongBits(r6)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x01c2
        L_0x01c1:
            r3 = 0
        L_0x01c2:
            if (r3 != 0) goto L_0x01c5
            return r1
        L_0x01c5:
            int r2 = r2 + 3
            goto L_0x0005
        L_0x01c9:
            c.e.a.b.g.f.zc<?, ?> r0 = r9.q
            java.lang.Object r0 = r0.d(r10)
            c.e.a.b.g.f.zc<?, ?> r2 = r9.q
            java.lang.Object r2 = r2.d(r11)
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L_0x01dc
            return r1
        L_0x01dc:
            boolean r0 = r9.f10270h
            if (r0 == 0) goto L_0x01f1
            c.e.a.b.g.f.db<?> r0 = r9.r
            c.e.a.b.g.f.gb r10 = r0.a((java.lang.Object) r10)
            c.e.a.b.g.f.db<?> r0 = r9.r
            c.e.a.b.g.f.gb r11 = r0.a((java.lang.Object) r11)
            boolean r10 = r10.equals(r11)
            return r10
        L_0x01f1:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.b(java.lang.Object, java.lang.Object):boolean");
    }

    public final C0875tb c(int i2) {
        return (C0875tb) this.f10266d[((i2 / 3) << 1) + 1];
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01c3, code lost:
        r2 = (r2 * 53) + r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0227, code lost:
        r2 = r2 + r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0228, code lost:
        r1 = r1 + 3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int d(T r9) {
        /*
            r8 = this;
            int[] r0 = r8.f10265c
            int r0 = r0.length
            r1 = 0
            r2 = 0
        L_0x0005:
            if (r1 >= r0) goto L_0x022c
            int r3 = r8.d((int) r1)
            int[] r4 = r8.f10265c
            r4 = r4[r1]
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r5 = r5 & r3
            long r5 = (long) r5
            r7 = 267386880(0xff00000, float:2.3665827E-29)
            r3 = r3 & r7
            int r3 = r3 >>> 20
            r7 = 37
            switch(r3) {
                case 0: goto L_0x0219;
                case 1: goto L_0x020e;
                case 2: goto L_0x0203;
                case 3: goto L_0x01f8;
                case 4: goto L_0x01f1;
                case 5: goto L_0x01e6;
                case 6: goto L_0x01df;
                case 7: goto L_0x01d4;
                case 8: goto L_0x01c7;
                case 9: goto L_0x01b9;
                case 10: goto L_0x01ad;
                case 11: goto L_0x01a5;
                case 12: goto L_0x019d;
                case 13: goto L_0x0195;
                case 14: goto L_0x0189;
                case 15: goto L_0x0181;
                case 16: goto L_0x0175;
                case 17: goto L_0x016a;
                case 18: goto L_0x015e;
                case 19: goto L_0x015e;
                case 20: goto L_0x015e;
                case 21: goto L_0x015e;
                case 22: goto L_0x015e;
                case 23: goto L_0x015e;
                case 24: goto L_0x015e;
                case 25: goto L_0x015e;
                case 26: goto L_0x015e;
                case 27: goto L_0x015e;
                case 28: goto L_0x015e;
                case 29: goto L_0x015e;
                case 30: goto L_0x015e;
                case 31: goto L_0x015e;
                case 32: goto L_0x015e;
                case 33: goto L_0x015e;
                case 34: goto L_0x015e;
                case 35: goto L_0x015e;
                case 36: goto L_0x015e;
                case 37: goto L_0x015e;
                case 38: goto L_0x015e;
                case 39: goto L_0x015e;
                case 40: goto L_0x015e;
                case 41: goto L_0x015e;
                case 42: goto L_0x015e;
                case 43: goto L_0x015e;
                case 44: goto L_0x015e;
                case 45: goto L_0x015e;
                case 46: goto L_0x015e;
                case 47: goto L_0x015e;
                case 48: goto L_0x015e;
                case 49: goto L_0x015e;
                case 50: goto L_0x0152;
                case 51: goto L_0x013c;
                case 52: goto L_0x012a;
                case 53: goto L_0x0118;
                case 54: goto L_0x0106;
                case 55: goto L_0x00f8;
                case 56: goto L_0x00e6;
                case 57: goto L_0x00d8;
                case 58: goto L_0x00c6;
                case 59: goto L_0x00b2;
                case 60: goto L_0x00a0;
                case 61: goto L_0x008e;
                case 62: goto L_0x0080;
                case 63: goto L_0x0072;
                case 64: goto L_0x0064;
                case 65: goto L_0x0052;
                case 66: goto L_0x0044;
                case 67: goto L_0x0032;
                case 68: goto L_0x0020;
                default: goto L_0x001e;
            }
        L_0x001e:
            goto L_0x0228
        L_0x0020:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r2 = r2 * 53
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x0032:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = e(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0044:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x0052:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = e(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0064:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x0072:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x0080:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x008e:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00a0:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r2 = r2 * 53
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00b2:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            java.lang.String r3 = (java.lang.String) r3
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x00c6:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            boolean r3 = f(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((boolean) r3)
            goto L_0x0227
        L_0x00d8:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x00e6:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = e(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x00f8:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            int r3 = d(r9, r5)
            goto L_0x0227
        L_0x0106:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = e(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0118:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            long r3 = e(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x012a:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            float r3 = c(r9, r5)
            int r3 = java.lang.Float.floatToIntBits(r3)
            goto L_0x0227
        L_0x013c:
            boolean r3 = r8.a(r9, (int) r4, (int) r1)
            if (r3 == 0) goto L_0x0228
            int r2 = r2 * 53
            double r3 = b(r9, (long) r5)
            long r3 = java.lang.Double.doubleToLongBits(r3)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0152:
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x015e:
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x016a:
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            if (r3 == 0) goto L_0x01c3
            int r7 = r3.hashCode()
            goto L_0x01c3
        L_0x0175:
            int r2 = r2 * 53
            long r3 = c.e.a.b.g.f.Fc.b(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0181:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x0189:
            int r2 = r2 * 53
            long r3 = c.e.a.b.g.f.Fc.b(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0195:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x019d:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x01a5:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x01ad:
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x01b9:
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            if (r3 == 0) goto L_0x01c3
            int r7 = r3.hashCode()
        L_0x01c3:
            int r2 = r2 * 53
            int r2 = r2 + r7
            goto L_0x0228
        L_0x01c7:
            int r2 = r2 * 53
            java.lang.Object r3 = c.e.a.b.g.f.Fc.f(r9, r5)
            java.lang.String r3 = (java.lang.String) r3
            int r3 = r3.hashCode()
            goto L_0x0227
        L_0x01d4:
            int r2 = r2 * 53
            boolean r3 = c.e.a.b.g.f.Fc.c(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((boolean) r3)
            goto L_0x0227
        L_0x01df:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x01e6:
            int r2 = r2 * 53
            long r3 = c.e.a.b.g.f.Fc.b(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x01f1:
            int r2 = r2 * 53
            int r3 = c.e.a.b.g.f.Fc.a((java.lang.Object) r9, (long) r5)
            goto L_0x0227
        L_0x01f8:
            int r2 = r2 * 53
            long r3 = c.e.a.b.g.f.Fc.b(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x0203:
            int r2 = r2 * 53
            long r3 = c.e.a.b.g.f.Fc.b(r9, r5)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
            goto L_0x0227
        L_0x020e:
            int r2 = r2 * 53
            float r3 = c.e.a.b.g.f.Fc.d(r9, r5)
            int r3 = java.lang.Float.floatToIntBits(r3)
            goto L_0x0227
        L_0x0219:
            int r2 = r2 * 53
            double r3 = c.e.a.b.g.f.Fc.e(r9, r5)
            long r3 = java.lang.Double.doubleToLongBits(r3)
            int r3 = c.e.a.b.g.f.C0864qb.a((long) r3)
        L_0x0227:
            int r2 = r2 + r3
        L_0x0228:
            int r1 = r1 + 3
            goto L_0x0005
        L_0x022c:
            int r2 = r2 * 53
            c.e.a.b.g.f.zc<?, ?> r0 = r8.q
            java.lang.Object r0 = r0.d(r9)
            int r0 = r0.hashCode()
            int r2 = r2 + r0
            boolean r0 = r8.f10270h
            if (r0 == 0) goto L_0x024a
            int r2 = r2 * 53
            c.e.a.b.g.f.db<?> r0 = r8.r
            c.e.a.b.g.f.gb r9 = r0.a((java.lang.Object) r9)
            int r9 = r9.hashCode()
            int r2 = r2 + r9
        L_0x024a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.d(java.lang.Object):int");
    }

    public final int g(int i2) {
        if (i2 < this.f10267e || i2 > this.f10268f) {
            return -1;
        }
        return b(i2, 0);
    }

    public final void c(T t) {
        int i2;
        int i3 = this.m;
        while (true) {
            i2 = this.n;
            if (i3 >= i2) {
                break;
            }
            long d2 = (long) (d(this.f10274l[i3]) & 1048575);
            Object f2 = Fc.f(t, d2);
            if (f2 != null) {
                this.s.e(f2);
                Fc.a((Object) t, d2, f2);
            }
            i3++;
        }
        int length = this.f10274l.length;
        while (i2 < length) {
            this.p.b(t, (long) this.f10274l[i2]);
            i2++;
        }
        this.q.a((Object) t);
        if (this.f10270h) {
            this.r.c(t);
        }
    }

    public final int e(int i2) {
        return this.f10265c[i2 + 2];
    }

    public static <T> long e(T t, long j2) {
        return ((Long) Fc.f(t, j2)).longValue();
    }

    public static <T> float c(T t, long j2) {
        return ((Float) Fc.f(t, j2)).floatValue();
    }

    public final boolean c(T t, T t2, int i2) {
        return a(t, i2) == a(t2, i2);
    }

    public final void b(T t, T t2, int i2) {
        int d2 = d(i2);
        int i3 = this.f10265c[i2];
        long j2 = (long) (d2 & 1048575);
        if (a(t2, i3, i2)) {
            Object f2 = Fc.f(t, j2);
            Object f3 = Fc.f(t2, j2);
            if (f2 == null || f3 == null) {
                if (f3 != null) {
                    Fc.a((Object) t, j2, f3);
                    b(t, i3, i2);
                }
                return;
            }
            Fc.a((Object) t, j2, C0864qb.a(f2, f3));
            b(t, i3, i2);
        }
    }

    public final int d(int i2) {
        return this.f10265c[i2 + 1];
    }

    public static <T> int d(T t, long j2) {
        return ((Integer) Fc.f(t, j2)).intValue();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:398:0x0833, code lost:
        r9 = (r9 + r10) + r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:418:0x090c, code lost:
        r13 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:434:0x0954, code lost:
        r5 = r5 + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:472:0x0a01, code lost:
        r5 = r5 + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:481:0x0a23, code lost:
        r3 = r3 + 3;
        r9 = r13;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int b(T r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            boolean r2 = r0.f10272j
            r3 = 267386880(0xff00000, float:2.3665827E-29)
            r4 = 0
            r7 = 1
            r8 = 1048575(0xfffff, float:1.469367E-39)
            r9 = 0
            r11 = 0
            if (r2 == 0) goto L_0x04f2
            sun.misc.Unsafe r2 = f10264b
            r12 = 0
            r13 = 0
        L_0x0016:
            int[] r14 = r0.f10265c
            int r14 = r14.length
            if (r12 >= r14) goto L_0x04ea
            int r14 = r0.d((int) r12)
            r15 = r14 & r3
            int r15 = r15 >>> 20
            int[] r3 = r0.f10265c
            r3 = r3[r12]
            r14 = r14 & r8
            long r5 = (long) r14
            com.google.android.gms.internal.measurement.zzet r14 = com.google.android.gms.internal.measurement.zzet.zzafe
            int r14 = r14.f()
            if (r15 < r14) goto L_0x0041
            com.google.android.gms.internal.measurement.zzet r14 = com.google.android.gms.internal.measurement.zzet.zzafr
            int r14 = r14.f()
            if (r15 > r14) goto L_0x0041
            int[] r14 = r0.f10265c
            int r17 = r12 + 2
            r14 = r14[r17]
            r14 = r14 & r8
            goto L_0x0042
        L_0x0041:
            r14 = 0
        L_0x0042:
            switch(r15) {
                case 0: goto L_0x04d6;
                case 1: goto L_0x04ca;
                case 2: goto L_0x04ba;
                case 3: goto L_0x04aa;
                case 4: goto L_0x049a;
                case 5: goto L_0x048e;
                case 6: goto L_0x0482;
                case 7: goto L_0x0476;
                case 8: goto L_0x0458;
                case 9: goto L_0x0444;
                case 10: goto L_0x0433;
                case 11: goto L_0x0424;
                case 12: goto L_0x0415;
                case 13: goto L_0x040a;
                case 14: goto L_0x03ff;
                case 15: goto L_0x03f0;
                case 16: goto L_0x03e1;
                case 17: goto L_0x03cc;
                case 18: goto L_0x03c1;
                case 19: goto L_0x03b8;
                case 20: goto L_0x03af;
                case 21: goto L_0x03a6;
                case 22: goto L_0x039d;
                case 23: goto L_0x0394;
                case 24: goto L_0x038b;
                case 25: goto L_0x0382;
                case 26: goto L_0x0379;
                case 27: goto L_0x036c;
                case 28: goto L_0x0363;
                case 29: goto L_0x035a;
                case 30: goto L_0x0350;
                case 31: goto L_0x0346;
                case 32: goto L_0x033c;
                case 33: goto L_0x0332;
                case 34: goto L_0x0328;
                case 35: goto L_0x0308;
                case 36: goto L_0x02eb;
                case 37: goto L_0x02ce;
                case 38: goto L_0x02b1;
                case 39: goto L_0x0293;
                case 40: goto L_0x0275;
                case 41: goto L_0x0257;
                case 42: goto L_0x0239;
                case 43: goto L_0x021b;
                case 44: goto L_0x01fd;
                case 45: goto L_0x01df;
                case 46: goto L_0x01c1;
                case 47: goto L_0x01a3;
                case 48: goto L_0x0185;
                case 49: goto L_0x0177;
                case 50: goto L_0x0167;
                case 51: goto L_0x0159;
                case 52: goto L_0x014d;
                case 53: goto L_0x013d;
                case 54: goto L_0x012d;
                case 55: goto L_0x011d;
                case 56: goto L_0x0111;
                case 57: goto L_0x0105;
                case 58: goto L_0x00f9;
                case 59: goto L_0x00db;
                case 60: goto L_0x00c7;
                case 61: goto L_0x00b5;
                case 62: goto L_0x00a5;
                case 63: goto L_0x0095;
                case 64: goto L_0x0089;
                case 65: goto L_0x007d;
                case 66: goto L_0x006d;
                case 67: goto L_0x005d;
                case 68: goto L_0x0047;
                default: goto L_0x0045;
            }
        L_0x0045:
            goto L_0x04e4
        L_0x0047:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            c.e.a.b.g.f.Sb r5 = (c.e.a.b.g.f.Sb) r5
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = com.google.android.gms.internal.measurement.zzeg.c(r3, r5, r6)
            goto L_0x03c9
        L_0x005d:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = e(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.f((int) r3, (long) r5)
            goto L_0x03c9
        L_0x006d:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = d(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.h((int) r3, (int) r5)
            goto L_0x03c9
        L_0x007d:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.h((int) r3, (long) r9)
            goto L_0x03c9
        L_0x0089:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.j(r3, r11)
            goto L_0x03c9
        L_0x0095:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = d(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.k(r3, r5)
            goto L_0x03c9
        L_0x00a5:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = d(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.g((int) r3, (int) r5)
            goto L_0x03c9
        L_0x00b5:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            com.google.android.gms.internal.measurement.zzdp r5 = (com.google.android.gms.internal.measurement.zzdp) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.c((int) r3, (com.google.android.gms.internal.measurement.zzdp) r5)
            goto L_0x03c9
        L_0x00c7:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = c.e.a.b.g.f.C0841kc.a((int) r3, (java.lang.Object) r5, (c.e.a.b.g.f.C0829hc) r6)
            goto L_0x03c9
        L_0x00db:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            boolean r6 = r5 instanceof com.google.android.gms.internal.measurement.zzdp
            if (r6 == 0) goto L_0x00f1
            com.google.android.gms.internal.measurement.zzdp r5 = (com.google.android.gms.internal.measurement.zzdp) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.c((int) r3, (com.google.android.gms.internal.measurement.zzdp) r5)
            goto L_0x03c9
        L_0x00f1:
            java.lang.String r5 = (java.lang.String) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (java.lang.String) r5)
            goto L_0x03c9
        L_0x00f9:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (boolean) r7)
            goto L_0x03c9
        L_0x0105:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.i(r3, r11)
            goto L_0x03c9
        L_0x0111:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.g((int) r3, (long) r9)
            goto L_0x03c9
        L_0x011d:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = d(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.f((int) r3, (int) r5)
            goto L_0x03c9
        L_0x012d:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = e(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3, (long) r5)
            goto L_0x03c9
        L_0x013d:
            boolean r14 = r0.a(r1, (int) r3, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = e(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.d((int) r3, (long) r5)
            goto L_0x03c9
        L_0x014d:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (float) r4)
            goto L_0x03c9
        L_0x0159:
            boolean r5 = r0.a(r1, (int) r3, (int) r12)
            if (r5 == 0) goto L_0x04e4
            r5 = 0
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (double) r5)
            goto L_0x03c9
        L_0x0167:
            c.e.a.b.g.f.Nb r14 = r0.s
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            java.lang.Object r6 = r0.b((int) r12)
            int r3 = r14.a(r3, r5, r6)
            goto L_0x03c9
        L_0x0177:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = c.e.a.b.g.f.C0841kc.b((int) r3, (java.util.List<c.e.a.b.g.f.Sb>) r5, (c.e.a.b.g.f.C0829hc) r6)
            goto L_0x03c9
        L_0x0185:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.f(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x0199
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0199:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x01a3:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.j(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x01b7
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01b7:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x01c1:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.b(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x01d5
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01d5:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x01df:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x01f3
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x01f3:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x01fd:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.g(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x0211
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0211:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x021b:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.i(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x022f
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x022f:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x0239:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.c(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x024d
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x024d:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x0257:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x026b
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x026b:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x0275:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.b(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x0289
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x0289:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x0293:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.h(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x02a7
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02a7:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x02b1:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.e(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x02c5
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02c5:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x02ce:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.d(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x02e2
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02e2:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x02eb:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x02ff
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x02ff:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
            goto L_0x0324
        L_0x0308:
            java.lang.Object r5 = r2.getObject(r1, r5)
            java.util.List r5 = (java.util.List) r5
            int r5 = c.e.a.b.g.f.C0841kc.b(r5)
            if (r5 <= 0) goto L_0x04e4
            boolean r6 = r0.f10273k
            if (r6 == 0) goto L_0x031c
            long r14 = (long) r14
            r2.putInt(r1, r14, r5)
        L_0x031c:
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3)
            int r6 = com.google.android.gms.internal.measurement.zzeg.g((int) r5)
        L_0x0324:
            int r3 = r3 + r6
            int r3 = r3 + r5
            goto L_0x03c9
        L_0x0328:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.c(r3, r5, r11)
            goto L_0x03c9
        L_0x0332:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.g(r3, r5, r11)
            goto L_0x03c9
        L_0x033c:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.i(r3, r5, r11)
            goto L_0x03c9
        L_0x0346:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.h(r3, r5, r11)
            goto L_0x03c9
        L_0x0350:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.d(r3, r5, r11)
            goto L_0x03c9
        L_0x035a:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.f(r3, r5, r11)
            goto L_0x03c9
        L_0x0363:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.b(r3, r5)
            goto L_0x03c9
        L_0x036c:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = c.e.a.b.g.f.C0841kc.a((int) r3, (java.util.List<?>) r5, (c.e.a.b.g.f.C0829hc) r6)
            goto L_0x03c9
        L_0x0379:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.a((int) r3, (java.util.List<?>) r5)
            goto L_0x03c9
        L_0x0382:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.j(r3, r5, r11)
            goto L_0x03c9
        L_0x038b:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.h(r3, r5, r11)
            goto L_0x03c9
        L_0x0394:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.i(r3, r5, r11)
            goto L_0x03c9
        L_0x039d:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.e(r3, r5, r11)
            goto L_0x03c9
        L_0x03a6:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.b((int) r3, (java.util.List<java.lang.Long>) r5, (boolean) r11)
            goto L_0x03c9
        L_0x03af:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.a((int) r3, (java.util.List<java.lang.Long>) r5, (boolean) r11)
            goto L_0x03c9
        L_0x03b8:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.h(r3, r5, r11)
            goto L_0x03c9
        L_0x03c1:
            java.util.List r5 = a((java.lang.Object) r1, (long) r5)
            int r3 = c.e.a.b.g.f.C0841kc.i(r3, r5, r11)
        L_0x03c9:
            int r13 = r13 + r3
            goto L_0x04e4
        L_0x03cc:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            c.e.a.b.g.f.Sb r5 = (c.e.a.b.g.f.Sb) r5
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = com.google.android.gms.internal.measurement.zzeg.c(r3, r5, r6)
            goto L_0x03c9
        L_0x03e1:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = c.e.a.b.g.f.Fc.b(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.f((int) r3, (long) r5)
            goto L_0x03c9
        L_0x03f0:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.h((int) r3, (int) r5)
            goto L_0x03c9
        L_0x03ff:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.h((int) r3, (long) r9)
            goto L_0x03c9
        L_0x040a:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.j(r3, r11)
            goto L_0x03c9
        L_0x0415:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.k(r3, r5)
            goto L_0x03c9
        L_0x0424:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.g((int) r3, (int) r5)
            goto L_0x03c9
        L_0x0433:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            com.google.android.gms.internal.measurement.zzdp r5 = (com.google.android.gms.internal.measurement.zzdp) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.c((int) r3, (com.google.android.gms.internal.measurement.zzdp) r5)
            goto L_0x03c9
        L_0x0444:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            c.e.a.b.g.f.hc r6 = r0.a((int) r12)
            int r3 = c.e.a.b.g.f.C0841kc.a((int) r3, (java.lang.Object) r5, (c.e.a.b.g.f.C0829hc) r6)
            goto L_0x03c9
        L_0x0458:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r1, r5)
            boolean r6 = r5 instanceof com.google.android.gms.internal.measurement.zzdp
            if (r6 == 0) goto L_0x046e
            com.google.android.gms.internal.measurement.zzdp r5 = (com.google.android.gms.internal.measurement.zzdp) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.c((int) r3, (com.google.android.gms.internal.measurement.zzdp) r5)
            goto L_0x03c9
        L_0x046e:
            java.lang.String r5 = (java.lang.String) r5
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (java.lang.String) r5)
            goto L_0x03c9
        L_0x0476:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (boolean) r7)
            goto L_0x03c9
        L_0x0482:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.i(r3, r11)
            goto L_0x03c9
        L_0x048e:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.g((int) r3, (long) r9)
            goto L_0x03c9
        L_0x049a:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            int r5 = c.e.a.b.g.f.Fc.a((java.lang.Object) r1, (long) r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.f((int) r3, (int) r5)
            goto L_0x03c9
        L_0x04aa:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = c.e.a.b.g.f.Fc.b(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.e((int) r3, (long) r5)
            goto L_0x03c9
        L_0x04ba:
            boolean r14 = r0.a(r1, (int) r12)
            if (r14 == 0) goto L_0x04e4
            long r5 = c.e.a.b.g.f.Fc.b(r1, r5)
            int r3 = com.google.android.gms.internal.measurement.zzeg.d((int) r3, (long) r5)
            goto L_0x03c9
        L_0x04ca:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (float) r4)
            goto L_0x03c9
        L_0x04d6:
            boolean r5 = r0.a(r1, (int) r12)
            if (r5 == 0) goto L_0x04e4
            r5 = 0
            int r3 = com.google.android.gms.internal.measurement.zzeg.b((int) r3, (double) r5)
            goto L_0x03c9
        L_0x04e4:
            int r12 = r12 + 3
            r3 = 267386880(0xff00000, float:2.3665827E-29)
            goto L_0x0016
        L_0x04ea:
            c.e.a.b.g.f.zc<?, ?> r2 = r0.q
            int r1 = a(r2, r1)
            int r13 = r13 + r1
            return r13
        L_0x04f2:
            sun.misc.Unsafe r2 = f10264b
            r3 = -1
            r3 = 0
            r5 = 0
            r6 = -1
            r12 = 0
        L_0x04f9:
            int[] r13 = r0.f10265c
            int r13 = r13.length
            if (r3 >= r13) goto L_0x0a2a
            int r13 = r0.d((int) r3)
            int[] r14 = r0.f10265c
            r15 = r14[r3]
            r16 = 267386880(0xff00000, float:2.3665827E-29)
            r17 = r13 & r16
            int r4 = r17 >>> 20
            r11 = 17
            if (r4 > r11) goto L_0x0525
            int r11 = r3 + 2
            r11 = r14[r11]
            r14 = r11 & r8
            int r18 = r11 >>> 20
            int r18 = r7 << r18
            if (r14 == r6) goto L_0x0522
            long r9 = (long) r14
            int r12 = r2.getInt(r1, r9)
            goto L_0x0523
        L_0x0522:
            r14 = r6
        L_0x0523:
            r6 = r14
            goto L_0x0545
        L_0x0525:
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x0542
            com.google.android.gms.internal.measurement.zzet r9 = com.google.android.gms.internal.measurement.zzet.zzafe
            int r9 = r9.f()
            if (r4 < r9) goto L_0x0542
            com.google.android.gms.internal.measurement.zzet r9 = com.google.android.gms.internal.measurement.zzet.zzafr
            int r9 = r9.f()
            if (r4 > r9) goto L_0x0542
            int[] r9 = r0.f10265c
            int r10 = r3 + 2
            r9 = r9[r10]
            r11 = r9 & r8
            goto L_0x0543
        L_0x0542:
            r11 = 0
        L_0x0543:
            r18 = 0
        L_0x0545:
            r9 = r13 & r8
            long r9 = (long) r9
            switch(r4) {
                case 0: goto L_0x0a14;
                case 1: goto L_0x0a04;
                case 2: goto L_0x09f2;
                case 3: goto L_0x09e2;
                case 4: goto L_0x09d2;
                case 5: goto L_0x09c3;
                case 6: goto L_0x09b7;
                case 7: goto L_0x09ad;
                case 8: goto L_0x0991;
                case 9: goto L_0x097f;
                case 10: goto L_0x0970;
                case 11: goto L_0x0963;
                case 12: goto L_0x0956;
                case 13: goto L_0x094b;
                case 14: goto L_0x0940;
                case 15: goto L_0x0933;
                case 16: goto L_0x0926;
                case 17: goto L_0x0913;
                case 18: goto L_0x08ff;
                case 19: goto L_0x08f3;
                case 20: goto L_0x08e7;
                case 21: goto L_0x08db;
                case 22: goto L_0x08cf;
                case 23: goto L_0x08c3;
                case 24: goto L_0x08b7;
                case 25: goto L_0x08ab;
                case 26: goto L_0x08a0;
                case 27: goto L_0x0891;
                case 28: goto L_0x0885;
                case 29: goto L_0x0878;
                case 30: goto L_0x086b;
                case 31: goto L_0x085e;
                case 32: goto L_0x0851;
                case 33: goto L_0x0844;
                case 34: goto L_0x0837;
                case 35: goto L_0x0817;
                case 36: goto L_0x07fa;
                case 37: goto L_0x07dd;
                case 38: goto L_0x07c0;
                case 39: goto L_0x07a2;
                case 40: goto L_0x0784;
                case 41: goto L_0x0766;
                case 42: goto L_0x0748;
                case 43: goto L_0x072a;
                case 44: goto L_0x070c;
                case 45: goto L_0x06ee;
                case 46: goto L_0x06d0;
                case 47: goto L_0x06b2;
                case 48: goto L_0x0694;
                case 49: goto L_0x0684;
                case 50: goto L_0x0674;
                case 51: goto L_0x0666;
                case 52: goto L_0x0659;
                case 53: goto L_0x0649;
                case 54: goto L_0x0639;
                case 55: goto L_0x0629;
                case 56: goto L_0x061b;
                case 57: goto L_0x060e;
                case 58: goto L_0x0602;
                case 59: goto L_0x05e4;
                case 60: goto L_0x05d0;
                case 61: goto L_0x05be;
                case 62: goto L_0x05ae;
                case 63: goto L_0x059e;
                case 64: goto L_0x0591;
                case 65: goto L_0x0583;
                case 66: goto L_0x0573;
                case 67: goto L_0x0563;
                case 68: goto L_0x054d;
                default: goto L_0x054b;
            }
        L_0x054b:
            goto L_0x090b
        L_0x054d:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            c.e.a.b.g.f.Sb r4 = (c.e.a.b.g.f.Sb) r4
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = com.google.android.gms.internal.measurement.zzeg.c(r15, r4, r9)
            goto L_0x090a
        L_0x0563:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            long r9 = e(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.f((int) r15, (long) r9)
            goto L_0x090a
        L_0x0573:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            int r4 = d(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.h((int) r15, (int) r4)
            goto L_0x090a
        L_0x0583:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r9 = 0
            int r4 = com.google.android.gms.internal.measurement.zzeg.h((int) r15, (long) r9)
            goto L_0x090a
        L_0x0591:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r4 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.j(r15, r4)
            goto L_0x0954
        L_0x059e:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            int r4 = d(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.k(r15, r4)
            goto L_0x090a
        L_0x05ae:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            int r4 = d(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.g((int) r15, (int) r4)
            goto L_0x090a
        L_0x05be:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.c((int) r15, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x090a
        L_0x05d0:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = c.e.a.b.g.f.C0841kc.a((int) r15, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x090a
        L_0x05e4:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            boolean r9 = r4 instanceof com.google.android.gms.internal.measurement.zzdp
            if (r9 == 0) goto L_0x05fa
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.c((int) r15, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x090a
        L_0x05fa:
            java.lang.String r4 = (java.lang.String) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (java.lang.String) r4)
            goto L_0x090a
        L_0x0602:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            int r4 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (boolean) r7)
            goto L_0x090a
        L_0x060e:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r4 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.i(r15, r4)
            goto L_0x0954
        L_0x061b:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r9 = 0
            int r4 = com.google.android.gms.internal.measurement.zzeg.g((int) r15, (long) r9)
            goto L_0x090a
        L_0x0629:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            int r4 = d(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.f((int) r15, (int) r4)
            goto L_0x090a
        L_0x0639:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            long r9 = e(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.e((int) r15, (long) r9)
            goto L_0x090a
        L_0x0649:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            long r9 = e(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.d((int) r15, (long) r9)
            goto L_0x090a
        L_0x0659:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r4 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (float) r4)
            goto L_0x0954
        L_0x0666:
            boolean r4 = r0.a(r1, (int) r15, (int) r3)
            if (r4 == 0) goto L_0x090b
            r9 = 0
            int r4 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (double) r9)
            goto L_0x090a
        L_0x0674:
            c.e.a.b.g.f.Nb r4 = r0.s
            java.lang.Object r9 = r2.getObject(r1, r9)
            java.lang.Object r10 = r0.b((int) r3)
            int r4 = r4.a(r15, r9, r10)
            goto L_0x090a
        L_0x0684:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = c.e.a.b.g.f.C0841kc.b((int) r15, (java.util.List<c.e.a.b.g.f.Sb>) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x090a
        L_0x0694:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.f(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x06a8
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x06a8:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x06b2:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.j(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x06c6
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x06c6:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x06d0:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.b(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x06e4
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x06e4:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x06ee:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x0702
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x0702:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x070c:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.g(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x0720
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x0720:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x072a:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.i(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x073e
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x073e:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x0748:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.c(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x075c
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x075c:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x0766:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x077a
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x077a:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x0784:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.b(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x0798
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x0798:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x07a2:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.h(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x07b6
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x07b6:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x07c0:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.e(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x07d4
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x07d4:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x07dd:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.d(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x07f1
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x07f1:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x07fa:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.a((java.util.List<?>) r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x080e
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x080e:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
            goto L_0x0833
        L_0x0817:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.b(r4)
            if (r4 <= 0) goto L_0x090b
            boolean r9 = r0.f10273k
            if (r9 == 0) goto L_0x082b
            long r9 = (long) r11
            r2.putInt(r1, r9, r4)
        L_0x082b:
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15)
            int r10 = com.google.android.gms.internal.measurement.zzeg.g((int) r4)
        L_0x0833:
            int r9 = r9 + r10
            int r9 = r9 + r4
            goto L_0x0954
        L_0x0837:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            r11 = 0
            int r4 = c.e.a.b.g.f.C0841kc.c(r15, r4, r11)
            goto L_0x090a
        L_0x0844:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.g(r15, r4, r11)
            goto L_0x090a
        L_0x0851:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.i(r15, r4, r11)
            goto L_0x090a
        L_0x085e:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.h(r15, r4, r11)
            goto L_0x090a
        L_0x086b:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.d(r15, r4, r11)
            goto L_0x090a
        L_0x0878:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.f(r15, r4, r11)
            goto L_0x090a
        L_0x0885:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.b(r15, r4)
            goto L_0x090a
        L_0x0891:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = c.e.a.b.g.f.C0841kc.a((int) r15, (java.util.List<?>) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x090a
        L_0x08a0:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.a((int) r15, (java.util.List<?>) r4)
            goto L_0x090a
        L_0x08ab:
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            r11 = 0
            int r4 = c.e.a.b.g.f.C0841kc.j(r15, r4, r11)
            goto L_0x090a
        L_0x08b7:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.h(r15, r4, r11)
            goto L_0x090a
        L_0x08c3:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.i(r15, r4, r11)
            goto L_0x090a
        L_0x08cf:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.e(r15, r4, r11)
            goto L_0x090a
        L_0x08db:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.b((int) r15, (java.util.List<java.lang.Long>) r4, (boolean) r11)
            goto L_0x090a
        L_0x08e7:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.a((int) r15, (java.util.List<java.lang.Long>) r4, (boolean) r11)
            goto L_0x090a
        L_0x08f3:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.h(r15, r4, r11)
            goto L_0x090a
        L_0x08ff:
            r11 = 0
            java.lang.Object r4 = r2.getObject(r1, r9)
            java.util.List r4 = (java.util.List) r4
            int r4 = c.e.a.b.g.f.C0841kc.i(r15, r4, r11)
        L_0x090a:
            int r5 = r5 + r4
        L_0x090b:
            r4 = 0
        L_0x090c:
            r9 = 0
            r10 = 0
            r13 = 0
            goto L_0x0a23
        L_0x0913:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            c.e.a.b.g.f.Sb r4 = (c.e.a.b.g.f.Sb) r4
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = com.google.android.gms.internal.measurement.zzeg.c(r15, r4, r9)
            goto L_0x090a
        L_0x0926:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            long r9 = r2.getLong(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.f((int) r15, (long) r9)
            goto L_0x090a
        L_0x0933:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            int r4 = r2.getInt(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.h((int) r15, (int) r4)
            goto L_0x090a
        L_0x0940:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            r9 = 0
            int r4 = com.google.android.gms.internal.measurement.zzeg.h((int) r15, (long) r9)
            goto L_0x090a
        L_0x094b:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            r4 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.j(r15, r4)
        L_0x0954:
            int r5 = r5 + r9
            goto L_0x090b
        L_0x0956:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            int r4 = r2.getInt(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.k(r15, r4)
            goto L_0x090a
        L_0x0963:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            int r4 = r2.getInt(r1, r9)
            int r4 = com.google.android.gms.internal.measurement.zzeg.g((int) r15, (int) r4)
            goto L_0x090a
        L_0x0970:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.c((int) r15, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x090a
        L_0x097f:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            c.e.a.b.g.f.hc r9 = r0.a((int) r3)
            int r4 = c.e.a.b.g.f.C0841kc.a((int) r15, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x090a
        L_0x0991:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            java.lang.Object r4 = r2.getObject(r1, r9)
            boolean r9 = r4 instanceof com.google.android.gms.internal.measurement.zzdp
            if (r9 == 0) goto L_0x09a5
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.c((int) r15, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x090a
        L_0x09a5:
            java.lang.String r4 = (java.lang.String) r4
            int r4 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (java.lang.String) r4)
            goto L_0x090a
        L_0x09ad:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            int r4 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (boolean) r7)
            goto L_0x090a
        L_0x09b7:
            r4 = r12 & r18
            if (r4 == 0) goto L_0x090b
            r4 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.i(r15, r4)
            int r5 = r5 + r9
            goto L_0x090c
        L_0x09c3:
            r4 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x09cf
            r13 = 0
            int r9 = com.google.android.gms.internal.measurement.zzeg.g((int) r15, (long) r13)
            goto L_0x0a01
        L_0x09cf:
            r13 = 0
            goto L_0x0a02
        L_0x09d2:
            r4 = 0
            r13 = 0
            r11 = r12 & r18
            if (r11 == 0) goto L_0x0a02
            int r9 = r2.getInt(r1, r9)
            int r9 = com.google.android.gms.internal.measurement.zzeg.f((int) r15, (int) r9)
            goto L_0x0a01
        L_0x09e2:
            r4 = 0
            r13 = 0
            r11 = r12 & r18
            if (r11 == 0) goto L_0x0a02
            long r9 = r2.getLong(r1, r9)
            int r9 = com.google.android.gms.internal.measurement.zzeg.e((int) r15, (long) r9)
            goto L_0x0a01
        L_0x09f2:
            r4 = 0
            r13 = 0
            r11 = r12 & r18
            if (r11 == 0) goto L_0x0a02
            long r9 = r2.getLong(r1, r9)
            int r9 = com.google.android.gms.internal.measurement.zzeg.d((int) r15, (long) r9)
        L_0x0a01:
            int r5 = r5 + r9
        L_0x0a02:
            r9 = 0
            goto L_0x0a11
        L_0x0a04:
            r4 = 0
            r13 = 0
            r9 = r12 & r18
            if (r9 == 0) goto L_0x0a02
            r9 = 0
            int r10 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (float) r9)
            int r5 = r5 + r10
        L_0x0a11:
            r10 = 0
            goto L_0x0a23
        L_0x0a14:
            r4 = 0
            r9 = 0
            r13 = 0
            r10 = r12 & r18
            if (r10 == 0) goto L_0x0a11
            r10 = 0
            int r15 = com.google.android.gms.internal.measurement.zzeg.b((int) r15, (double) r10)
            int r5 = r5 + r15
        L_0x0a23:
            int r3 = r3 + 3
            r9 = r13
            r4 = 0
            r11 = 0
            goto L_0x04f9
        L_0x0a2a:
            c.e.a.b.g.f.zc<?, ?> r2 = r0.q
            int r2 = a(r2, r1)
            int r5 = r5 + r2
            boolean r2 = r0.f10270h
            if (r2 == 0) goto L_0x0a40
            c.e.a.b.g.f.db<?> r2 = r0.r
            c.e.a.b.g.f.gb r1 = r2.a((java.lang.Object) r1)
            int r1 = r1.h()
            int r5 = r5 + r1
        L_0x0a40:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.b(java.lang.Object):int");
    }

    public static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    public final T a() {
        return this.o.a(this.f10269g);
    }

    public final void a(T t, T t2) {
        if (t2 != null) {
            for (int i2 = 0; i2 < this.f10265c.length; i2 += 3) {
                int d2 = d(i2);
                long j2 = (long) (1048575 & d2);
                int i3 = this.f10265c[i2];
                switch ((d2 & 267386880) >>> 20) {
                    case 0:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.e(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 1:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.d(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 2:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.b(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 3:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.b(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 4:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 5:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.b(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 6:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 7:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.c(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 8:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.f(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 9:
                        a(t, t2, i2);
                        break;
                    case 10:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.f(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 11:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 12:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 13:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 14:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.b(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 15:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.a((Object) t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 16:
                        if (!a(t2, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.b(t2, j2));
                            b(t, i2);
                            break;
                        }
                    case 17:
                        a(t, t2, i2);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.p.a(t, t2, j2);
                        break;
                    case 50:
                        C0841kc.a(this.s, t, t2, j2);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!a(t2, i3, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.f(t2, j2));
                            b(t, i3, i2);
                            break;
                        }
                    case 60:
                        b(t, t2, i2);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!a(t2, i3, i2)) {
                            break;
                        } else {
                            Fc.a((Object) t, j2, Fc.f(t2, j2));
                            b(t, i3, i2);
                            break;
                        }
                    case 68:
                        b(t, t2, i2);
                        break;
                }
            }
            if (!this.f10272j) {
                C0841kc.a(this.q, t, t2);
                if (this.f10270h) {
                    C0841kc.a(this.r, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    public final void a(T t, T t2, int i2) {
        long d2 = (long) (d(i2) & 1048575);
        if (a(t2, i2)) {
            Object f2 = Fc.f(t, d2);
            Object f3 = Fc.f(t2, d2);
            if (f2 == null || f3 == null) {
                if (f3 != null) {
                    Fc.a((Object) t, d2, f3);
                    b(t, i2);
                }
                return;
            }
            Fc.a((Object) t, d2, C0864qb.a(f2, f3));
            b(t, i2);
        }
    }

    public static <UT, UB> int a(C0900zc<UT, UB> zcVar, T t) {
        return zcVar.c(zcVar.d(t));
    }

    public static <E> List<E> a(Object obj, long j2) {
        return (List) Fc.f(obj, j2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x04ba A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x04bb  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x04e7  */
    /* JADX WARNING: Removed duplicated region for block: B:321:0x0969  */
    /* JADX WARNING: Removed duplicated region for block: B:323:0x096f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(T r13, c.e.a.b.g.f.Oc r14) {
        /*
            r12 = this;
            int r0 = r14.a()
            int r1 = c.e.a.b.g.f.C0852nb.e.m
            r2 = 267386880(0xff00000, float:2.3665827E-29)
            r3 = 0
            r4 = 1
            r5 = 0
            r6 = 1048575(0xfffff, float:1.469367E-39)
            if (r0 != r1) goto L_0x04c1
            c.e.a.b.g.f.zc<?, ?> r0 = r12.q
            a(r0, r13, (c.e.a.b.g.f.Oc) r14)
            boolean r0 = r12.f10270h
            if (r0 == 0) goto L_0x0030
            c.e.a.b.g.f.db<?> r0 = r12.r
            c.e.a.b.g.f.gb r0 = r0.a((java.lang.Object) r13)
            boolean r1 = r0.b()
            if (r1 != 0) goto L_0x0030
            java.util.Iterator r0 = r0.a()
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            goto L_0x0031
        L_0x0030:
            r0 = r3
        L_0x0031:
            int[] r1 = r12.f10265c
            int r1 = r1.length
            int r1 = r1 + -3
        L_0x0036:
            if (r1 < 0) goto L_0x04b8
            int r7 = r12.d((int) r1)
            int[] r8 = r12.f10265c
            r9 = r8[r1]
            if (r0 != 0) goto L_0x04b2
            r10 = r7 & r2
            int r10 = r10 >>> 20
            switch(r10) {
                case 0: goto L_0x049f;
                case 1: goto L_0x048f;
                case 2: goto L_0x047f;
                case 3: goto L_0x046f;
                case 4: goto L_0x045f;
                case 5: goto L_0x044f;
                case 6: goto L_0x043f;
                case 7: goto L_0x042e;
                case 8: goto L_0x041d;
                case 9: goto L_0x0408;
                case 10: goto L_0x03f5;
                case 11: goto L_0x03e4;
                case 12: goto L_0x03d3;
                case 13: goto L_0x03c2;
                case 14: goto L_0x03b1;
                case 15: goto L_0x03a0;
                case 16: goto L_0x038f;
                case 17: goto L_0x037a;
                case 18: goto L_0x036b;
                case 19: goto L_0x035c;
                case 20: goto L_0x034d;
                case 21: goto L_0x033e;
                case 22: goto L_0x032f;
                case 23: goto L_0x0320;
                case 24: goto L_0x0311;
                case 25: goto L_0x0302;
                case 26: goto L_0x02f3;
                case 27: goto L_0x02e0;
                case 28: goto L_0x02d1;
                case 29: goto L_0x02c2;
                case 30: goto L_0x02b3;
                case 31: goto L_0x02a4;
                case 32: goto L_0x0295;
                case 33: goto L_0x0286;
                case 34: goto L_0x0277;
                case 35: goto L_0x0268;
                case 36: goto L_0x0259;
                case 37: goto L_0x024a;
                case 38: goto L_0x023b;
                case 39: goto L_0x022c;
                case 40: goto L_0x021d;
                case 41: goto L_0x020e;
                case 42: goto L_0x01ff;
                case 43: goto L_0x01f0;
                case 44: goto L_0x01e1;
                case 45: goto L_0x01d2;
                case 46: goto L_0x01c3;
                case 47: goto L_0x01b4;
                case 48: goto L_0x01a5;
                case 49: goto L_0x0192;
                case 50: goto L_0x0187;
                case 51: goto L_0x0176;
                case 52: goto L_0x0165;
                case 53: goto L_0x0154;
                case 54: goto L_0x0143;
                case 55: goto L_0x0132;
                case 56: goto L_0x0121;
                case 57: goto L_0x0110;
                case 58: goto L_0x00ff;
                case 59: goto L_0x00ee;
                case 60: goto L_0x00d9;
                case 61: goto L_0x00c6;
                case 62: goto L_0x00b5;
                case 63: goto L_0x00a4;
                case 64: goto L_0x0093;
                case 65: goto L_0x0082;
                case 66: goto L_0x0071;
                case 67: goto L_0x0060;
                case 68: goto L_0x004b;
                default: goto L_0x0049;
            }
        L_0x0049:
            goto L_0x04ae
        L_0x004b:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            c.e.a.b.g.f.hc r8 = r12.a((int) r1)
            r14.a((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.C0829hc) r8)
            goto L_0x04ae
        L_0x0060:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = e(r13, r7)
            r14.b((int) r9, (long) r7)
            goto L_0x04ae
        L_0x0071:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.f(r9, r7)
            goto L_0x04ae
        L_0x0082:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = e(r13, r7)
            r14.a((int) r9, (long) r7)
            goto L_0x04ae
        L_0x0093:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.e((int) r9, (int) r7)
            goto L_0x04ae
        L_0x00a4:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.b((int) r9, (int) r7)
            goto L_0x04ae
        L_0x00b5:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.d((int) r9, (int) r7)
            goto L_0x04ae
        L_0x00c6:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            com.google.android.gms.internal.measurement.zzdp r7 = (com.google.android.gms.internal.measurement.zzdp) r7
            r14.a((int) r9, (com.google.android.gms.internal.measurement.zzdp) r7)
            goto L_0x04ae
        L_0x00d9:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            c.e.a.b.g.f.hc r8 = r12.a((int) r1)
            r14.b((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.C0829hc) r8)
            goto L_0x04ae
        L_0x00ee:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            a((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.Oc) r14)
            goto L_0x04ae
        L_0x00ff:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            boolean r7 = f(r13, r7)
            r14.a((int) r9, (boolean) r7)
            goto L_0x04ae
        L_0x0110:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.c((int) r9, (int) r7)
            goto L_0x04ae
        L_0x0121:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = e(r13, r7)
            r14.c((int) r9, (long) r7)
            goto L_0x04ae
        L_0x0132:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = d(r13, r7)
            r14.a((int) r9, (int) r7)
            goto L_0x04ae
        L_0x0143:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = e(r13, r7)
            r14.e((int) r9, (long) r7)
            goto L_0x04ae
        L_0x0154:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = e(r13, r7)
            r14.d((int) r9, (long) r7)
            goto L_0x04ae
        L_0x0165:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            float r7 = c(r13, r7)
            r14.a((int) r9, (float) r7)
            goto L_0x04ae
        L_0x0176:
            boolean r8 = r12.a(r13, (int) r9, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            double r7 = b(r13, (long) r7)
            r14.a((int) r9, (double) r7)
            goto L_0x04ae
        L_0x0187:
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            r12.a((c.e.a.b.g.f.Oc) r14, (int) r9, (java.lang.Object) r7, (int) r1)
            goto L_0x04ae
        L_0x0192:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.hc r9 = r12.a((int) r1)
            c.e.a.b.g.f.C0841kc.b((int) r8, (java.util.List<?>) r7, (c.e.a.b.g.f.Oc) r14, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x04ae
        L_0x01a5:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.e(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01b4:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.j(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01c3:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.g(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01d2:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.l(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01e1:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.m(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01f0:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.i(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x01ff:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.n(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x020e:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.k(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x021d:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.f(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x022c:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.h(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x023b:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.d(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x024a:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.c(r8, r7, r14, r4)
            goto L_0x04ae
        L_0x0259:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.b((int) r8, (java.util.List<java.lang.Float>) r7, (c.e.a.b.g.f.Oc) r14, (boolean) r4)
            goto L_0x04ae
        L_0x0268:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.a((int) r8, (java.util.List<java.lang.Double>) r7, (c.e.a.b.g.f.Oc) r14, (boolean) r4)
            goto L_0x04ae
        L_0x0277:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.e(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x0286:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.j(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x0295:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.g(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x02a4:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.l(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x02b3:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.m(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x02c2:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.i(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x02d1:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.b((int) r8, (java.util.List<com.google.android.gms.internal.measurement.zzdp>) r7, (c.e.a.b.g.f.Oc) r14)
            goto L_0x04ae
        L_0x02e0:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.hc r9 = r12.a((int) r1)
            c.e.a.b.g.f.C0841kc.a((int) r8, (java.util.List<?>) r7, (c.e.a.b.g.f.Oc) r14, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x04ae
        L_0x02f3:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.a((int) r8, (java.util.List<java.lang.String>) r7, (c.e.a.b.g.f.Oc) r14)
            goto L_0x04ae
        L_0x0302:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.n(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x0311:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.k(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x0320:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.f(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x032f:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.h(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x033e:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.d(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x034d:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.c(r8, r7, r14, r5)
            goto L_0x04ae
        L_0x035c:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.b((int) r8, (java.util.List<java.lang.Float>) r7, (c.e.a.b.g.f.Oc) r14, (boolean) r5)
            goto L_0x04ae
        L_0x036b:
            r8 = r8[r1]
            r7 = r7 & r6
            long r9 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r9)
            java.util.List r7 = (java.util.List) r7
            c.e.a.b.g.f.C0841kc.a((int) r8, (java.util.List<java.lang.Double>) r7, (c.e.a.b.g.f.Oc) r14, (boolean) r5)
            goto L_0x04ae
        L_0x037a:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            c.e.a.b.g.f.hc r8 = r12.a((int) r1)
            r14.a((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.C0829hc) r8)
            goto L_0x04ae
        L_0x038f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = c.e.a.b.g.f.Fc.b(r13, r7)
            r14.b((int) r9, (long) r7)
            goto L_0x04ae
        L_0x03a0:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.f(r9, r7)
            goto L_0x04ae
        L_0x03b1:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = c.e.a.b.g.f.Fc.b(r13, r7)
            r14.a((int) r9, (long) r7)
            goto L_0x04ae
        L_0x03c2:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.e((int) r9, (int) r7)
            goto L_0x04ae
        L_0x03d3:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.b((int) r9, (int) r7)
            goto L_0x04ae
        L_0x03e4:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.d((int) r9, (int) r7)
            goto L_0x04ae
        L_0x03f5:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            com.google.android.gms.internal.measurement.zzdp r7 = (com.google.android.gms.internal.measurement.zzdp) r7
            r14.a((int) r9, (com.google.android.gms.internal.measurement.zzdp) r7)
            goto L_0x04ae
        L_0x0408:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            c.e.a.b.g.f.hc r8 = r12.a((int) r1)
            r14.b((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.C0829hc) r8)
            goto L_0x04ae
        L_0x041d:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            java.lang.Object r7 = c.e.a.b.g.f.Fc.f(r13, r7)
            a((int) r9, (java.lang.Object) r7, (c.e.a.b.g.f.Oc) r14)
            goto L_0x04ae
        L_0x042e:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            boolean r7 = c.e.a.b.g.f.Fc.c(r13, r7)
            r14.a((int) r9, (boolean) r7)
            goto L_0x04ae
        L_0x043f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.c((int) r9, (int) r7)
            goto L_0x04ae
        L_0x044f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = c.e.a.b.g.f.Fc.b(r13, r7)
            r14.c((int) r9, (long) r7)
            goto L_0x04ae
        L_0x045f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            int r7 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r7)
            r14.a((int) r9, (int) r7)
            goto L_0x04ae
        L_0x046f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = c.e.a.b.g.f.Fc.b(r13, r7)
            r14.e((int) r9, (long) r7)
            goto L_0x04ae
        L_0x047f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            long r7 = c.e.a.b.g.f.Fc.b(r13, r7)
            r14.d((int) r9, (long) r7)
            goto L_0x04ae
        L_0x048f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            float r7 = c.e.a.b.g.f.Fc.d(r13, r7)
            r14.a((int) r9, (float) r7)
            goto L_0x04ae
        L_0x049f:
            boolean r8 = r12.a(r13, (int) r1)
            if (r8 == 0) goto L_0x04ae
            r7 = r7 & r6
            long r7 = (long) r7
            double r7 = c.e.a.b.g.f.Fc.e(r13, r7)
            r14.a((int) r9, (double) r7)
        L_0x04ae:
            int r1 = r1 + -3
            goto L_0x0036
        L_0x04b2:
            c.e.a.b.g.f.db<?> r13 = r12.r
            r13.a((java.util.Map.Entry<?, ?>) r0)
            throw r3
        L_0x04b8:
            if (r0 != 0) goto L_0x04bb
            return
        L_0x04bb:
            c.e.a.b.g.f.db<?> r13 = r12.r
            r13.a(r14, r0)
            throw r3
        L_0x04c1:
            boolean r0 = r12.f10272j
            if (r0 == 0) goto L_0x0975
            boolean r0 = r12.f10270h
            if (r0 == 0) goto L_0x04e0
            c.e.a.b.g.f.db<?> r0 = r12.r
            c.e.a.b.g.f.gb r0 = r0.a((java.lang.Object) r13)
            boolean r1 = r0.b()
            if (r1 != 0) goto L_0x04e0
            java.util.Iterator r0 = r0.e()
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            goto L_0x04e1
        L_0x04e0:
            r0 = r3
        L_0x04e1:
            int[] r1 = r12.f10265c
            int r1 = r1.length
            r7 = 0
        L_0x04e5:
            if (r7 >= r1) goto L_0x0967
            int r8 = r12.d((int) r7)
            int[] r9 = r12.f10265c
            r10 = r9[r7]
            if (r0 != 0) goto L_0x0961
            r11 = r8 & r2
            int r11 = r11 >>> 20
            switch(r11) {
                case 0: goto L_0x094e;
                case 1: goto L_0x093e;
                case 2: goto L_0x092e;
                case 3: goto L_0x091e;
                case 4: goto L_0x090e;
                case 5: goto L_0x08fe;
                case 6: goto L_0x08ee;
                case 7: goto L_0x08dd;
                case 8: goto L_0x08cc;
                case 9: goto L_0x08b7;
                case 10: goto L_0x08a4;
                case 11: goto L_0x0893;
                case 12: goto L_0x0882;
                case 13: goto L_0x0871;
                case 14: goto L_0x0860;
                case 15: goto L_0x084f;
                case 16: goto L_0x083e;
                case 17: goto L_0x0829;
                case 18: goto L_0x081a;
                case 19: goto L_0x080b;
                case 20: goto L_0x07fc;
                case 21: goto L_0x07ed;
                case 22: goto L_0x07de;
                case 23: goto L_0x07cf;
                case 24: goto L_0x07c0;
                case 25: goto L_0x07b1;
                case 26: goto L_0x07a2;
                case 27: goto L_0x078f;
                case 28: goto L_0x0780;
                case 29: goto L_0x0771;
                case 30: goto L_0x0762;
                case 31: goto L_0x0753;
                case 32: goto L_0x0744;
                case 33: goto L_0x0735;
                case 34: goto L_0x0726;
                case 35: goto L_0x0717;
                case 36: goto L_0x0708;
                case 37: goto L_0x06f9;
                case 38: goto L_0x06ea;
                case 39: goto L_0x06db;
                case 40: goto L_0x06cc;
                case 41: goto L_0x06bd;
                case 42: goto L_0x06ae;
                case 43: goto L_0x069f;
                case 44: goto L_0x0690;
                case 45: goto L_0x0681;
                case 46: goto L_0x0672;
                case 47: goto L_0x0663;
                case 48: goto L_0x0654;
                case 49: goto L_0x0641;
                case 50: goto L_0x0636;
                case 51: goto L_0x0625;
                case 52: goto L_0x0614;
                case 53: goto L_0x0603;
                case 54: goto L_0x05f2;
                case 55: goto L_0x05e1;
                case 56: goto L_0x05d0;
                case 57: goto L_0x05bf;
                case 58: goto L_0x05ae;
                case 59: goto L_0x059d;
                case 60: goto L_0x0588;
                case 61: goto L_0x0575;
                case 62: goto L_0x0564;
                case 63: goto L_0x0553;
                case 64: goto L_0x0542;
                case 65: goto L_0x0531;
                case 66: goto L_0x0520;
                case 67: goto L_0x050f;
                case 68: goto L_0x04fa;
                default: goto L_0x04f8;
            }
        L_0x04f8:
            goto L_0x095d
        L_0x04fa:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            c.e.a.b.g.f.hc r9 = r12.a((int) r7)
            r14.a((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x095d
        L_0x050f:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = e(r13, r8)
            r14.b((int) r10, (long) r8)
            goto L_0x095d
        L_0x0520:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.f(r10, r8)
            goto L_0x095d
        L_0x0531:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = e(r13, r8)
            r14.a((int) r10, (long) r8)
            goto L_0x095d
        L_0x0542:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.e((int) r10, (int) r8)
            goto L_0x095d
        L_0x0553:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.b((int) r10, (int) r8)
            goto L_0x095d
        L_0x0564:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.d((int) r10, (int) r8)
            goto L_0x095d
        L_0x0575:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            com.google.android.gms.internal.measurement.zzdp r8 = (com.google.android.gms.internal.measurement.zzdp) r8
            r14.a((int) r10, (com.google.android.gms.internal.measurement.zzdp) r8)
            goto L_0x095d
        L_0x0588:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            c.e.a.b.g.f.hc r9 = r12.a((int) r7)
            r14.b((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x095d
        L_0x059d:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            a((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.Oc) r14)
            goto L_0x095d
        L_0x05ae:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            boolean r8 = f(r13, r8)
            r14.a((int) r10, (boolean) r8)
            goto L_0x095d
        L_0x05bf:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.c((int) r10, (int) r8)
            goto L_0x095d
        L_0x05d0:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = e(r13, r8)
            r14.c((int) r10, (long) r8)
            goto L_0x095d
        L_0x05e1:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = d(r13, r8)
            r14.a((int) r10, (int) r8)
            goto L_0x095d
        L_0x05f2:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = e(r13, r8)
            r14.e((int) r10, (long) r8)
            goto L_0x095d
        L_0x0603:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = e(r13, r8)
            r14.d((int) r10, (long) r8)
            goto L_0x095d
        L_0x0614:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            float r8 = c(r13, r8)
            r14.a((int) r10, (float) r8)
            goto L_0x095d
        L_0x0625:
            boolean r9 = r12.a(r13, (int) r10, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            double r8 = b(r13, (long) r8)
            r14.a((int) r10, (double) r8)
            goto L_0x095d
        L_0x0636:
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            r12.a((c.e.a.b.g.f.Oc) r14, (int) r10, (java.lang.Object) r8, (int) r7)
            goto L_0x095d
        L_0x0641:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.hc r10 = r12.a((int) r7)
            c.e.a.b.g.f.C0841kc.b((int) r9, (java.util.List<?>) r8, (c.e.a.b.g.f.Oc) r14, (c.e.a.b.g.f.C0829hc) r10)
            goto L_0x095d
        L_0x0654:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.e(r9, r8, r14, r4)
            goto L_0x095d
        L_0x0663:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.j(r9, r8, r14, r4)
            goto L_0x095d
        L_0x0672:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.g(r9, r8, r14, r4)
            goto L_0x095d
        L_0x0681:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.l(r9, r8, r14, r4)
            goto L_0x095d
        L_0x0690:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.m(r9, r8, r14, r4)
            goto L_0x095d
        L_0x069f:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.i(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06ae:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.n(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06bd:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.k(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06cc:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.f(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06db:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.h(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06ea:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.d(r9, r8, r14, r4)
            goto L_0x095d
        L_0x06f9:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.c(r9, r8, r14, r4)
            goto L_0x095d
        L_0x0708:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.b((int) r9, (java.util.List<java.lang.Float>) r8, (c.e.a.b.g.f.Oc) r14, (boolean) r4)
            goto L_0x095d
        L_0x0717:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.a((int) r9, (java.util.List<java.lang.Double>) r8, (c.e.a.b.g.f.Oc) r14, (boolean) r4)
            goto L_0x095d
        L_0x0726:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.e(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0735:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.j(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0744:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.g(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0753:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.l(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0762:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.m(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0771:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.i(r9, r8, r14, r5)
            goto L_0x095d
        L_0x0780:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.b((int) r9, (java.util.List<com.google.android.gms.internal.measurement.zzdp>) r8, (c.e.a.b.g.f.Oc) r14)
            goto L_0x095d
        L_0x078f:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.hc r10 = r12.a((int) r7)
            c.e.a.b.g.f.C0841kc.a((int) r9, (java.util.List<?>) r8, (c.e.a.b.g.f.Oc) r14, (c.e.a.b.g.f.C0829hc) r10)
            goto L_0x095d
        L_0x07a2:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.a((int) r9, (java.util.List<java.lang.String>) r8, (c.e.a.b.g.f.Oc) r14)
            goto L_0x095d
        L_0x07b1:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.n(r9, r8, r14, r5)
            goto L_0x095d
        L_0x07c0:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.k(r9, r8, r14, r5)
            goto L_0x095d
        L_0x07cf:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.f(r9, r8, r14, r5)
            goto L_0x095d
        L_0x07de:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.h(r9, r8, r14, r5)
            goto L_0x095d
        L_0x07ed:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.d(r9, r8, r14, r5)
            goto L_0x095d
        L_0x07fc:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.c(r9, r8, r14, r5)
            goto L_0x095d
        L_0x080b:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.b((int) r9, (java.util.List<java.lang.Float>) r8, (c.e.a.b.g.f.Oc) r14, (boolean) r5)
            goto L_0x095d
        L_0x081a:
            r9 = r9[r7]
            r8 = r8 & r6
            long r10 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r10)
            java.util.List r8 = (java.util.List) r8
            c.e.a.b.g.f.C0841kc.a((int) r9, (java.util.List<java.lang.Double>) r8, (c.e.a.b.g.f.Oc) r14, (boolean) r5)
            goto L_0x095d
        L_0x0829:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            c.e.a.b.g.f.hc r9 = r12.a((int) r7)
            r14.a((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x095d
        L_0x083e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = c.e.a.b.g.f.Fc.b(r13, r8)
            r14.b((int) r10, (long) r8)
            goto L_0x095d
        L_0x084f:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.f(r10, r8)
            goto L_0x095d
        L_0x0860:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = c.e.a.b.g.f.Fc.b(r13, r8)
            r14.a((int) r10, (long) r8)
            goto L_0x095d
        L_0x0871:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.e((int) r10, (int) r8)
            goto L_0x095d
        L_0x0882:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.b((int) r10, (int) r8)
            goto L_0x095d
        L_0x0893:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.d((int) r10, (int) r8)
            goto L_0x095d
        L_0x08a4:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            com.google.android.gms.internal.measurement.zzdp r8 = (com.google.android.gms.internal.measurement.zzdp) r8
            r14.a((int) r10, (com.google.android.gms.internal.measurement.zzdp) r8)
            goto L_0x095d
        L_0x08b7:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            c.e.a.b.g.f.hc r9 = r12.a((int) r7)
            r14.b((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x095d
        L_0x08cc:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            java.lang.Object r8 = c.e.a.b.g.f.Fc.f(r13, r8)
            a((int) r10, (java.lang.Object) r8, (c.e.a.b.g.f.Oc) r14)
            goto L_0x095d
        L_0x08dd:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            boolean r8 = c.e.a.b.g.f.Fc.c(r13, r8)
            r14.a((int) r10, (boolean) r8)
            goto L_0x095d
        L_0x08ee:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.c((int) r10, (int) r8)
            goto L_0x095d
        L_0x08fe:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = c.e.a.b.g.f.Fc.b(r13, r8)
            r14.c((int) r10, (long) r8)
            goto L_0x095d
        L_0x090e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            int r8 = c.e.a.b.g.f.Fc.a((java.lang.Object) r13, (long) r8)
            r14.a((int) r10, (int) r8)
            goto L_0x095d
        L_0x091e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = c.e.a.b.g.f.Fc.b(r13, r8)
            r14.e((int) r10, (long) r8)
            goto L_0x095d
        L_0x092e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            long r8 = c.e.a.b.g.f.Fc.b(r13, r8)
            r14.d((int) r10, (long) r8)
            goto L_0x095d
        L_0x093e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            float r8 = c.e.a.b.g.f.Fc.d(r13, r8)
            r14.a((int) r10, (float) r8)
            goto L_0x095d
        L_0x094e:
            boolean r9 = r12.a(r13, (int) r7)
            if (r9 == 0) goto L_0x095d
            r8 = r8 & r6
            long r8 = (long) r8
            double r8 = c.e.a.b.g.f.Fc.e(r13, r8)
            r14.a((int) r10, (double) r8)
        L_0x095d:
            int r7 = r7 + 3
            goto L_0x04e5
        L_0x0961:
            c.e.a.b.g.f.db<?> r13 = r12.r
            r13.a((java.util.Map.Entry<?, ?>) r0)
            throw r3
        L_0x0967:
            if (r0 != 0) goto L_0x096f
            c.e.a.b.g.f.zc<?, ?> r0 = r12.q
            a(r0, r13, (c.e.a.b.g.f.Oc) r14)
            return
        L_0x096f:
            c.e.a.b.g.f.db<?> r13 = r12.r
            r13.a(r14, r0)
            throw r3
        L_0x0975:
            r12.b(r13, (c.e.a.b.g.f.Oc) r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, c.e.a.b.g.f.Oc):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:167:0x0469  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x046f  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(T r18, c.e.a.b.g.f.Oc r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            boolean r3 = r0.f10270h
            if (r3 == 0) goto L_0x0021
            c.e.a.b.g.f.db<?> r3 = r0.r
            c.e.a.b.g.f.gb r3 = r3.a((java.lang.Object) r1)
            boolean r5 = r3.b()
            if (r5 != 0) goto L_0x0021
            java.util.Iterator r3 = r3.e()
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            goto L_0x0022
        L_0x0021:
            r3 = 0
        L_0x0022:
            r5 = -1
            int[] r6 = r0.f10265c
            int r6 = r6.length
            sun.misc.Unsafe r7 = f10264b
            r8 = 0
            r5 = 0
            r9 = -1
            r10 = 0
        L_0x002c:
            if (r5 >= r6) goto L_0x0466
            int r11 = r0.d((int) r5)
            int[] r12 = r0.f10265c
            r13 = r12[r5]
            r14 = 267386880(0xff00000, float:2.3665827E-29)
            r14 = r14 & r11
            int r14 = r14 >>> 20
            boolean r15 = r0.f10272j
            r16 = 1048575(0xfffff, float:1.469367E-39)
            r4 = 1
            if (r15 != 0) goto L_0x005b
            r15 = 17
            if (r14 > r15) goto L_0x005b
            int r15 = r5 + 2
            r12 = r12[r15]
            r15 = r12 & r16
            if (r15 == r9) goto L_0x0055
            long r9 = (long) r15
            int r10 = r7.getInt(r1, r9)
            goto L_0x0056
        L_0x0055:
            r15 = r9
        L_0x0056:
            int r9 = r12 >>> 20
            int r9 = r4 << r9
            goto L_0x005d
        L_0x005b:
            r15 = r9
            r9 = 0
        L_0x005d:
            if (r3 != 0) goto L_0x045f
            r11 = r11 & r16
            long r11 = (long) r11
            switch(r14) {
                case 0: goto L_0x044f;
                case 1: goto L_0x0443;
                case 2: goto L_0x0437;
                case 3: goto L_0x042b;
                case 4: goto L_0x041f;
                case 5: goto L_0x0413;
                case 6: goto L_0x0407;
                case 7: goto L_0x03fb;
                case 8: goto L_0x03ef;
                case 9: goto L_0x03de;
                case 10: goto L_0x03cf;
                case 11: goto L_0x03c2;
                case 12: goto L_0x03b5;
                case 13: goto L_0x03a8;
                case 14: goto L_0x039b;
                case 15: goto L_0x038e;
                case 16: goto L_0x0381;
                case 17: goto L_0x0370;
                case 18: goto L_0x0361;
                case 19: goto L_0x0352;
                case 20: goto L_0x0343;
                case 21: goto L_0x0334;
                case 22: goto L_0x0325;
                case 23: goto L_0x0316;
                case 24: goto L_0x0307;
                case 25: goto L_0x02f8;
                case 26: goto L_0x02e9;
                case 27: goto L_0x02d6;
                case 28: goto L_0x02c7;
                case 29: goto L_0x02b8;
                case 30: goto L_0x02a9;
                case 31: goto L_0x029a;
                case 32: goto L_0x028b;
                case 33: goto L_0x027c;
                case 34: goto L_0x026d;
                case 35: goto L_0x025e;
                case 36: goto L_0x024f;
                case 37: goto L_0x0240;
                case 38: goto L_0x0231;
                case 39: goto L_0x0222;
                case 40: goto L_0x0213;
                case 41: goto L_0x0204;
                case 42: goto L_0x01f5;
                case 43: goto L_0x01e6;
                case 44: goto L_0x01d7;
                case 45: goto L_0x01c8;
                case 46: goto L_0x01b9;
                case 47: goto L_0x01aa;
                case 48: goto L_0x019b;
                case 49: goto L_0x0188;
                case 50: goto L_0x017f;
                case 51: goto L_0x0170;
                case 52: goto L_0x0161;
                case 53: goto L_0x0152;
                case 54: goto L_0x0143;
                case 55: goto L_0x0134;
                case 56: goto L_0x0125;
                case 57: goto L_0x0116;
                case 58: goto L_0x0107;
                case 59: goto L_0x00f8;
                case 60: goto L_0x00e5;
                case 61: goto L_0x00d4;
                case 62: goto L_0x00c5;
                case 63: goto L_0x00b6;
                case 64: goto L_0x00a7;
                case 65: goto L_0x0098;
                case 66: goto L_0x0089;
                case 67: goto L_0x007a;
                case 68: goto L_0x0067;
                default: goto L_0x0065;
            }
        L_0x0065:
            goto L_0x045a
        L_0x0067:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            c.e.a.b.g.f.hc r9 = r0.a((int) r5)
            r2.a((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x045a
        L_0x007a:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            long r11 = e(r1, r11)
            r2.b((int) r13, (long) r11)
            goto L_0x045a
        L_0x0089:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.f(r13, r4)
            goto L_0x045a
        L_0x0098:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            long r11 = e(r1, r11)
            r2.a((int) r13, (long) r11)
            goto L_0x045a
        L_0x00a7:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.e((int) r13, (int) r4)
            goto L_0x045a
        L_0x00b6:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.b((int) r13, (int) r4)
            goto L_0x045a
        L_0x00c5:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.d((int) r13, (int) r4)
            goto L_0x045a
        L_0x00d4:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            r2.a((int) r13, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x045a
        L_0x00e5:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            c.e.a.b.g.f.hc r9 = r0.a((int) r5)
            r2.b((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x045a
        L_0x00f8:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            a((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.Oc) r2)
            goto L_0x045a
        L_0x0107:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            boolean r4 = f(r1, r11)
            r2.a((int) r13, (boolean) r4)
            goto L_0x045a
        L_0x0116:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.c((int) r13, (int) r4)
            goto L_0x045a
        L_0x0125:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            long r11 = e(r1, r11)
            r2.c((int) r13, (long) r11)
            goto L_0x045a
        L_0x0134:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            int r4 = d(r1, r11)
            r2.a((int) r13, (int) r4)
            goto L_0x045a
        L_0x0143:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            long r11 = e(r1, r11)
            r2.e((int) r13, (long) r11)
            goto L_0x045a
        L_0x0152:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            long r11 = e(r1, r11)
            r2.d((int) r13, (long) r11)
            goto L_0x045a
        L_0x0161:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            float r4 = c(r1, r11)
            r2.a((int) r13, (float) r4)
            goto L_0x045a
        L_0x0170:
            boolean r4 = r0.a(r1, (int) r13, (int) r5)
            if (r4 == 0) goto L_0x045a
            double r11 = b(r1, (long) r11)
            r2.a((int) r13, (double) r11)
            goto L_0x045a
        L_0x017f:
            java.lang.Object r4 = r7.getObject(r1, r11)
            r0.a((c.e.a.b.g.f.Oc) r2, (int) r13, (java.lang.Object) r4, (int) r5)
            goto L_0x045a
        L_0x0188:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.hc r11 = r0.a((int) r5)
            c.e.a.b.g.f.C0841kc.b((int) r4, (java.util.List<?>) r9, (c.e.a.b.g.f.Oc) r2, (c.e.a.b.g.f.C0829hc) r11)
            goto L_0x045a
        L_0x019b:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.e(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01aa:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.j(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01b9:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.g(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01c8:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.l(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01d7:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.m(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01e6:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.i(r9, r11, r2, r4)
            goto L_0x045a
        L_0x01f5:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.n(r9, r11, r2, r4)
            goto L_0x045a
        L_0x0204:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.k(r9, r11, r2, r4)
            goto L_0x045a
        L_0x0213:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.f(r9, r11, r2, r4)
            goto L_0x045a
        L_0x0222:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.h(r9, r11, r2, r4)
            goto L_0x045a
        L_0x0231:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.d(r9, r11, r2, r4)
            goto L_0x045a
        L_0x0240:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.c(r9, r11, r2, r4)
            goto L_0x045a
        L_0x024f:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.b((int) r9, (java.util.List<java.lang.Float>) r11, (c.e.a.b.g.f.Oc) r2, (boolean) r4)
            goto L_0x045a
        L_0x025e:
            int[] r9 = r0.f10265c
            r9 = r9[r5]
            java.lang.Object r11 = r7.getObject(r1, r11)
            java.util.List r11 = (java.util.List) r11
            c.e.a.b.g.f.C0841kc.a((int) r9, (java.util.List<java.lang.Double>) r11, (c.e.a.b.g.f.Oc) r2, (boolean) r4)
            goto L_0x045a
        L_0x026d:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.e(r4, r9, r2, r8)
            goto L_0x045a
        L_0x027c:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.j(r4, r9, r2, r8)
            goto L_0x045a
        L_0x028b:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.g(r4, r9, r2, r8)
            goto L_0x045a
        L_0x029a:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.l(r4, r9, r2, r8)
            goto L_0x045a
        L_0x02a9:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.m(r4, r9, r2, r8)
            goto L_0x045a
        L_0x02b8:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.i(r4, r9, r2, r8)
            goto L_0x045a
        L_0x02c7:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.b((int) r4, (java.util.List<com.google.android.gms.internal.measurement.zzdp>) r9, (c.e.a.b.g.f.Oc) r2)
            goto L_0x045a
        L_0x02d6:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.hc r11 = r0.a((int) r5)
            c.e.a.b.g.f.C0841kc.a((int) r4, (java.util.List<?>) r9, (c.e.a.b.g.f.Oc) r2, (c.e.a.b.g.f.C0829hc) r11)
            goto L_0x045a
        L_0x02e9:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.a((int) r4, (java.util.List<java.lang.String>) r9, (c.e.a.b.g.f.Oc) r2)
            goto L_0x045a
        L_0x02f8:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.n(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0307:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.k(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0316:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.f(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0325:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.h(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0334:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.d(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0343:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.c(r4, r9, r2, r8)
            goto L_0x045a
        L_0x0352:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.b((int) r4, (java.util.List<java.lang.Float>) r9, (c.e.a.b.g.f.Oc) r2, (boolean) r8)
            goto L_0x045a
        L_0x0361:
            int[] r4 = r0.f10265c
            r4 = r4[r5]
            java.lang.Object r9 = r7.getObject(r1, r11)
            java.util.List r9 = (java.util.List) r9
            c.e.a.b.g.f.C0841kc.a((int) r4, (java.util.List<java.lang.Double>) r9, (c.e.a.b.g.f.Oc) r2, (boolean) r8)
            goto L_0x045a
        L_0x0370:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            c.e.a.b.g.f.hc r9 = r0.a((int) r5)
            r2.a((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x045a
        L_0x0381:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            long r11 = r7.getLong(r1, r11)
            r2.b((int) r13, (long) r11)
            goto L_0x045a
        L_0x038e:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.f(r13, r4)
            goto L_0x045a
        L_0x039b:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            long r11 = r7.getLong(r1, r11)
            r2.a((int) r13, (long) r11)
            goto L_0x045a
        L_0x03a8:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.e((int) r13, (int) r4)
            goto L_0x045a
        L_0x03b5:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.b((int) r13, (int) r4)
            goto L_0x045a
        L_0x03c2:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.d((int) r13, (int) r4)
            goto L_0x045a
        L_0x03cf:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            com.google.android.gms.internal.measurement.zzdp r4 = (com.google.android.gms.internal.measurement.zzdp) r4
            r2.a((int) r13, (com.google.android.gms.internal.measurement.zzdp) r4)
            goto L_0x045a
        L_0x03de:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            c.e.a.b.g.f.hc r9 = r0.a((int) r5)
            r2.b((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.C0829hc) r9)
            goto L_0x045a
        L_0x03ef:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            java.lang.Object r4 = r7.getObject(r1, r11)
            a((int) r13, (java.lang.Object) r4, (c.e.a.b.g.f.Oc) r2)
            goto L_0x045a
        L_0x03fb:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            boolean r4 = c.e.a.b.g.f.Fc.c(r1, r11)
            r2.a((int) r13, (boolean) r4)
            goto L_0x045a
        L_0x0407:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.c((int) r13, (int) r4)
            goto L_0x045a
        L_0x0413:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            long r11 = r7.getLong(r1, r11)
            r2.c((int) r13, (long) r11)
            goto L_0x045a
        L_0x041f:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            int r4 = r7.getInt(r1, r11)
            r2.a((int) r13, (int) r4)
            goto L_0x045a
        L_0x042b:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            long r11 = r7.getLong(r1, r11)
            r2.e((int) r13, (long) r11)
            goto L_0x045a
        L_0x0437:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            long r11 = r7.getLong(r1, r11)
            r2.d((int) r13, (long) r11)
            goto L_0x045a
        L_0x0443:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            float r4 = c.e.a.b.g.f.Fc.d(r1, r11)
            r2.a((int) r13, (float) r4)
            goto L_0x045a
        L_0x044f:
            r4 = r10 & r9
            if (r4 == 0) goto L_0x045a
            double r11 = c.e.a.b.g.f.Fc.e(r1, r11)
            r2.a((int) r13, (double) r11)
        L_0x045a:
            int r5 = r5 + 3
            r9 = r15
            goto L_0x002c
        L_0x045f:
            c.e.a.b.g.f.db<?> r1 = r0.r
            r1.a((java.util.Map.Entry<?, ?>) r3)
            r4 = 0
            throw r4
        L_0x0466:
            r4 = 0
            if (r3 != 0) goto L_0x046f
            c.e.a.b.g.f.zc<?, ?> r3 = r0.q
            a(r3, r1, (c.e.a.b.g.f.Oc) r2)
            return
        L_0x046f:
            c.e.a.b.g.f.db<?> r1 = r0.r
            r1.a(r2, r3)
            goto L_0x0476
        L_0x0475:
            throw r4
        L_0x0476:
            goto L_0x0475
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.b(java.lang.Object, c.e.a.b.g.f.Oc):void");
    }

    public final <K, V> void a(Oc oc, int i2, Object obj, int i3) {
        if (obj != null) {
            this.s.c(b(i3));
            throw null;
        }
    }

    public static <UT, UB> void a(C0900zc<UT, UB> zcVar, T t, Oc oc) {
        zcVar.a(zcVar.d(t), oc);
    }

    /*  JADX ERROR: StackOverflow in pass: MarkFinallyVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public final void a(T r11, c.e.a.b.g.f.C0825gc r12, c.e.a.b.g.f.C0808cb r13) {
        /*
            r10 = this;
            if (r13 == 0) goto L_0x05c9
            c.e.a.b.g.f.zc<?, ?> r7 = r10.q
            c.e.a.b.g.f.db<?> r0 = r10.r
            r8 = 0
            r9 = r8
        L_0x0008:
            int r1 = r12.e()     // Catch:{ all -> 0x05b2 }
            int r2 = r10.g(r1)     // Catch:{ all -> 0x05b2 }
            if (r2 >= 0) goto L_0x006d
            r2 = 2147483647(0x7fffffff, float:NaN)
            if (r1 != r2) goto L_0x002d
            int r12 = r10.m
        L_0x0019:
            int r13 = r10.n
            if (r12 >= r13) goto L_0x0027
            int[] r13 = r10.f10274l
            r13 = r13[r12]
            r10.a((java.lang.Object) r11, (int) r13, r9, r7)
            int r12 = r12 + 1
            goto L_0x0019
        L_0x0027:
            if (r9 == 0) goto L_0x002c
            r7.b((java.lang.Object) r11, r9)
        L_0x002c:
            return
        L_0x002d:
            boolean r2 = r10.f10270h     // Catch:{ all -> 0x05b2 }
            if (r2 != 0) goto L_0x0033
            r2 = r8
            goto L_0x003a
        L_0x0033:
            c.e.a.b.g.f.Sb r2 = r10.f10269g     // Catch:{ all -> 0x05b2 }
            java.lang.Object r1 = r0.a(r13, r2, r1)     // Catch:{ all -> 0x05b2 }
            r2 = r1
        L_0x003a:
            if (r2 == 0) goto L_0x0048
            c.e.a.b.g.f.gb r4 = r0.b(r11)     // Catch:{ all -> 0x05b2 }
            r1 = r12
            r3 = r13
            r5 = r9
            r6 = r7
            r0.a(r1, r2, r3, r4, r5, r6)     // Catch:{ all -> 0x05b2 }
            throw r8
        L_0x0048:
            r7.a((c.e.a.b.g.f.C0825gc) r12)     // Catch:{ all -> 0x05b2 }
            if (r9 != 0) goto L_0x0051
            java.lang.Object r9 = r7.e(r11)     // Catch:{ all -> 0x05b2 }
        L_0x0051:
            boolean r1 = r7.a(r9, (c.e.a.b.g.f.C0825gc) r12)     // Catch:{ all -> 0x05b2 }
            if (r1 != 0) goto L_0x0008
            int r12 = r10.m
        L_0x0059:
            int r13 = r10.n
            if (r12 >= r13) goto L_0x0067
            int[] r13 = r10.f10274l
            r13 = r13[r12]
            r10.a((java.lang.Object) r11, (int) r13, r9, r7)
            int r12 = r12 + 1
            goto L_0x0059
        L_0x0067:
            if (r9 == 0) goto L_0x006c
            r7.b((java.lang.Object) r11, r9)
        L_0x006c:
            return
        L_0x006d:
            int r3 = r10.d((int) r2)     // Catch:{ all -> 0x05b2 }
            r4 = 267386880(0xff00000, float:2.3665827E-29)
            r4 = r4 & r3
            int r4 = r4 >>> 20
            r5 = 1048575(0xfffff, float:1.469367E-39)
            switch(r4) {
                case 0: goto L_0x0561;
                case 1: goto L_0x0552;
                case 2: goto L_0x0543;
                case 3: goto L_0x0534;
                case 4: goto L_0x0525;
                case 5: goto L_0x0516;
                case 6: goto L_0x0507;
                case 7: goto L_0x04f8;
                case 8: goto L_0x04f0;
                case 9: goto L_0x04bf;
                case 10: goto L_0x04b0;
                case 11: goto L_0x04a1;
                case 12: goto L_0x047f;
                case 13: goto L_0x0470;
                case 14: goto L_0x0461;
                case 15: goto L_0x0452;
                case 16: goto L_0x0443;
                case 17: goto L_0x0412;
                case 18: goto L_0x0404;
                case 19: goto L_0x03f6;
                case 20: goto L_0x03e8;
                case 21: goto L_0x03da;
                case 22: goto L_0x03cc;
                case 23: goto L_0x03be;
                case 24: goto L_0x03b0;
                case 25: goto L_0x03a2;
                case 26: goto L_0x0380;
                case 27: goto L_0x036e;
                case 28: goto L_0x0360;
                case 29: goto L_0x0352;
                case 30: goto L_0x033d;
                case 31: goto L_0x032f;
                case 32: goto L_0x0321;
                case 33: goto L_0x0313;
                case 34: goto L_0x0305;
                case 35: goto L_0x02f7;
                case 36: goto L_0x02e9;
                case 37: goto L_0x02db;
                case 38: goto L_0x02cd;
                case 39: goto L_0x02bf;
                case 40: goto L_0x02b1;
                case 41: goto L_0x02a3;
                case 42: goto L_0x0295;
                case 43: goto L_0x0287;
                case 44: goto L_0x0272;
                case 45: goto L_0x0264;
                case 46: goto L_0x0256;
                case 47: goto L_0x0248;
                case 48: goto L_0x023a;
                case 49: goto L_0x0228;
                case 50: goto L_0x01ec;
                case 51: goto L_0x01da;
                case 52: goto L_0x01c8;
                case 53: goto L_0x01b6;
                case 54: goto L_0x01a4;
                case 55: goto L_0x0192;
                case 56: goto L_0x0180;
                case 57: goto L_0x016e;
                case 58: goto L_0x015c;
                case 59: goto L_0x0154;
                case 60: goto L_0x0123;
                case 61: goto L_0x0115;
                case 62: goto L_0x0103;
                case 63: goto L_0x00de;
                case 64: goto L_0x00cc;
                case 65: goto L_0x00ba;
                case 66: goto L_0x00a8;
                case 67: goto L_0x0096;
                case 68: goto L_0x0084;
                default: goto L_0x007c;
            }
        L_0x007c:
            if (r9 != 0) goto L_0x0570
            java.lang.Object r9 = r7.a()     // Catch:{ zzfi -> 0x058c }
            goto L_0x0570
        L_0x0084:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r5 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r5 = r12.b(r5, r13)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0096:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.p()     // Catch:{ zzfi -> 0x058c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x00a8:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            int r5 = r12.m()     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x00ba:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.d()     // Catch:{ zzfi -> 0x058c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x00cc:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            int r5 = r12.b()     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x00de:
            int r4 = r12.i()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.tb r6 = r10.c((int) r2)     // Catch:{ zzfi -> 0x058c }
            if (r6 == 0) goto L_0x00f5
            boolean r6 = r6.a(r4)     // Catch:{ zzfi -> 0x058c }
            if (r6 == 0) goto L_0x00ef
            goto L_0x00f5
        L_0x00ef:
            java.lang.Object r9 = c.e.a.b.g.f.C0841kc.a((int) r1, (int) r4, r9, r7)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x00f5:
            r3 = r3 & r5
            long r5 = (long) r3     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r4)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r5, (java.lang.Object) r3)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0103:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            int r5 = r12.g()     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0115:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            com.google.android.gms.internal.measurement.zzdp r5 = r12.k()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0123:
            boolean r4 = r10.a(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            if (r4 == 0) goto L_0x013f
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r5 = c.e.a.b.g.f.Fc.f(r11, r3)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r6 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r6 = r12.a(r6, r13)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r5 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r5, (java.lang.Object) r6)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            goto L_0x014f
        L_0x013f:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r5 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r5 = r12.a(r5, r13)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
        L_0x014f:
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0154:
            r10.a((java.lang.Object) r11, (int) r3, (c.e.a.b.g.f.C0825gc) r12)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x015c:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            boolean r5 = r12.o()     // Catch:{ zzfi -> 0x058c }
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x016e:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            int r5 = r12.l()     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0180:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.c()     // Catch:{ zzfi -> 0x058c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0192:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            int r5 = r12.a()     // Catch:{ zzfi -> 0x058c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x01a4:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.f()     // Catch:{ zzfi -> 0x058c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x01b6:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.h()     // Catch:{ zzfi -> 0x058c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x01c8:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            float r5 = r12.readFloat()     // Catch:{ zzfi -> 0x058c }
            java.lang.Float r5 = java.lang.Float.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x01da:
            r3 = r3 & r5
            long r3 = (long) r3     // Catch:{ zzfi -> 0x058c }
            double r5 = r12.readDouble()     // Catch:{ zzfi -> 0x058c }
            java.lang.Double r5 = java.lang.Double.valueOf(r5)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r1, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x01ec:
            java.lang.Object r1 = r10.b((int) r2)     // Catch:{ zzfi -> 0x058c }
            int r2 = r10.d((int) r2)     // Catch:{ zzfi -> 0x058c }
            r2 = r2 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r4 = c.e.a.b.g.f.Fc.f(r11, r2)     // Catch:{ zzfi -> 0x058c }
            if (r4 == 0) goto L_0x0214
            c.e.a.b.g.f.Nb r5 = r10.s     // Catch:{ zzfi -> 0x058c }
            boolean r5 = r5.f(r4)     // Catch:{ zzfi -> 0x058c }
            if (r5 == 0) goto L_0x021d
            c.e.a.b.g.f.Nb r5 = r10.s     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r5 = r5.d(r1)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Nb r6 = r10.s     // Catch:{ zzfi -> 0x058c }
            r6.a(r5, r4)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r2, (java.lang.Object) r5)     // Catch:{ zzfi -> 0x058c }
            r4 = r5
            goto L_0x021d
        L_0x0214:
            c.e.a.b.g.f.Nb r4 = r10.s     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r4 = r4.d(r1)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r2, (java.lang.Object) r4)     // Catch:{ zzfi -> 0x058c }
        L_0x021d:
            c.e.a.b.g.f.Nb r2 = r10.s     // Catch:{ zzfi -> 0x058c }
            r2.b(r4)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Nb r2 = r10.s     // Catch:{ zzfi -> 0x058c }
            r2.c(r1)     // Catch:{ zzfi -> 0x058c }
            throw r8
        L_0x0228:
            r1 = r3 & r5
            long r3 = (long) r1
            c.e.a.b.g.f.hc r1 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Db r2 = r10.p     // Catch:{ zzfi -> 0x058c }
            java.util.List r2 = r2.a(r11, r3)     // Catch:{ zzfi -> 0x058c }
            r12.b(r2, r1, r13)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x023a:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.l(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0248:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.g(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0256:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.i(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0264:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.c(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0272:
            c.e.a.b.g.f.Db r4 = r10.p     // Catch:{ zzfi -> 0x058c }
            r3 = r3 & r5
            long r5 = (long) r3     // Catch:{ zzfi -> 0x058c }
            java.util.List r3 = r4.a(r11, r5)     // Catch:{ zzfi -> 0x058c }
            r12.d(r3)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.tb r2 = r10.c((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r9 = c.e.a.b.g.f.C0841kc.a(r1, r3, r2, r9, r7)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0287:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.n(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0295:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.k(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02a3:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.f(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02b1:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.h(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02bf:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.a(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02cd:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.e(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02db:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.b(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02e9:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.o(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x02f7:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.q(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0305:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.l(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0313:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.g(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0321:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.i(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x032f:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.c(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x033d:
            c.e.a.b.g.f.Db r4 = r10.p     // Catch:{ zzfi -> 0x058c }
            r3 = r3 & r5
            long r5 = (long) r3     // Catch:{ zzfi -> 0x058c }
            java.util.List r3 = r4.a(r11, r5)     // Catch:{ zzfi -> 0x058c }
            r12.d(r3)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.tb r2 = r10.c((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r9 = c.e.a.b.g.f.C0841kc.a(r1, r3, r2, r9, r7)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0352:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.n(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0360:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.p(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x036e:
            c.e.a.b.g.f.hc r1 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Db r4 = r10.p     // Catch:{ zzfi -> 0x058c }
            java.util.List r2 = r4.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.a(r2, r1, r13)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0380:
            boolean r1 = f(r3)     // Catch:{ zzfi -> 0x058c }
            if (r1 == 0) goto L_0x0394
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.j(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0394:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.m(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03a2:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.k(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03b0:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.f(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03be:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.h(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03cc:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.a(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03da:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.e(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03e8:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.b(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x03f6:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.o(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0404:
            c.e.a.b.g.f.Db r1 = r10.p     // Catch:{ zzfi -> 0x058c }
            r2 = r3 & r5
            long r2 = (long) r2     // Catch:{ zzfi -> 0x058c }
            java.util.List r1 = r1.a(r11, r2)     // Catch:{ zzfi -> 0x058c }
            r12.q(r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0412:
            boolean r1 = r10.a(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            if (r1 == 0) goto L_0x0430
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = c.e.a.b.g.f.Fc.f(r11, r3)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r2 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r2 = r12.b(r2, r13)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r1, (java.lang.Object) r2)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0430:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r1 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = r12.b(r1, r13)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0443:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.p()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (long) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0452:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            int r1 = r12.m()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (int) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0461:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.d()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (long) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0470:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            int r1 = r12.b()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (int) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x047f:
            int r4 = r12.i()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.tb r6 = r10.c((int) r2)     // Catch:{ zzfi -> 0x058c }
            if (r6 == 0) goto L_0x0496
            boolean r6 = r6.a(r4)     // Catch:{ zzfi -> 0x058c }
            if (r6 == 0) goto L_0x0490
            goto L_0x0496
        L_0x0490:
            java.lang.Object r9 = c.e.a.b.g.f.C0841kc.a((int) r1, (int) r4, r9, r7)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0496:
            r1 = r3 & r5
            long r5 = (long) r1     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r5, (int) r4)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04a1:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            int r1 = r12.g()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (int) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04b0:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            com.google.android.gms.internal.measurement.zzdp r1 = r12.k()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04bf:
            boolean r1 = r10.a(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            if (r1 == 0) goto L_0x04dd
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = c.e.a.b.g.f.Fc.f(r11, r3)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r2 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r2 = r12.a(r2, r13)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r1, (java.lang.Object) r2)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r1)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04dd:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.hc r1 = r10.a((int) r2)     // Catch:{ zzfi -> 0x058c }
            java.lang.Object r1 = r12.a(r1, r13)     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (java.lang.Object) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04f0:
            r10.a((java.lang.Object) r11, (int) r3, (c.e.a.b.g.f.C0825gc) r12)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x04f8:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            boolean r1 = r12.o()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (boolean) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0507:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            int r1 = r12.l()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (int) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0516:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.c()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (long) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0525:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            int r1 = r12.a()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (int) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0534:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.f()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (long) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0543:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            long r5 = r12.h()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (long) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0552:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            float r1 = r12.readFloat()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (float) r1)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0561:
            r1 = r3 & r5
            long r3 = (long) r1     // Catch:{ zzfi -> 0x058c }
            double r5 = r12.readDouble()     // Catch:{ zzfi -> 0x058c }
            c.e.a.b.g.f.Fc.a((java.lang.Object) r11, (long) r3, (double) r5)     // Catch:{ zzfi -> 0x058c }
            r10.b(r11, (int) r2)     // Catch:{ zzfi -> 0x058c }
            goto L_0x0008
        L_0x0570:
            boolean r1 = r7.a(r9, (c.e.a.b.g.f.C0825gc) r12)     // Catch:{ zzfi -> 0x058c }
            if (r1 != 0) goto L_0x0008
            int r12 = r10.m
        L_0x0578:
            int r13 = r10.n
            if (r12 >= r13) goto L_0x0586
            int[] r13 = r10.f10274l
            r13 = r13[r12]
            r10.a((java.lang.Object) r11, (int) r13, r9, r7)
            int r12 = r12 + 1
            goto L_0x0578
        L_0x0586:
            if (r9 == 0) goto L_0x058b
            r7.b((java.lang.Object) r11, r9)
        L_0x058b:
            return
        L_0x058c:
            r7.a((c.e.a.b.g.f.C0825gc) r12)     // Catch:{ all -> 0x05b2 }
            if (r9 != 0) goto L_0x0596
            java.lang.Object r1 = r7.e(r11)     // Catch:{ all -> 0x05b2 }
            r9 = r1
        L_0x0596:
            boolean r1 = r7.a(r9, (c.e.a.b.g.f.C0825gc) r12)     // Catch:{ all -> 0x05b2 }
            if (r1 != 0) goto L_0x0008
            int r12 = r10.m
        L_0x059e:
            int r13 = r10.n
            if (r12 >= r13) goto L_0x05ac
            int[] r13 = r10.f10274l
            r13 = r13[r12]
            r10.a((java.lang.Object) r11, (int) r13, r9, r7)
            int r12 = r12 + 1
            goto L_0x059e
        L_0x05ac:
            if (r9 == 0) goto L_0x05b1
            r7.b((java.lang.Object) r11, r9)
        L_0x05b1:
            return
        L_0x05b2:
            r12 = move-exception
            int r13 = r10.m
        L_0x05b5:
            int r0 = r10.n
            if (r13 >= r0) goto L_0x05c3
            int[] r0 = r10.f10274l
            r0 = r0[r13]
            r10.a((java.lang.Object) r11, (int) r0, r9, r7)
            int r13 = r13 + 1
            goto L_0x05b5
        L_0x05c3:
            if (r9 == 0) goto L_0x05c8
            r7.b((java.lang.Object) r11, r9)
        L_0x05c8:
            throw r12
        L_0x05c9:
            java.lang.NullPointerException r11 = new java.lang.NullPointerException
            r11.<init>()
            goto L_0x05d0
        L_0x05cf:
            throw r11
        L_0x05d0:
            goto L_0x05cf
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, c.e.a.b.g.f.gc, c.e.a.b.g.f.cb):void");
    }

    public final Object b(int i2) {
        return this.f10266d[(i2 / 3) << 1];
    }

    public static <T> double b(T t, long j2) {
        return ((Double) Fc.f(t, j2)).doubleValue();
    }

    public final void b(T t, int i2) {
        if (!this.f10272j) {
            int e2 = e(i2);
            long j2 = (long) (e2 & 1048575);
            Fc.a((Object) t, j2, Fc.a((Object) t, j2) | (1 << (e2 >>> 20)));
        }
    }

    public final void b(T t, int i2, int i3) {
        Fc.a((Object) t, (long) (e(i3) & 1048575), i2);
    }

    public final int b(int i2, int i3) {
        int length = (this.f10265c.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f10265c[i5];
            if (i2 == i6) {
                return i5;
            }
            if (i2 < i6) {
                length = i4 - 1;
            } else {
                i3 = i4 + 1;
            }
        }
        return -1;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:244:0x0422 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01eb  */
    public final int a(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, c.e.a.b.g.f.Ia r30) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r2 = r21
            r6 = r23
            r8 = r24
            r9 = r28
            r7 = r30
            sun.misc.Unsafe r11 = f10264b
            java.lang.Object r11 = r11.getObject(r1, r9)
            c.e.a.b.g.f.vb r11 = (c.e.a.b.g.f.C0883vb) r11
            boolean r12 = r11.s()
            r13 = 1
            if (r12 != 0) goto L_0x0036
            int r12 = r11.size()
            if (r12 != 0) goto L_0x002c
            r12 = 10
            goto L_0x002d
        L_0x002c:
            int r12 = r12 << r13
        L_0x002d:
            c.e.a.b.g.f.vb r11 = r11.c(r12)
            sun.misc.Unsafe r12 = f10264b
            r12.putObject(r1, r9, r11)
        L_0x0036:
            r9 = 5
            r14 = 0
            r10 = 2
            switch(r27) {
                case 18: goto L_0x03e4;
                case 19: goto L_0x03a6;
                case 20: goto L_0x0365;
                case 21: goto L_0x0365;
                case 22: goto L_0x034b;
                case 23: goto L_0x030c;
                case 24: goto L_0x02cd;
                case 25: goto L_0x0276;
                case 26: goto L_0x01c3;
                case 27: goto L_0x01a9;
                case 28: goto L_0x0151;
                case 29: goto L_0x034b;
                case 30: goto L_0x0119;
                case 31: goto L_0x02cd;
                case 32: goto L_0x030c;
                case 33: goto L_0x00cc;
                case 34: goto L_0x007f;
                case 35: goto L_0x03e4;
                case 36: goto L_0x03a6;
                case 37: goto L_0x0365;
                case 38: goto L_0x0365;
                case 39: goto L_0x034b;
                case 40: goto L_0x030c;
                case 41: goto L_0x02cd;
                case 42: goto L_0x0276;
                case 43: goto L_0x034b;
                case 44: goto L_0x0119;
                case 45: goto L_0x02cd;
                case 46: goto L_0x030c;
                case 47: goto L_0x00cc;
                case 48: goto L_0x007f;
                case 49: goto L_0x003f;
                default: goto L_0x003d;
            }
        L_0x003d:
            goto L_0x0422
        L_0x003f:
            r1 = 3
            if (r6 != r1) goto L_0x0422
            c.e.a.b.g.f.hc r1 = r0.a((int) r8)
            r6 = r2 & -8
            r6 = r6 | 4
            r22 = r1
            r23 = r18
            r24 = r19
            r25 = r20
            r26 = r6
            r27 = r30
            int r4 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r22, (byte[]) r23, (int) r24, (int) r25, (int) r26, (c.e.a.b.g.f.Ia) r27)
            java.lang.Object r8 = r7.f10179c
            r11.add(r8)
        L_0x005f:
            if (r4 >= r5) goto L_0x0422
            int r8 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r9 = r7.f10177a
            if (r2 != r9) goto L_0x0422
            r22 = r1
            r23 = r18
            r24 = r8
            r25 = r20
            r26 = r6
            r27 = r30
            int r4 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r22, (byte[]) r23, (int) r24, (int) r25, (int) r26, (c.e.a.b.g.f.Ia) r27)
            java.lang.Object r8 = r7.f10179c
            r11.add(r8)
            goto L_0x005f
        L_0x007f:
            if (r6 != r10) goto L_0x00a3
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x008a:
            if (r1 >= r2) goto L_0x009a
            int r1 = c.e.a.b.g.f.Ha.b(r3, r1, r7)
            long r4 = r7.f10178b
            long r4 = c.e.a.b.g.f.Ua.a((long) r4)
            r11.h(r4)
            goto L_0x008a
        L_0x009a:
            if (r1 != r2) goto L_0x009e
            goto L_0x0423
        L_0x009e:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x00a3:
            if (r6 != 0) goto L_0x0422
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            int r1 = c.e.a.b.g.f.Ha.b(r3, r4, r7)
            long r8 = r7.f10178b
            long r8 = c.e.a.b.g.f.Ua.a((long) r8)
            r11.h(r8)
        L_0x00b4:
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            int r1 = c.e.a.b.g.f.Ha.b(r3, r4, r7)
            long r8 = r7.f10178b
            long r8 = c.e.a.b.g.f.Ua.a((long) r8)
            r11.h(r8)
            goto L_0x00b4
        L_0x00cc:
            if (r6 != r10) goto L_0x00f0
            c.e.a.b.g.f.pb r11 = (c.e.a.b.g.f.C0860pb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x00d7:
            if (r1 >= r2) goto L_0x00e7
            int r1 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r4 = r7.f10177a
            int r4 = c.e.a.b.g.f.Ua.a((int) r4)
            r11.e(r4)
            goto L_0x00d7
        L_0x00e7:
            if (r1 != r2) goto L_0x00eb
            goto L_0x0423
        L_0x00eb:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x00f0:
            if (r6 != 0) goto L_0x0422
            c.e.a.b.g.f.pb r11 = (c.e.a.b.g.f.C0860pb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r4 = r7.f10177a
            int r4 = c.e.a.b.g.f.Ua.a((int) r4)
            r11.e(r4)
        L_0x0101:
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r4 = r7.f10177a
            int r4 = c.e.a.b.g.f.Ua.a((int) r4)
            r11.e(r4)
            goto L_0x0101
        L_0x0119:
            if (r6 != r10) goto L_0x0120
            int r2 = c.e.a.b.g.f.Ha.a((byte[]) r3, (int) r4, (c.e.a.b.g.f.C0883vb<?>) r11, (c.e.a.b.g.f.Ia) r7)
            goto L_0x0131
        L_0x0120:
            if (r6 != 0) goto L_0x0422
            r2 = r21
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r11
            r7 = r30
            int r2 = c.e.a.b.g.f.Ha.a((int) r2, (byte[]) r3, (int) r4, (int) r5, (c.e.a.b.g.f.C0883vb<?>) r6, (c.e.a.b.g.f.Ia) r7)
        L_0x0131:
            c.e.a.b.g.f.nb r1 = (c.e.a.b.g.f.C0852nb) r1
            c.e.a.b.g.f.Ac r3 = r1.zzagn
            c.e.a.b.g.f.Ac r4 = c.e.a.b.g.f.Ac.c()
            if (r3 != r4) goto L_0x013c
            r3 = 0
        L_0x013c:
            c.e.a.b.g.f.tb r4 = r0.c((int) r8)
            c.e.a.b.g.f.zc<?, ?> r5 = r0.q
            r6 = r22
            java.lang.Object r3 = c.e.a.b.g.f.C0841kc.a(r6, r11, r4, r3, r5)
            c.e.a.b.g.f.Ac r3 = (c.e.a.b.g.f.Ac) r3
            if (r3 == 0) goto L_0x014e
            r1.zzagn = r3
        L_0x014e:
            r1 = r2
            goto L_0x0423
        L_0x0151:
            if (r6 != r10) goto L_0x0422
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r4 = r7.f10177a
            if (r4 < 0) goto L_0x01a4
            int r6 = r3.length
            int r6 = r6 - r1
            if (r4 > r6) goto L_0x019f
            if (r4 != 0) goto L_0x0167
            com.google.android.gms.internal.measurement.zzdp r4 = com.google.android.gms.internal.measurement.zzdp.f13171a
            r11.add(r4)
            goto L_0x016f
        L_0x0167:
            com.google.android.gms.internal.measurement.zzdp r6 = com.google.android.gms.internal.measurement.zzdp.a((byte[]) r3, (int) r1, (int) r4)
            r11.add(r6)
        L_0x016e:
            int r1 = r1 + r4
        L_0x016f:
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r4 = r7.f10177a
            if (r4 < 0) goto L_0x019a
            int r6 = r3.length
            int r6 = r6 - r1
            if (r4 > r6) goto L_0x0195
            if (r4 != 0) goto L_0x018d
            com.google.android.gms.internal.measurement.zzdp r4 = com.google.android.gms.internal.measurement.zzdp.f13171a
            r11.add(r4)
            goto L_0x016f
        L_0x018d:
            com.google.android.gms.internal.measurement.zzdp r6 = com.google.android.gms.internal.measurement.zzdp.a((byte[]) r3, (int) r1, (int) r4)
            r11.add(r6)
            goto L_0x016e
        L_0x0195:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x019a:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x019f:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x01a4:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x01a9:
            if (r6 != r10) goto L_0x0422
            c.e.a.b.g.f.hc r1 = r0.a((int) r8)
            r22 = r1
            r23 = r21
            r24 = r18
            r25 = r19
            r26 = r20
            r27 = r11
            r28 = r30
            int r1 = c.e.a.b.g.f.Ha.a(r22, r23, r24, r25, r26, r27, r28)
            goto L_0x0423
        L_0x01c3:
            if (r6 != r10) goto L_0x0422
            r8 = 536870912(0x20000000, double:2.652494739E-315)
            long r8 = r25 & r8
            java.lang.String r1 = ""
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 != 0) goto L_0x0216
            int r4 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r6 = r7.f10177a
            if (r6 < 0) goto L_0x0211
            if (r6 != 0) goto L_0x01de
            r11.add(r1)
            goto L_0x01e9
        L_0x01de:
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r9 = c.e.a.b.g.f.C0864qb.f10508a
            r8.<init>(r3, r4, r6, r9)
            r11.add(r8)
        L_0x01e8:
            int r4 = r4 + r6
        L_0x01e9:
            if (r4 >= r5) goto L_0x0422
            int r6 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r8 = r7.f10177a
            if (r2 != r8) goto L_0x0422
            int r4 = c.e.a.b.g.f.Ha.a(r3, r6, r7)
            int r6 = r7.f10177a
            if (r6 < 0) goto L_0x020c
            if (r6 != 0) goto L_0x0201
            r11.add(r1)
            goto L_0x01e9
        L_0x0201:
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r9 = c.e.a.b.g.f.C0864qb.f10508a
            r8.<init>(r3, r4, r6, r9)
            r11.add(r8)
            goto L_0x01e8
        L_0x020c:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x0211:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x0216:
            int r4 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r6 = r7.f10177a
            if (r6 < 0) goto L_0x0271
            if (r6 != 0) goto L_0x0224
            r11.add(r1)
            goto L_0x0237
        L_0x0224:
            int r8 = r4 + r6
            boolean r9 = c.e.a.b.g.f.Hc.a((byte[]) r3, (int) r4, (int) r8)
            if (r9 == 0) goto L_0x026c
            java.lang.String r9 = new java.lang.String
            java.nio.charset.Charset r10 = c.e.a.b.g.f.C0864qb.f10508a
            r9.<init>(r3, r4, r6, r10)
            r11.add(r9)
        L_0x0236:
            r4 = r8
        L_0x0237:
            if (r4 >= r5) goto L_0x0422
            int r6 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r8 = r7.f10177a
            if (r2 != r8) goto L_0x0422
            int r4 = c.e.a.b.g.f.Ha.a(r3, r6, r7)
            int r6 = r7.f10177a
            if (r6 < 0) goto L_0x0267
            if (r6 != 0) goto L_0x024f
            r11.add(r1)
            goto L_0x0237
        L_0x024f:
            int r8 = r4 + r6
            boolean r9 = c.e.a.b.g.f.Hc.a((byte[]) r3, (int) r4, (int) r8)
            if (r9 == 0) goto L_0x0262
            java.lang.String r9 = new java.lang.String
            java.nio.charset.Charset r10 = c.e.a.b.g.f.C0864qb.f10508a
            r9.<init>(r3, r4, r6, r10)
            r11.add(r9)
            goto L_0x0236
        L_0x0262:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.i()
            throw r1
        L_0x0267:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x026c:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.i()
            throw r1
        L_0x0271:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.b()
            throw r1
        L_0x0276:
            r1 = 0
            if (r6 != r10) goto L_0x029e
            c.e.a.b.g.f.Ja r11 = (c.e.a.b.g.f.Ja) r11
            int r2 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r4 = r7.f10177a
            int r4 = r4 + r2
        L_0x0282:
            if (r2 >= r4) goto L_0x0295
            int r2 = c.e.a.b.g.f.Ha.b(r3, r2, r7)
            long r5 = r7.f10178b
            int r8 = (r5 > r14 ? 1 : (r5 == r14 ? 0 : -1))
            if (r8 == 0) goto L_0x0290
            r5 = 1
            goto L_0x0291
        L_0x0290:
            r5 = 0
        L_0x0291:
            r11.a((boolean) r5)
            goto L_0x0282
        L_0x0295:
            if (r2 != r4) goto L_0x0299
            goto L_0x014e
        L_0x0299:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x029e:
            if (r6 != 0) goto L_0x0422
            c.e.a.b.g.f.Ja r11 = (c.e.a.b.g.f.Ja) r11
            int r4 = c.e.a.b.g.f.Ha.b(r3, r4, r7)
            long r8 = r7.f10178b
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 == 0) goto L_0x02ae
            r6 = 1
            goto L_0x02af
        L_0x02ae:
            r6 = 0
        L_0x02af:
            r11.a((boolean) r6)
        L_0x02b2:
            if (r4 >= r5) goto L_0x0422
            int r6 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r8 = r7.f10177a
            if (r2 != r8) goto L_0x0422
            int r4 = c.e.a.b.g.f.Ha.b(r3, r6, r7)
            long r8 = r7.f10178b
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 == 0) goto L_0x02c8
            r6 = 1
            goto L_0x02c9
        L_0x02c8:
            r6 = 0
        L_0x02c9:
            r11.a((boolean) r6)
            goto L_0x02b2
        L_0x02cd:
            if (r6 != r10) goto L_0x02ed
            c.e.a.b.g.f.pb r11 = (c.e.a.b.g.f.C0860pb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x02d8:
            if (r1 >= r2) goto L_0x02e4
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1)
            r11.e(r4)
            int r1 = r1 + 4
            goto L_0x02d8
        L_0x02e4:
            if (r1 != r2) goto L_0x02e8
            goto L_0x0423
        L_0x02e8:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x02ed:
            if (r6 != r9) goto L_0x0422
            c.e.a.b.g.f.pb r11 = (c.e.a.b.g.f.C0860pb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r18, r19)
            r11.e(r1)
        L_0x02f8:
            int r1 = r4 + 4
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4)
            r11.e(r1)
            goto L_0x02f8
        L_0x030c:
            if (r6 != r10) goto L_0x032c
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x0317:
            if (r1 >= r2) goto L_0x0323
            long r4 = c.e.a.b.g.f.Ha.b(r3, r1)
            r11.h(r4)
            int r1 = r1 + 8
            goto L_0x0317
        L_0x0323:
            if (r1 != r2) goto L_0x0327
            goto L_0x0423
        L_0x0327:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x032c:
            if (r6 != r13) goto L_0x0422
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            long r8 = c.e.a.b.g.f.Ha.b(r18, r19)
            r11.h(r8)
        L_0x0337:
            int r1 = r4 + 8
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            long r8 = c.e.a.b.g.f.Ha.b(r3, r4)
            r11.h(r8)
            goto L_0x0337
        L_0x034b:
            if (r6 != r10) goto L_0x0353
            int r1 = c.e.a.b.g.f.Ha.a((byte[]) r3, (int) r4, (c.e.a.b.g.f.C0883vb<?>) r11, (c.e.a.b.g.f.Ia) r7)
            goto L_0x0423
        L_0x0353:
            if (r6 != 0) goto L_0x0422
            r22 = r18
            r23 = r19
            r24 = r20
            r25 = r11
            r26 = r30
            int r1 = c.e.a.b.g.f.Ha.a((int) r21, (byte[]) r22, (int) r23, (int) r24, (c.e.a.b.g.f.C0883vb<?>) r25, (c.e.a.b.g.f.Ia) r26)
            goto L_0x0423
        L_0x0365:
            if (r6 != r10) goto L_0x0385
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x0370:
            if (r1 >= r2) goto L_0x037c
            int r1 = c.e.a.b.g.f.Ha.b(r3, r1, r7)
            long r4 = r7.f10178b
            r11.h(r4)
            goto L_0x0370
        L_0x037c:
            if (r1 != r2) goto L_0x0380
            goto L_0x0423
        L_0x0380:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x0385:
            if (r6 != 0) goto L_0x0422
            c.e.a.b.g.f.Hb r11 = (c.e.a.b.g.f.Hb) r11
            int r1 = c.e.a.b.g.f.Ha.b(r3, r4, r7)
            long r8 = r7.f10178b
            r11.h(r8)
        L_0x0392:
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            int r1 = c.e.a.b.g.f.Ha.b(r3, r4, r7)
            long r8 = r7.f10178b
            r11.h(r8)
            goto L_0x0392
        L_0x03a6:
            if (r6 != r10) goto L_0x03c5
            c.e.a.b.g.f.kb r11 = (c.e.a.b.g.f.C0840kb) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x03b1:
            if (r1 >= r2) goto L_0x03bd
            float r4 = c.e.a.b.g.f.Ha.d(r3, r1)
            r11.a((float) r4)
            int r1 = r1 + 4
            goto L_0x03b1
        L_0x03bd:
            if (r1 != r2) goto L_0x03c0
            goto L_0x0423
        L_0x03c0:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x03c5:
            if (r6 != r9) goto L_0x0422
            c.e.a.b.g.f.kb r11 = (c.e.a.b.g.f.C0840kb) r11
            float r1 = c.e.a.b.g.f.Ha.d(r18, r19)
            r11.a((float) r1)
        L_0x03d0:
            int r1 = r4 + 4
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            float r1 = c.e.a.b.g.f.Ha.d(r3, r4)
            r11.a((float) r1)
            goto L_0x03d0
        L_0x03e4:
            if (r6 != r10) goto L_0x0403
            c.e.a.b.g.f._a r11 = (c.e.a.b.g.f._a) r11
            int r1 = c.e.a.b.g.f.Ha.a(r3, r4, r7)
            int r2 = r7.f10177a
            int r2 = r2 + r1
        L_0x03ef:
            if (r1 >= r2) goto L_0x03fb
            double r4 = c.e.a.b.g.f.Ha.c(r3, r1)
            r11.a((double) r4)
            int r1 = r1 + 8
            goto L_0x03ef
        L_0x03fb:
            if (r1 != r2) goto L_0x03fe
            goto L_0x0423
        L_0x03fe:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r1
        L_0x0403:
            if (r6 != r13) goto L_0x0422
            c.e.a.b.g.f._a r11 = (c.e.a.b.g.f._a) r11
            double r8 = c.e.a.b.g.f.Ha.c(r18, r19)
            r11.a((double) r8)
        L_0x040e:
            int r1 = r4 + 8
            if (r1 >= r5) goto L_0x0423
            int r4 = c.e.a.b.g.f.Ha.a(r3, r1, r7)
            int r6 = r7.f10177a
            if (r2 != r6) goto L_0x0423
            double r8 = c.e.a.b.g.f.Ha.c(r3, r4)
            r11.a((double) r8)
            goto L_0x040e
        L_0x0422:
            r1 = r4
        L_0x0423:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, c.e.a.b.g.f.Ia):int");
    }

    public final <K, V> int a(T t, byte[] bArr, int i2, int i3, int i4, long j2, Ia ia) {
        Unsafe unsafe = f10264b;
        Object b2 = b(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.s.f(object)) {
            Object d2 = this.s.d(b2);
            this.s.a(d2, object);
            unsafe.putObject(t, j2, d2);
        }
        this.s.c(b2);
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:62:0x018a, code lost:
        r2 = r4 + 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x019b, code lost:
        r2 = r4 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x019d, code lost:
        r12.putInt(r1, r13, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        return r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, c.e.a.b.g.f.Ia r29) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = r19
            r2 = r21
            r8 = r22
            r5 = r23
            r9 = r26
            r6 = r28
            r11 = r29
            sun.misc.Unsafe r12 = f10264b
            int[] r7 = r0.f10265c
            int r13 = r6 + 2
            r7 = r7[r13]
            r13 = 1048575(0xfffff, float:1.469367E-39)
            r7 = r7 & r13
            long r13 = (long) r7
            r7 = 5
            r15 = 2
            switch(r25) {
                case 51: goto L_0x018d;
                case 52: goto L_0x017d;
                case 53: goto L_0x016d;
                case 54: goto L_0x016d;
                case 55: goto L_0x015d;
                case 56: goto L_0x014e;
                case 57: goto L_0x0140;
                case 58: goto L_0x0127;
                case 59: goto L_0x00f3;
                case 60: goto L_0x00c5;
                case 61: goto L_0x00b8;
                case 62: goto L_0x015d;
                case 63: goto L_0x008a;
                case 64: goto L_0x0140;
                case 65: goto L_0x014e;
                case 66: goto L_0x0075;
                case 67: goto L_0x0060;
                case 68: goto L_0x0028;
                default: goto L_0x0026;
            }
        L_0x0026:
            goto L_0x01a1
        L_0x0028:
            r7 = 3
            if (r5 != r7) goto L_0x01a1
            r2 = r2 & -8
            r7 = r2 | 4
            c.e.a.b.g.f.hc r2 = r0.a((int) r6)
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r7
            r7 = r29
            int r2 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r2, (byte[]) r3, (int) r4, (int) r5, (int) r6, (c.e.a.b.g.f.Ia) r7)
            int r3 = r12.getInt(r1, r13)
            if (r3 != r8) goto L_0x004b
            java.lang.Object r15 = r12.getObject(r1, r9)
            goto L_0x004c
        L_0x004b:
            r15 = 0
        L_0x004c:
            if (r15 != 0) goto L_0x0055
            java.lang.Object r3 = r11.f10179c
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0055:
            java.lang.Object r3 = r11.f10179c
            java.lang.Object r3 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r15, (java.lang.Object) r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0060:
            if (r5 != 0) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.b(r3, r4, r11)
            long r3 = r11.f10178b
            long r3 = c.e.a.b.g.f.Ua.a((long) r3)
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0075:
            if (r5 != 0) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.a(r3, r4, r11)
            int r3 = r11.f10177a
            int r3 = c.e.a.b.g.f.Ua.a((int) r3)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x008a:
            if (r5 != 0) goto L_0x01a1
            int r3 = c.e.a.b.g.f.Ha.a(r3, r4, r11)
            int r4 = r11.f10177a
            c.e.a.b.g.f.tb r5 = r0.c((int) r6)
            if (r5 == 0) goto L_0x00ae
            boolean r5 = r5.a(r4)
            if (r5 == 0) goto L_0x009f
            goto L_0x00ae
        L_0x009f:
            c.e.a.b.g.f.Ac r1 = e((java.lang.Object) r17)
            long r4 = (long) r4
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r1.a((int) r2, (java.lang.Object) r4)
            r2 = r3
            goto L_0x01a2
        L_0x00ae:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
            r12.putObject(r1, r9, r2)
            r2 = r3
            goto L_0x019d
        L_0x00b8:
            if (r5 != r15) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.e(r3, r4, r11)
            java.lang.Object r3 = r11.f10179c
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x00c5:
            if (r5 != r15) goto L_0x01a1
            c.e.a.b.g.f.hc r2 = r0.a((int) r6)
            r5 = r20
            int r2 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r2, (byte[]) r3, (int) r4, (int) r5, (c.e.a.b.g.f.Ia) r11)
            int r3 = r12.getInt(r1, r13)
            if (r3 != r8) goto L_0x00dc
            java.lang.Object r15 = r12.getObject(r1, r9)
            goto L_0x00dd
        L_0x00dc:
            r15 = 0
        L_0x00dd:
            if (r15 != 0) goto L_0x00e5
            java.lang.Object r3 = r11.f10179c
            r12.putObject(r1, r9, r3)
            goto L_0x00ee
        L_0x00e5:
            java.lang.Object r3 = r11.f10179c
            java.lang.Object r3 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r15, (java.lang.Object) r3)
            r12.putObject(r1, r9, r3)
        L_0x00ee:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x00f3:
            if (r5 != r15) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.a(r3, r4, r11)
            int r4 = r11.f10177a
            if (r4 != 0) goto L_0x0103
            java.lang.String r3 = ""
            r12.putObject(r1, r9, r3)
            goto L_0x0122
        L_0x0103:
            r5 = 536870912(0x20000000, float:1.0842022E-19)
            r5 = r24 & r5
            if (r5 == 0) goto L_0x0117
            int r5 = r2 + r4
            boolean r5 = c.e.a.b.g.f.Hc.a((byte[]) r3, (int) r2, (int) r5)
            if (r5 == 0) goto L_0x0112
            goto L_0x0117
        L_0x0112:
            com.google.android.gms.internal.measurement.zzfh r1 = com.google.android.gms.internal.measurement.zzfh.i()
            throw r1
        L_0x0117:
            java.lang.String r5 = new java.lang.String
            java.nio.charset.Charset r6 = c.e.a.b.g.f.C0864qb.f10508a
            r5.<init>(r3, r2, r4, r6)
            r12.putObject(r1, r9, r5)
            int r2 = r2 + r4
        L_0x0122:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x0127:
            if (r5 != 0) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.b(r3, r4, r11)
            long r3 = r11.f10178b
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0137
            r15 = 1
            goto L_0x0138
        L_0x0137:
            r15 = 0
        L_0x0138:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r15)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x0140:
            if (r5 != r7) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.a(r18, r19)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r12.putObject(r1, r9, r2)
            goto L_0x018a
        L_0x014e:
            r2 = 1
            if (r5 != r2) goto L_0x01a1
            long r2 = c.e.a.b.g.f.Ha.b(r18, r19)
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r12.putObject(r1, r9, r2)
            goto L_0x019b
        L_0x015d:
            if (r5 != 0) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.a(r3, r4, r11)
            int r3 = r11.f10177a
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x016d:
            if (r5 != 0) goto L_0x01a1
            int r2 = c.e.a.b.g.f.Ha.b(r3, r4, r11)
            long r3 = r11.f10178b
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r12.putObject(r1, r9, r3)
            goto L_0x019d
        L_0x017d:
            if (r5 != r7) goto L_0x01a1
            float r2 = c.e.a.b.g.f.Ha.d(r18, r19)
            java.lang.Float r2 = java.lang.Float.valueOf(r2)
            r12.putObject(r1, r9, r2)
        L_0x018a:
            int r2 = r4 + 4
            goto L_0x019d
        L_0x018d:
            r2 = 1
            if (r5 != r2) goto L_0x01a1
            double r2 = c.e.a.b.g.f.Ha.c(r18, r19)
            java.lang.Double r2 = java.lang.Double.valueOf(r2)
            r12.putObject(r1, r9, r2)
        L_0x019b:
            int r2 = r4 + 8
        L_0x019d:
            r12.putInt(r1, r13, r8)
            goto L_0x01a2
        L_0x01a1:
            r2 = r4
        L_0x01a2:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, c.e.a.b.g.f.Ia):int");
    }

    public final C0829hc a(int i2) {
        int i3 = (i2 / 3) << 1;
        C0829hc hcVar = (C0829hc) this.f10266d[i3];
        if (hcVar != null) {
            return hcVar;
        }
        C0829hc a2 = C0813dc.a().a((Class) this.f10266d[i3 + 1]);
        this.f10266d[i3] = a2;
        return a2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v7, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v27, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v13, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v6, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r26v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r26v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r26v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r26v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v15, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v14, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v16, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v17, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r26v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v28, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v13, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v14, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v15, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v16, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v17, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v22, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v18, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v20, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v31, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v22, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v24, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v25, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v26, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v27, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v28, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v29, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v30, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v31, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v33, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v35, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v26, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v44, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v36, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v37, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v32, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v32, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v30, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v31, resolved type: byte} */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x02ce, code lost:
        r18 = r33;
        r20 = r6;
        r2 = r7;
        r7 = r8;
        r19 = r9;
        r27 = r10;
        r25 = r11;
        r6 = r35;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0096, code lost:
        r7 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x017c, code lost:
        r6 = r6 | r23;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x021b, code lost:
        r6 = r6 | r23;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x021d, code lost:
        r3 = r8;
        r2 = r9;
        r1 = r11;
        r9 = r13;
        r11 = r35;
        r13 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0247, code lost:
        r33 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x02be, code lost:
        r0 = r7 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x02c0, code lost:
        r6 = r6 | r23;
        r7 = r33;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x02c4, code lost:
        r3 = r8;
        r2 = r9;
        r1 = r11;
        r9 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x02c8, code lost:
        r13 = r34;
        r11 = r35;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x03e6 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x03fb  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x043d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(T r31, byte[] r32, int r33, int r34, int r35, c.e.a.b.g.f.Ia r36) {
        /*
            r30 = this;
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            r9 = r36
            sun.misc.Unsafe r10 = f10264b
            r16 = 0
            r0 = r33
            r1 = -1
            r2 = 0
            r3 = 0
            r6 = 0
            r7 = -1
        L_0x0017:
            r17 = 0
            if (r0 >= r13) goto L_0x047f
            int r3 = r0 + 1
            byte r0 = r12[r0]
            if (r0 >= 0) goto L_0x002a
            int r0 = c.e.a.b.g.f.Ha.a((int) r0, (byte[]) r12, (int) r3, (c.e.a.b.g.f.Ia) r9)
            int r3 = r9.f10177a
            r4 = r0
            r5 = r3
            goto L_0x002c
        L_0x002a:
            r5 = r0
            r4 = r3
        L_0x002c:
            int r3 = r5 >>> 3
            r0 = r5 & 7
            r8 = 3
            if (r3 <= r1) goto L_0x0039
            int r2 = r2 / r8
            int r1 = r15.a((int) r3, (int) r2)
            goto L_0x003d
        L_0x0039:
            int r1 = r15.g(r3)
        L_0x003d:
            r2 = r1
            r1 = -1
            if (r2 != r1) goto L_0x0050
            r25 = r3
            r2 = r4
            r20 = r6
            r18 = r7
            r27 = r10
            r6 = r11
            r19 = 0
            r7 = r5
            goto L_0x03e4
        L_0x0050:
            int[] r1 = r15.f10265c
            int r19 = r2 + 1
            r8 = r1[r19]
            r19 = 267386880(0xff00000, float:2.3665827E-29)
            r19 = r8 & r19
            int r11 = r19 >>> 20
            r19 = 1048575(0xfffff, float:1.469367E-39)
            r20 = r5
            r5 = r8 & r19
            long r12 = (long) r5
            r5 = 17
            r21 = r8
            if (r11 > r5) goto L_0x02de
            int r5 = r2 + 2
            r1 = r1[r5]
            int r5 = r1 >>> 20
            r8 = 1
            int r23 = r8 << r5
            r1 = r1 & r19
            if (r1 == r7) goto L_0x0085
            r5 = -1
            if (r7 == r5) goto L_0x007e
            long r8 = (long) r7
            r10.putInt(r14, r8, r6)
        L_0x007e:
            long r6 = (long) r1
            int r6 = r10.getInt(r14, r6)
            r7 = r1
            goto L_0x0086
        L_0x0085:
            r5 = -1
        L_0x0086:
            r1 = 5
            switch(r11) {
                case 0: goto L_0x02a6;
                case 1: goto L_0x028c;
                case 2: goto L_0x0266;
                case 3: goto L_0x0266;
                case 4: goto L_0x024b;
                case 5: goto L_0x0226;
                case 6: goto L_0x0203;
                case 7: goto L_0x01db;
                case 8: goto L_0x01b6;
                case 9: goto L_0x0180;
                case 10: goto L_0x0165;
                case 11: goto L_0x024b;
                case 12: goto L_0x0133;
                case 13: goto L_0x0203;
                case 14: goto L_0x0226;
                case 15: goto L_0x0118;
                case 16: goto L_0x00eb;
                case 17: goto L_0x0099;
                default: goto L_0x008a;
            }
        L_0x008a:
            r12 = r32
            r13 = r36
            r9 = r2
            r11 = r3
            r33 = r7
            r8 = r20
            r19 = -1
        L_0x0096:
            r7 = r4
            goto L_0x02ce
        L_0x0099:
            r8 = 3
            if (r0 != r8) goto L_0x00df
            int r0 = r3 << 3
            r8 = r0 | 4
            c.e.a.b.g.f.hc r0 = r15.a((int) r2)
            r1 = r32
            r9 = r2
            r2 = r4
            r11 = r3
            r3 = r34
            r4 = r8
            r8 = r20
            r19 = -1
            r5 = r36
            int r0 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r0, (byte[]) r1, (int) r2, (int) r3, (int) r4, (c.e.a.b.g.f.Ia) r5)
            r1 = r6 & r23
            if (r1 != 0) goto L_0x00c2
            r5 = r36
            java.lang.Object r1 = r5.f10179c
            r10.putObject(r14, r12, r1)
            goto L_0x00d1
        L_0x00c2:
            r5 = r36
            java.lang.Object r1 = r10.getObject(r14, r12)
            java.lang.Object r2 = r5.f10179c
            java.lang.Object r1 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r1, (java.lang.Object) r2)
            r10.putObject(r14, r12, r1)
        L_0x00d1:
            r6 = r6 | r23
            r12 = r32
            r13 = r34
            r3 = r8
            r2 = r9
            r1 = r11
            r11 = r35
            r9 = r5
            goto L_0x0017
        L_0x00df:
            r9 = r2
            r11 = r3
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            goto L_0x0247
        L_0x00eb:
            r5 = r36
            r9 = r2
            r11 = r3
            r8 = r20
            r19 = -1
            if (r0 != 0) goto L_0x0113
            r2 = r12
            r12 = r32
            int r13 = c.e.a.b.g.f.Ha.b(r12, r4, r5)
            long r0 = r5.f10178b
            long r17 = c.e.a.b.g.f.Ua.a((long) r0)
            r0 = r10
            r1 = r31
            r33 = r13
            r13 = r5
            r4 = r17
            r0.putLong(r1, r2, r4)
            r6 = r6 | r23
            r0 = r33
            goto L_0x02c4
        L_0x0113:
            r12 = r32
            r13 = r5
            goto L_0x0247
        L_0x0118:
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != 0) goto L_0x0247
            int r0 = c.e.a.b.g.f.Ha.a(r12, r4, r13)
            int r1 = r13.f10177a
            int r1 = c.e.a.b.g.f.Ua.a((int) r1)
            r10.putInt(r14, r2, r1)
            goto L_0x017c
        L_0x0133:
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != 0) goto L_0x0247
            int r0 = c.e.a.b.g.f.Ha.a(r12, r4, r13)
            int r1 = r13.f10177a
            c.e.a.b.g.f.tb r4 = r15.c((int) r9)
            if (r4 == 0) goto L_0x0161
            boolean r4 = r4.a(r1)
            if (r4 == 0) goto L_0x0153
            goto L_0x0161
        L_0x0153:
            c.e.a.b.g.f.Ac r2 = e((java.lang.Object) r31)
            long r3 = (long) r1
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            r2.a((int) r8, (java.lang.Object) r1)
            goto L_0x02c4
        L_0x0161:
            r10.putInt(r14, r2, r1)
            goto L_0x017c
        L_0x0165:
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r1 = 2
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != r1) goto L_0x0247
            int r0 = c.e.a.b.g.f.Ha.e(r12, r4, r13)
            java.lang.Object r1 = r13.f10179c
            r10.putObject(r14, r2, r1)
        L_0x017c:
            r6 = r6 | r23
            goto L_0x02c4
        L_0x0180:
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r1 = 2
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != r1) goto L_0x01b2
            c.e.a.b.g.f.hc r0 = r15.a((int) r9)
            r5 = r34
            int r0 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r0, (byte[]) r12, (int) r4, (int) r5, (c.e.a.b.g.f.Ia) r13)
            r1 = r6 & r23
            if (r1 != 0) goto L_0x01a3
            java.lang.Object r1 = r13.f10179c
            r10.putObject(r14, r2, r1)
            goto L_0x021b
        L_0x01a3:
            java.lang.Object r1 = r10.getObject(r14, r2)
            java.lang.Object r4 = r13.f10179c
            java.lang.Object r1 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r1, (java.lang.Object) r4)
            r10.putObject(r14, r2, r1)
            goto L_0x021b
        L_0x01b2:
            r5 = r34
            goto L_0x0247
        L_0x01b6:
            r5 = r34
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r1 = 2
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != r1) goto L_0x0247
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r21 & r0
            if (r0 != 0) goto L_0x01d1
            int r0 = c.e.a.b.g.f.Ha.c(r12, r4, r13)
            goto L_0x01d5
        L_0x01d1:
            int r0 = c.e.a.b.g.f.Ha.d(r12, r4, r13)
        L_0x01d5:
            java.lang.Object r1 = r13.f10179c
            r10.putObject(r14, r2, r1)
            goto L_0x021b
        L_0x01db:
            r5 = r34
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != 0) goto L_0x0247
            int r0 = c.e.a.b.g.f.Ha.b(r12, r4, r13)
            r33 = r0
            long r0 = r13.f10178b
            r20 = 0
            int r4 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1))
            if (r4 == 0) goto L_0x01fa
            r0 = 1
            goto L_0x01fb
        L_0x01fa:
            r0 = 0
        L_0x01fb:
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (boolean) r0)
            r6 = r6 | r23
            r0 = r33
            goto L_0x021d
        L_0x0203:
            r5 = r34
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != r1) goto L_0x0247
            int r0 = c.e.a.b.g.f.Ha.a(r12, r4)
            r10.putInt(r14, r2, r0)
            int r0 = r4 + 4
        L_0x021b:
            r6 = r6 | r23
        L_0x021d:
            r3 = r8
            r2 = r9
            r1 = r11
            r9 = r13
            r11 = r35
            r13 = r5
            goto L_0x0017
        L_0x0226:
            r5 = r34
            r9 = r2
            r11 = r3
            r2 = r12
            r8 = r20
            r1 = 1
            r19 = -1
            r12 = r32
            r13 = r36
            if (r0 != r1) goto L_0x0247
            long r17 = c.e.a.b.g.f.Ha.b(r12, r4)
            r0 = r10
            r1 = r31
            r33 = r7
            r7 = r4
            r4 = r17
            r0.putLong(r1, r2, r4)
            goto L_0x02be
        L_0x0247:
            r33 = r7
            goto L_0x0096
        L_0x024b:
            r9 = r2
            r11 = r3
            r33 = r7
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            r7 = r4
            if (r0 != 0) goto L_0x02ce
            int r0 = c.e.a.b.g.f.Ha.a(r12, r7, r13)
            int r1 = r13.f10177a
            r10.putInt(r14, r2, r1)
            goto L_0x02c0
        L_0x0266:
            r9 = r2
            r11 = r3
            r33 = r7
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            r7 = r4
            if (r0 != 0) goto L_0x02ce
            int r7 = c.e.a.b.g.f.Ha.b(r12, r7, r13)
            long r4 = r13.f10178b
            r0 = r10
            r1 = r31
            r0.putLong(r1, r2, r4)
            r6 = r6 | r23
            r0 = r7
            r3 = r8
            r2 = r9
            r1 = r11
            r9 = r13
            r7 = r33
            goto L_0x02c8
        L_0x028c:
            r9 = r2
            r11 = r3
            r33 = r7
            r2 = r12
            r8 = r20
            r19 = -1
            r12 = r32
            r13 = r36
            r7 = r4
            if (r0 != r1) goto L_0x02ce
            float r0 = c.e.a.b.g.f.Ha.d(r12, r7)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (float) r0)
            int r0 = r7 + 4
            goto L_0x02c0
        L_0x02a6:
            r9 = r2
            r11 = r3
            r33 = r7
            r2 = r12
            r8 = r20
            r1 = 1
            r19 = -1
            r12 = r32
            r13 = r36
            r7 = r4
            if (r0 != r1) goto L_0x02ce
            double r0 = c.e.a.b.g.f.Ha.c(r12, r7)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (double) r0)
        L_0x02be:
            int r0 = r7 + 8
        L_0x02c0:
            r6 = r6 | r23
            r7 = r33
        L_0x02c4:
            r3 = r8
            r2 = r9
            r1 = r11
            r9 = r13
        L_0x02c8:
            r13 = r34
            r11 = r35
            goto L_0x0017
        L_0x02ce:
            r18 = r33
            r20 = r6
            r2 = r7
            r7 = r8
            r19 = r9
            r27 = r10
            r25 = r11
            r6 = r35
            goto L_0x03e4
        L_0x02de:
            r5 = r3
            r18 = r7
            r8 = r20
            r19 = -1
            r7 = r4
            r28 = r12
            r12 = r32
            r13 = r9
            r9 = r2
            r2 = r28
            r1 = 27
            if (r11 != r1) goto L_0x0343
            r1 = 2
            if (r0 != r1) goto L_0x0336
            java.lang.Object r0 = r10.getObject(r14, r2)
            c.e.a.b.g.f.vb r0 = (c.e.a.b.g.f.C0883vb) r0
            boolean r1 = r0.s()
            if (r1 != 0) goto L_0x0313
            int r1 = r0.size()
            if (r1 != 0) goto L_0x030a
            r1 = 10
            goto L_0x030c
        L_0x030a:
            int r1 = r1 << 1
        L_0x030c:
            c.e.a.b.g.f.vb r0 = r0.c(r1)
            r10.putObject(r14, r2, r0)
        L_0x0313:
            r11 = r0
            c.e.a.b.g.f.hc r0 = r15.a((int) r9)
            r1 = r8
            r2 = r32
            r3 = r7
            r4 = r34
            r7 = r5
            r5 = r11
            r20 = r6
            r6 = r36
            int r0 = c.e.a.b.g.f.Ha.a(r0, r1, r2, r3, r4, r5, r6)
            r11 = r35
            r1 = r7
            r3 = r8
            r2 = r9
            r9 = r13
            r7 = r18
            r6 = r20
            r13 = r34
            goto L_0x0017
        L_0x0336:
            r20 = r6
            r25 = r5
            r15 = r7
            r26 = r8
            r19 = r9
            r27 = r10
            goto L_0x03aa
        L_0x0343:
            r20 = r6
            r6 = r5
            r1 = 49
            if (r11 > r1) goto L_0x0392
            r5 = r21
            long r4 = (long) r5
            r1 = r0
            r0 = r30
            r33 = r1
            r1 = r31
            r23 = r2
            r2 = r32
            r3 = r7
            r21 = r4
            r4 = r34
            r5 = r8
            r25 = r6
            r15 = r7
            r7 = r33
            r26 = r8
            r8 = r9
            r19 = r9
            r27 = r10
            r9 = r21
            r12 = r23
            r14 = r36
            int r0 = r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (long) r9, (int) r11, (long) r12, (c.e.a.b.g.f.Ia) r14)
            if (r0 != r15) goto L_0x0378
            goto L_0x03e0
        L_0x0378:
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            r9 = r36
            r7 = r18
            r2 = r19
            r6 = r20
            r1 = r25
            r3 = r26
        L_0x038e:
            r10 = r27
            goto L_0x0017
        L_0x0392:
            r33 = r0
            r23 = r2
            r25 = r6
            r15 = r7
            r26 = r8
            r19 = r9
            r27 = r10
            r5 = r21
            r0 = 50
            if (r11 != r0) goto L_0x03c3
            r7 = r33
            r0 = 2
            if (r7 == r0) goto L_0x03b0
        L_0x03aa:
            r6 = r35
            r2 = r15
        L_0x03ad:
            r7 = r26
            goto L_0x03e4
        L_0x03b0:
            r0 = r30
            r1 = r31
            r2 = r32
            r3 = r15
            r4 = r34
            r5 = r19
            r6 = r23
            r8 = r36
            r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (long) r6, (c.e.a.b.g.f.Ia) r8)
            throw r17
        L_0x03c3:
            r7 = r33
            r0 = r30
            r1 = r31
            r2 = r32
            r3 = r15
            r4 = r34
            r8 = r5
            r5 = r26
            r6 = r25
            r9 = r11
            r10 = r23
            r12 = r19
            r13 = r36
            int r0 = r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (int) r9, (long) r10, (int) r12, (c.e.a.b.g.f.Ia) r13)
            if (r0 != r15) goto L_0x0465
        L_0x03e0:
            r6 = r35
            r2 = r0
            goto L_0x03ad
        L_0x03e4:
            if (r7 != r6) goto L_0x03f5
            if (r6 != 0) goto L_0x03e9
            goto L_0x03f5
        L_0x03e9:
            r4 = -1
            r8 = r30
            r11 = r31
            r3 = r7
            r0 = r18
            r1 = r20
            goto L_0x048e
        L_0x03f5:
            r8 = r30
            boolean r0 = r8.f10270h
            if (r0 == 0) goto L_0x043d
            r9 = r36
            c.e.a.b.g.f.cb r0 = r9.f10180d
            c.e.a.b.g.f.cb r1 = c.e.a.b.g.f.C0808cb.c()
            if (r0 == r1) goto L_0x043a
            c.e.a.b.g.f.Sb r0 = r8.f10269g
            c.e.a.b.g.f.cb r1 = r9.f10180d
            r10 = r25
            c.e.a.b.g.f.nb$d r0 = r1.a(r0, r10)
            if (r0 != 0) goto L_0x042a
            c.e.a.b.g.f.Ac r4 = e((java.lang.Object) r31)
            r0 = r7
            r1 = r32
            r3 = r34
            r5 = r36
            int r0 = c.e.a.b.g.f.Ha.a((int) r0, (byte[]) r1, (int) r2, (int) r3, (c.e.a.b.g.f.Ac) r4, (c.e.a.b.g.f.Ia) r5)
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r6
            r3 = r7
            r15 = r8
            goto L_0x0476
        L_0x042a:
            r11 = r31
            r0 = r11
            c.e.a.b.g.f.nb$c r0 = (c.e.a.b.g.f.C0852nb.c) r0
            r0.q()
            c.e.a.b.g.f.gb<java.lang.Object> r0 = r0.zzagt
            java.lang.NoSuchMethodError r0 = new java.lang.NoSuchMethodError
            r0.<init>()
            throw r0
        L_0x043a:
            r11 = r31
            goto L_0x0441
        L_0x043d:
            r11 = r31
            r9 = r36
        L_0x0441:
            r10 = r25
            c.e.a.b.g.f.Ac r4 = e((java.lang.Object) r31)
            r0 = r7
            r1 = r32
            r3 = r34
            r5 = r36
            int r0 = c.e.a.b.g.f.Ha.a((int) r0, (byte[]) r1, (int) r2, (int) r3, (c.e.a.b.g.f.Ac) r4, (c.e.a.b.g.f.Ia) r5)
            r12 = r32
            r13 = r34
            r3 = r7
            r15 = r8
            r1 = r10
            r14 = r11
            r7 = r18
            r2 = r19
            r10 = r27
            r11 = r6
            r6 = r20
            goto L_0x0017
        L_0x0465:
            r10 = r25
            r7 = r26
            r15 = r30
            r14 = r31
            r12 = r32
            r13 = r34
            r11 = r35
            r9 = r36
            r3 = r7
        L_0x0476:
            r1 = r10
            r7 = r18
            r2 = r19
            r6 = r20
            goto L_0x038e
        L_0x047f:
            r20 = r6
            r18 = r7
            r27 = r10
            r6 = r11
            r11 = r14
            r8 = r15
            r2 = r0
            r0 = r18
            r1 = r20
            r4 = -1
        L_0x048e:
            if (r0 == r4) goto L_0x0496
            long r4 = (long) r0
            r0 = r27
            r0.putInt(r11, r4, r1)
        L_0x0496:
            int r0 = r8.m
            r1 = r17
        L_0x049a:
            int r4 = r8.n
            if (r0 >= r4) goto L_0x04ac
            int[] r4 = r8.f10274l
            r4 = r4[r0]
            c.e.a.b.g.f.zc<?, ?> r5 = r8.q
            r8.a((java.lang.Object) r11, (int) r4, r1, r5)
            c.e.a.b.g.f.Ac r1 = (c.e.a.b.g.f.Ac) r1
            int r0 = r0 + 1
            goto L_0x049a
        L_0x04ac:
            if (r1 == 0) goto L_0x04b3
            c.e.a.b.g.f.zc<?, ?> r0 = r8.q
            r0.b((java.lang.Object) r11, r1)
        L_0x04b3:
            if (r6 != 0) goto L_0x04bf
            r0 = r34
            if (r2 != r0) goto L_0x04ba
            goto L_0x04c5
        L_0x04ba:
            com.google.android.gms.internal.measurement.zzfh r0 = com.google.android.gms.internal.measurement.zzfh.h()
            throw r0
        L_0x04bf:
            r0 = r34
            if (r2 > r0) goto L_0x04c6
            if (r3 != r6) goto L_0x04c6
        L_0x04c5:
            return r2
        L_0x04c6:
            com.google.android.gms.internal.measurement.zzfh r0 = com.google.android.gms.internal.measurement.zzfh.h()
            goto L_0x04cc
        L_0x04cb:
            throw r0
        L_0x04cc:
            goto L_0x04cb
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, byte[], int, int, int, c.e.a.b.g.f.Ia):int");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v2, resolved type: byte} */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x010b, code lost:
        r2 = r4;
        r1 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x013d, code lost:
        r0 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0159, code lost:
        r0 = r8 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x015b, code lost:
        r1 = r7;
        r2 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0160, code lost:
        r24 = r7;
        r15 = r8;
        r18 = r9;
        r19 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x01e1, code lost:
        if (r0 == r15) goto L_0x022d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x022b, code lost:
        if (r0 == r15) goto L_0x022d;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(T r28, byte[] r29, int r30, int r31, c.e.a.b.g.f.Ia r32) {
        /*
            r27 = this;
            r15 = r27
            r14 = r28
            r12 = r29
            r13 = r31
            r11 = r32
            boolean r0 = r15.f10272j
            if (r0 == 0) goto L_0x025a
            sun.misc.Unsafe r9 = f10264b
            r10 = -1
            r16 = 0
            r0 = r30
            r1 = -1
            r2 = 0
        L_0x0017:
            if (r0 >= r13) goto L_0x0251
            int r3 = r0 + 1
            byte r0 = r12[r0]
            if (r0 >= 0) goto L_0x0029
            int r0 = c.e.a.b.g.f.Ha.a((int) r0, (byte[]) r12, (int) r3, (c.e.a.b.g.f.Ia) r11)
            int r3 = r11.f10177a
            r8 = r0
            r17 = r3
            goto L_0x002c
        L_0x0029:
            r17 = r0
            r8 = r3
        L_0x002c:
            int r7 = r17 >>> 3
            r6 = r17 & 7
            if (r7 <= r1) goto L_0x0039
            int r2 = r2 / 3
            int r0 = r15.a((int) r7, (int) r2)
            goto L_0x003d
        L_0x0039:
            int r0 = r15.g(r7)
        L_0x003d:
            r4 = r0
            if (r4 != r10) goto L_0x004b
            r24 = r7
            r2 = r8
            r18 = r9
            r19 = 0
            r26 = -1
            goto L_0x022e
        L_0x004b:
            int[] r0 = r15.f10265c
            int r1 = r4 + 1
            r5 = r0[r1]
            r0 = 267386880(0xff00000, float:2.3665827E-29)
            r0 = r0 & r5
            int r3 = r0 >>> 20
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r0 = r0 & r5
            long r1 = (long) r0
            r0 = 17
            r10 = 2
            if (r3 > r0) goto L_0x0168
            r0 = 1
            switch(r3) {
                case 0: goto L_0x014e;
                case 1: goto L_0x013f;
                case 2: goto L_0x012d;
                case 3: goto L_0x012d;
                case 4: goto L_0x011f;
                case 5: goto L_0x010f;
                case 6: goto L_0x00fe;
                case 7: goto L_0x00e8;
                case 8: goto L_0x00d1;
                case 9: goto L_0x00b0;
                case 10: goto L_0x00a3;
                case 11: goto L_0x011f;
                case 12: goto L_0x0094;
                case 13: goto L_0x00fe;
                case 14: goto L_0x010f;
                case 15: goto L_0x0081;
                case 16: goto L_0x0066;
                default: goto L_0x0064;
            }
        L_0x0064:
            goto L_0x01a4
        L_0x0066:
            if (r6 != 0) goto L_0x01a4
            int r6 = c.e.a.b.g.f.Ha.b(r12, r8, r11)
            r19 = r1
            long r0 = r11.f10178b
            long r21 = c.e.a.b.g.f.Ua.a((long) r0)
            r0 = r9
            r2 = r19
            r1 = r28
            r10 = r4
            r4 = r21
            r0.putLong(r1, r2, r4)
            goto L_0x013d
        L_0x0081:
            r2 = r1
            r10 = r4
            if (r6 != 0) goto L_0x0160
            int r0 = c.e.a.b.g.f.Ha.a(r12, r8, r11)
            int r1 = r11.f10177a
            int r1 = c.e.a.b.g.f.Ua.a((int) r1)
            r9.putInt(r14, r2, r1)
            goto L_0x015b
        L_0x0094:
            r2 = r1
            r10 = r4
            if (r6 != 0) goto L_0x0160
            int r0 = c.e.a.b.g.f.Ha.a(r12, r8, r11)
            int r1 = r11.f10177a
            r9.putInt(r14, r2, r1)
            goto L_0x015b
        L_0x00a3:
            r2 = r1
            if (r6 != r10) goto L_0x01a4
            int r0 = c.e.a.b.g.f.Ha.e(r12, r8, r11)
            java.lang.Object r1 = r11.f10179c
            r9.putObject(r14, r2, r1)
            goto L_0x010b
        L_0x00b0:
            r2 = r1
            if (r6 != r10) goto L_0x01a4
            c.e.a.b.g.f.hc r0 = r15.a((int) r4)
            int r0 = c.e.a.b.g.f.Ha.a((c.e.a.b.g.f.C0829hc) r0, (byte[]) r12, (int) r8, (int) r13, (c.e.a.b.g.f.Ia) r11)
            java.lang.Object r1 = r9.getObject(r14, r2)
            if (r1 != 0) goto L_0x00c7
            java.lang.Object r1 = r11.f10179c
            r9.putObject(r14, r2, r1)
            goto L_0x010b
        L_0x00c7:
            java.lang.Object r5 = r11.f10179c
            java.lang.Object r1 = c.e.a.b.g.f.C0864qb.a((java.lang.Object) r1, (java.lang.Object) r5)
            r9.putObject(r14, r2, r1)
            goto L_0x010b
        L_0x00d1:
            r2 = r1
            if (r6 != r10) goto L_0x01a4
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r0 & r5
            if (r0 != 0) goto L_0x00de
            int r0 = c.e.a.b.g.f.Ha.c(r12, r8, r11)
            goto L_0x00e2
        L_0x00de:
            int r0 = c.e.a.b.g.f.Ha.d(r12, r8, r11)
        L_0x00e2:
            java.lang.Object r1 = r11.f10179c
            r9.putObject(r14, r2, r1)
            goto L_0x010b
        L_0x00e8:
            r2 = r1
            if (r6 != 0) goto L_0x01a4
            int r1 = c.e.a.b.g.f.Ha.b(r12, r8, r11)
            long r5 = r11.f10178b
            r19 = 0
            int r8 = (r5 > r19 ? 1 : (r5 == r19 ? 0 : -1))
            if (r8 == 0) goto L_0x00f8
            goto L_0x00f9
        L_0x00f8:
            r0 = 0
        L_0x00f9:
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (boolean) r0)
            r0 = r1
            goto L_0x010b
        L_0x00fe:
            r2 = r1
            r0 = 5
            if (r6 != r0) goto L_0x01a4
            int r0 = c.e.a.b.g.f.Ha.a(r12, r8)
            r9.putInt(r14, r2, r0)
            int r0 = r8 + 4
        L_0x010b:
            r2 = r4
            r1 = r7
            goto L_0x015d
        L_0x010f:
            r2 = r1
            if (r6 != r0) goto L_0x01a4
            long r5 = c.e.a.b.g.f.Ha.b(r12, r8)
            r0 = r9
            r1 = r28
            r10 = r4
            r4 = r5
            r0.putLong(r1, r2, r4)
            goto L_0x0159
        L_0x011f:
            r2 = r1
            r10 = r4
            if (r6 != 0) goto L_0x0160
            int r0 = c.e.a.b.g.f.Ha.a(r12, r8, r11)
            int r1 = r11.f10177a
            r9.putInt(r14, r2, r1)
            goto L_0x015b
        L_0x012d:
            r2 = r1
            r10 = r4
            if (r6 != 0) goto L_0x0160
            int r6 = c.e.a.b.g.f.Ha.b(r12, r8, r11)
            long r4 = r11.f10178b
            r0 = r9
            r1 = r28
            r0.putLong(r1, r2, r4)
        L_0x013d:
            r0 = r6
            goto L_0x015b
        L_0x013f:
            r2 = r1
            r10 = r4
            r0 = 5
            if (r6 != r0) goto L_0x0160
            float r0 = c.e.a.b.g.f.Ha.d(r12, r8)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (float) r0)
            int r0 = r8 + 4
            goto L_0x015b
        L_0x014e:
            r2 = r1
            r10 = r4
            if (r6 != r0) goto L_0x0160
            double r0 = c.e.a.b.g.f.Ha.c(r12, r8)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r14, (long) r2, (double) r0)
        L_0x0159:
            int r0 = r8 + 8
        L_0x015b:
            r1 = r7
            r2 = r10
        L_0x015d:
            r10 = -1
            goto L_0x0017
        L_0x0160:
            r24 = r7
            r15 = r8
            r18 = r9
            r19 = r10
            goto L_0x01ab
        L_0x0168:
            r0 = 27
            if (r3 != r0) goto L_0x01ae
            if (r6 != r10) goto L_0x01a4
            java.lang.Object r0 = r9.getObject(r14, r1)
            c.e.a.b.g.f.vb r0 = (c.e.a.b.g.f.C0883vb) r0
            boolean r3 = r0.s()
            if (r3 != 0) goto L_0x018c
            int r3 = r0.size()
            if (r3 != 0) goto L_0x0183
            r3 = 10
            goto L_0x0185
        L_0x0183:
            int r3 = r3 << 1
        L_0x0185:
            c.e.a.b.g.f.vb r0 = r0.c(r3)
            r9.putObject(r14, r1, r0)
        L_0x018c:
            r5 = r0
            c.e.a.b.g.f.hc r0 = r15.a((int) r4)
            r1 = r17
            r2 = r29
            r3 = r8
            r19 = r4
            r4 = r31
            r6 = r32
            int r0 = c.e.a.b.g.f.Ha.a(r0, r1, r2, r3, r4, r5, r6)
            r1 = r7
            r2 = r19
            goto L_0x015d
        L_0x01a4:
            r19 = r4
            r24 = r7
            r15 = r8
            r18 = r9
        L_0x01ab:
            r26 = -1
            goto L_0x01fb
        L_0x01ae:
            r19 = r4
            r0 = 49
            if (r3 > r0) goto L_0x01e4
            long r4 = (long) r5
            r0 = r27
            r20 = r1
            r1 = r28
            r2 = r29
            r10 = r3
            r3 = r8
            r22 = r4
            r4 = r31
            r5 = r17
            r30 = r6
            r6 = r7
            r24 = r7
            r7 = r30
            r15 = r8
            r8 = r19
            r18 = r9
            r25 = r10
            r26 = -1
            r9 = r22
            r11 = r25
            r12 = r20
            r14 = r32
            int r0 = r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (long) r9, (int) r11, (long) r12, (c.e.a.b.g.f.Ia) r14)
            if (r0 != r15) goto L_0x023e
            goto L_0x022d
        L_0x01e4:
            r20 = r1
            r25 = r3
            r30 = r6
            r24 = r7
            r15 = r8
            r18 = r9
            r26 = -1
            r0 = 50
            r9 = r25
            if (r9 != r0) goto L_0x0211
            r7 = r30
            if (r7 == r10) goto L_0x01fd
        L_0x01fb:
            r2 = r15
            goto L_0x022e
        L_0x01fd:
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = r15
            r4 = r31
            r5 = r19
            r6 = r20
            r8 = r32
            r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (long) r6, (c.e.a.b.g.f.Ia) r8)
            r0 = 0
            throw r0
        L_0x0211:
            r7 = r30
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = r15
            r4 = r31
            r8 = r5
            r5 = r17
            r6 = r24
            r10 = r20
            r12 = r19
            r13 = r32
            int r0 = r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (int) r8, (int) r9, (long) r10, (int) r12, (c.e.a.b.g.f.Ia) r13)
            if (r0 != r15) goto L_0x023e
        L_0x022d:
            r2 = r0
        L_0x022e:
            c.e.a.b.g.f.Ac r4 = e((java.lang.Object) r28)
            r0 = r17
            r1 = r29
            r3 = r31
            r5 = r32
            int r0 = c.e.a.b.g.f.Ha.a((int) r0, (byte[]) r1, (int) r2, (int) r3, (c.e.a.b.g.f.Ac) r4, (c.e.a.b.g.f.Ia) r5)
        L_0x023e:
            r10 = -1
            r15 = r27
            r14 = r28
            r12 = r29
            r13 = r31
            r11 = r32
            r9 = r18
            r2 = r19
            r1 = r24
            goto L_0x0017
        L_0x0251:
            r4 = r13
            if (r0 != r4) goto L_0x0255
            return
        L_0x0255:
            com.google.android.gms.internal.measurement.zzfh r0 = com.google.android.gms.internal.measurement.zzfh.h()
            throw r0
        L_0x025a:
            r4 = r13
            r5 = 0
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = r30
            r4 = r31
            r6 = r32
            r0.a(r1, (byte[]) r2, (int) r3, (int) r4, (int) r5, (c.e.a.b.g.f.Ia) r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wb.a(java.lang.Object, byte[], int, int, c.e.a.b.g.f.Ia):void");
    }

    public final <UT, UB> UB a(Object obj, int i2, UB ub, C0900zc<UT, UB> zcVar) {
        int i3 = this.f10265c[i2];
        Object f2 = Fc.f(obj, (long) (d(i2) & 1048575));
        if (f2 == null) {
            return ub;
        }
        C0875tb c2 = c(i2);
        if (c2 == null) {
            return ub;
        }
        a(i2, i3, this.s.b(f2), c2, ub, zcVar);
        throw null;
    }

    public final <K, V, UT, UB> UB a(int i2, int i3, Map<K, V> map, C0875tb tbVar, UB ub, C0900zc<UT, UB> zcVar) {
        this.s.c(b(i2));
        throw null;
    }

    public final boolean a(T t) {
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.m) {
                return !this.f10270h || this.r.a((Object) t).d();
            }
            int i6 = this.f10274l[i3];
            int i7 = this.f10265c[i6];
            int d2 = d(i6);
            if (!this.f10272j) {
                int i8 = this.f10265c[i6 + 2];
                int i9 = i8 & 1048575;
                i2 = 1 << (i8 >>> 20);
                if (i9 != i4) {
                    i5 = f10264b.getInt(t, (long) i9);
                    i4 = i9;
                }
            } else {
                i2 = 0;
            }
            if (((268435456 & d2) != 0) && !a(t, i6, i5, i2)) {
                return false;
            }
            int i10 = (267386880 & d2) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (a(t, i7, i6) && !a((Object) t, d2, a(i6))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.s.a(Fc.f(t, (long) (d2 & 1048575))).isEmpty()) {
                            this.s.c(b(i6));
                            throw null;
                        }
                    }
                }
                List list = (List) Fc.f(t, (long) (d2 & 1048575));
                if (!list.isEmpty()) {
                    C0829hc a2 = a(i6);
                    int i11 = 0;
                    while (true) {
                        if (i11 >= list.size()) {
                            break;
                        } else if (!a2.a(list.get(i11))) {
                            z = false;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (a(t, i6, i5, i2) && !a((Object) t, d2, a(i6))) {
                return false;
            }
            i3++;
        }
    }

    public static boolean a(Object obj, int i2, C0829hc hcVar) {
        return hcVar.a(Fc.f(obj, (long) (i2 & 1048575)));
    }

    public static void a(int i2, Object obj, Oc oc) {
        if (obj instanceof String) {
            oc.a(i2, (String) obj);
        } else {
            oc.a(i2, (zzdp) obj);
        }
    }

    public final void a(Object obj, int i2, C0825gc gcVar) {
        if (f(i2)) {
            Fc.a(obj, (long) (i2 & 1048575), (Object) gcVar.j());
        } else if (this.f10271i) {
            Fc.a(obj, (long) (i2 & 1048575), (Object) gcVar.readString());
        } else {
            Fc.a(obj, (long) (i2 & 1048575), (Object) gcVar.k());
        }
    }

    public final boolean a(T t, int i2, int i3, int i4) {
        if (this.f10272j) {
            return a(t, i2);
        }
        return (i3 & i4) != 0;
    }

    public final boolean a(T t, int i2) {
        if (this.f10272j) {
            int d2 = d(i2);
            long j2 = (long) (d2 & 1048575);
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    return Fc.e(t, j2) != 0.0d;
                case 1:
                    return Fc.d(t, j2) != 0.0f;
                case 2:
                    return Fc.b(t, j2) != 0;
                case 3:
                    return Fc.b(t, j2) != 0;
                case 4:
                    return Fc.a((Object) t, j2) != 0;
                case 5:
                    return Fc.b(t, j2) != 0;
                case 6:
                    return Fc.a((Object) t, j2) != 0;
                case 7:
                    return Fc.c(t, j2);
                case 8:
                    Object f2 = Fc.f(t, j2);
                    if (f2 instanceof String) {
                        return !((String) f2).isEmpty();
                    }
                    if (f2 instanceof zzdp) {
                        return !zzdp.f13171a.equals(f2);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return Fc.f(t, j2) != null;
                case 10:
                    return !zzdp.f13171a.equals(Fc.f(t, j2));
                case 11:
                    return Fc.a((Object) t, j2) != 0;
                case 12:
                    return Fc.a((Object) t, j2) != 0;
                case 13:
                    return Fc.a((Object) t, j2) != 0;
                case 14:
                    return Fc.b(t, j2) != 0;
                case 15:
                    return Fc.a((Object) t, j2) != 0;
                case 16:
                    return Fc.b(t, j2) != 0;
                case 17:
                    return Fc.f(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int e2 = e(i2);
            return (Fc.a((Object) t, (long) (e2 & 1048575)) & (1 << (e2 >>> 20))) != 0;
        }
    }

    public final boolean a(T t, int i2, int i3) {
        return Fc.a((Object) t, (long) (e(i3) & 1048575)) == i2;
    }

    public final int a(int i2, int i3) {
        if (i2 < this.f10267e || i2 > this.f10268f) {
            return -1;
        }
        return b(i2, i3);
    }
}
