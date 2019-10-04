package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* renamed from: b.y.a.o  reason: case insensitive filesystem */
/* compiled from: DiffUtil */
public class C0345o {

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<e> f3502a = new C0344n();

    /* renamed from: b.y.a.o$a */
    /* compiled from: DiffUtil */
    public static abstract class a {
        public abstract int a();

        public abstract boolean a(int i2, int i3);

        public abstract int b();

        public abstract boolean b(int i2, int i3);

        public Object c(int i2, int i3) {
            return null;
        }
    }

    /* renamed from: b.y.a.o$b */
    /* compiled from: DiffUtil */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final List<e> f3503a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3504b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f3505c;

        /* renamed from: d  reason: collision with root package name */
        public final a f3506d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3507e;

        /* renamed from: f  reason: collision with root package name */
        public final int f3508f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f3509g;

        public b(a aVar, List<e> list, int[] iArr, int[] iArr2, boolean z) {
            this.f3503a = list;
            this.f3504b = iArr;
            this.f3505c = iArr2;
            Arrays.fill(this.f3504b, 0);
            Arrays.fill(this.f3505c, 0);
            this.f3506d = aVar;
            this.f3507e = aVar.b();
            this.f3508f = aVar.a();
            this.f3509g = z;
            a();
            b();
        }

        public final void a() {
            e eVar = this.f3503a.isEmpty() ? null : this.f3503a.get(0);
            if (eVar == null || eVar.f3517a != 0 || eVar.f3518b != 0) {
                e eVar2 = new e();
                eVar2.f3517a = 0;
                eVar2.f3518b = 0;
                eVar2.f3520d = false;
                eVar2.f3519c = 0;
                eVar2.f3521e = false;
                this.f3503a.add(0, eVar2);
            }
        }

        public final void b() {
            int i2 = this.f3507e;
            int i3 = this.f3508f;
            for (int size = this.f3503a.size() - 1; size >= 0; size--) {
                e eVar = this.f3503a.get(size);
                int i4 = eVar.f3517a;
                int i5 = eVar.f3519c;
                int i6 = i4 + i5;
                int i7 = eVar.f3518b + i5;
                if (this.f3509g) {
                    while (i2 > i6) {
                        a(i2, i3, size);
                        i2--;
                    }
                    while (i3 > i7) {
                        b(i2, i3, size);
                        i3--;
                    }
                }
                for (int i8 = 0; i8 < eVar.f3519c; i8++) {
                    int i9 = eVar.f3517a + i8;
                    int i10 = eVar.f3518b + i8;
                    int i11 = this.f3506d.a(i9, i10) ? 1 : 2;
                    this.f3504b[i9] = (i10 << 5) | i11;
                    this.f3505c[i10] = (i9 << 5) | i11;
                }
                i2 = eVar.f3517a;
                i3 = eVar.f3518b;
            }
        }

        public final void a(int i2, int i3, int i4) {
            if (this.f3504b[i2 - 1] == 0) {
                a(i2, i3, i4, false);
            }
        }

        public final boolean a(int i2, int i3, int i4, boolean z) {
            int i5;
            int i6;
            if (z) {
                i3--;
                i6 = i2;
                i5 = i3;
            } else {
                i6 = i2 - 1;
                i5 = i6;
            }
            while (i4 >= 0) {
                e eVar = this.f3503a.get(i4);
                int i7 = eVar.f3517a;
                int i8 = eVar.f3519c;
                int i9 = i7 + i8;
                int i10 = eVar.f3518b + i8;
                int i11 = 8;
                if (z) {
                    for (int i12 = i6 - 1; i12 >= i9; i12--) {
                        if (this.f3506d.b(i12, i5)) {
                            if (!this.f3506d.a(i12, i5)) {
                                i11 = 4;
                            }
                            this.f3505c[i5] = (i12 << 5) | 16;
                            this.f3504b[i12] = (i5 << 5) | i11;
                            return true;
                        }
                    }
                    continue;
                } else {
                    for (int i13 = i3 - 1; i13 >= i10; i13--) {
                        if (this.f3506d.b(i5, i13)) {
                            if (!this.f3506d.a(i5, i13)) {
                                i11 = 4;
                            }
                            int i14 = i2 - 1;
                            this.f3504b[i14] = (i13 << 5) | 16;
                            this.f3505c[i13] = (i14 << 5) | i11;
                            return true;
                        }
                    }
                    continue;
                }
                i6 = eVar.f3517a;
                i3 = eVar.f3518b;
                i4--;
            }
            return false;
        }

        public final void b(int i2, int i3, int i4) {
            if (this.f3505c[i3 - 1] == 0) {
                a(i2, i3, i4, true);
            }
        }

        public final void b(List<c> list, z zVar, int i2, int i3, int i4) {
            if (!this.f3509g) {
                zVar.c(i2, i3);
                return;
            }
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                int i6 = i4 + i5;
                int i7 = this.f3504b[i6] & 31;
                if (i7 == 0) {
                    zVar.c(i2 + i5, 1);
                    for (c cVar : list) {
                        cVar.f3511b--;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = this.f3504b[i6] >> 5;
                    c a2 = a(list, i8, false);
                    zVar.a(i2 + i5, a2.f3511b - 1);
                    if (i7 == 4) {
                        zVar.a(a2.f3511b - 1, 1, this.f3506d.c(i6, i8));
                    }
                } else if (i7 == 16) {
                    list.add(new c(i6, i2 + i5, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i6 + " " + Long.toBinaryString((long) i7));
                }
            }
        }

        public void a(RecyclerView.a aVar) {
            a((z) new C0332b(aVar));
        }

        public void a(z zVar) {
            C0333c cVar;
            if (zVar instanceof C0333c) {
                cVar = (C0333c) zVar;
            } else {
                cVar = new C0333c(zVar);
            }
            ArrayList arrayList = new ArrayList();
            int i2 = this.f3507e;
            int i3 = this.f3508f;
            for (int size = this.f3503a.size() - 1; size >= 0; size--) {
                e eVar = this.f3503a.get(size);
                int i4 = eVar.f3519c;
                int i5 = eVar.f3517a + i4;
                int i6 = eVar.f3518b + i4;
                if (i5 < i2) {
                    b(arrayList, cVar, i5, i2 - i5, i5);
                }
                if (i6 < i3) {
                    a(arrayList, cVar, i5, i3 - i6, i6);
                }
                for (int i7 = i4 - 1; i7 >= 0; i7--) {
                    int[] iArr = this.f3504b;
                    int i8 = eVar.f3517a;
                    if ((iArr[i8 + i7] & 31) == 2) {
                        cVar.a(i8 + i7, 1, this.f3506d.c(i8 + i7, eVar.f3518b + i7));
                    }
                }
                i2 = eVar.f3517a;
                i3 = eVar.f3518b;
            }
            cVar.a();
        }

        public static c a(List<c> list, int i2, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                c cVar = list.get(size);
                if (cVar.f3510a == i2 && cVar.f3512c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f3511b += z ? 1 : -1;
                        size++;
                    }
                    return cVar;
                }
                size--;
            }
            return null;
        }

        public final void a(List<c> list, z zVar, int i2, int i3, int i4) {
            if (!this.f3509g) {
                zVar.b(i2, i3);
                return;
            }
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                int i6 = i4 + i5;
                int i7 = this.f3505c[i6] & 31;
                if (i7 == 0) {
                    zVar.b(i2, 1);
                    for (c cVar : list) {
                        cVar.f3511b++;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = this.f3505c[i6] >> 5;
                    zVar.a(a(list, i8, true).f3511b, i2);
                    if (i7 == 4) {
                        zVar.a(i2, 1, this.f3506d.c(i8, i6));
                    }
                } else if (i7 == 16) {
                    list.add(new c(i6, i2, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i6 + " " + Long.toBinaryString((long) i7));
                }
            }
        }
    }

    /* renamed from: b.y.a.o$c */
    /* compiled from: DiffUtil */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f3510a;

        /* renamed from: b  reason: collision with root package name */
        public int f3511b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3512c;

        public c(int i2, int i3, boolean z) {
            this.f3510a = i2;
            this.f3511b = i3;
            this.f3512c = z;
        }
    }

    /* renamed from: b.y.a.o$d */
    /* compiled from: DiffUtil */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        public int f3513a;

        /* renamed from: b  reason: collision with root package name */
        public int f3514b;

        /* renamed from: c  reason: collision with root package name */
        public int f3515c;

        /* renamed from: d  reason: collision with root package name */
        public int f3516d;

        public d() {
        }

        public d(int i2, int i3, int i4, int i5) {
            this.f3513a = i2;
            this.f3514b = i3;
            this.f3515c = i4;
            this.f3516d = i5;
        }
    }

    /* renamed from: b.y.a.o$e */
    /* compiled from: DiffUtil */
    static class e {

        /* renamed from: a  reason: collision with root package name */
        public int f3517a;

        /* renamed from: b  reason: collision with root package name */
        public int f3518b;

        /* renamed from: c  reason: collision with root package name */
        public int f3519c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f3520d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3521e;
    }

    public static b a(a aVar) {
        return a(aVar, true);
    }

    public static b a(a aVar, boolean z) {
        d dVar;
        int b2 = aVar.b();
        int a2 = aVar.a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new d(0, b2, 0, a2));
        int abs = Math.abs(b2 - a2) + b2 + a2;
        int i2 = abs * 2;
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            d dVar2 = (d) arrayList2.remove(arrayList2.size() - 1);
            e a3 = a(aVar, dVar2.f3513a, dVar2.f3514b, dVar2.f3515c, dVar2.f3516d, iArr, iArr2, abs);
            if (a3 != null) {
                if (a3.f3519c > 0) {
                    arrayList.add(a3);
                }
                a3.f3517a += dVar2.f3513a;
                a3.f3518b += dVar2.f3515c;
                if (arrayList3.isEmpty()) {
                    dVar = new d();
                } else {
                    dVar = (d) arrayList3.remove(arrayList3.size() - 1);
                }
                dVar.f3513a = dVar2.f3513a;
                dVar.f3515c = dVar2.f3515c;
                if (a3.f3521e) {
                    dVar.f3514b = a3.f3517a;
                    dVar.f3516d = a3.f3518b;
                } else if (a3.f3520d) {
                    dVar.f3514b = a3.f3517a - 1;
                    dVar.f3516d = a3.f3518b;
                } else {
                    dVar.f3514b = a3.f3517a;
                    dVar.f3516d = a3.f3518b - 1;
                }
                arrayList2.add(dVar);
                if (!a3.f3521e) {
                    int i3 = a3.f3517a;
                    int i4 = a3.f3519c;
                    dVar2.f3513a = i3 + i4;
                    dVar2.f3515c = a3.f3518b + i4;
                } else if (a3.f3520d) {
                    int i5 = a3.f3517a;
                    int i6 = a3.f3519c;
                    dVar2.f3513a = i5 + i6 + 1;
                    dVar2.f3515c = a3.f3518b + i6;
                } else {
                    int i7 = a3.f3517a;
                    int i8 = a3.f3519c;
                    dVar2.f3513a = i7 + i8;
                    dVar2.f3515c = a3.f3518b + i8 + 1;
                }
                arrayList2.add(dVar2);
            } else {
                arrayList3.add(dVar2);
            }
        }
        Collections.sort(arrayList, f3502a);
        b bVar = new b(aVar, arrayList, iArr, iArr2, z);
        return bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r1[r13 - 1] < r1[(r26 + r12) + r5]) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00ba, code lost:
        if (r2[r13 - 1] < r2[(r26 + r12) + 1]) goto L_0x00c7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b.y.a.C0345o.e a(b.y.a.C0345o.a r19, int r20, int r21, int r22, int r23, int[] r24, int[] r25, int r26) {
        /*
            r0 = r19
            r1 = r24
            r2 = r25
            int r3 = r21 - r20
            int r4 = r23 - r22
            r5 = 1
            if (r3 < r5) goto L_0x0133
            if (r4 >= r5) goto L_0x0011
            goto L_0x0133
        L_0x0011:
            int r6 = r3 - r4
            int r7 = r3 + r4
            int r7 = r7 + r5
            int r7 = r7 / 2
            int r8 = r26 - r7
            int r8 = r8 - r5
            int r9 = r26 + r7
            int r9 = r9 + r5
            r10 = 0
            java.util.Arrays.fill(r1, r8, r9, r10)
            int r8 = r8 + r6
            int r9 = r9 + r6
            java.util.Arrays.fill(r2, r8, r9, r3)
            int r8 = r6 % 2
            if (r8 == 0) goto L_0x002d
            r8 = 1
            goto L_0x002e
        L_0x002d:
            r8 = 0
        L_0x002e:
            r9 = 0
        L_0x002f:
            if (r9 > r7) goto L_0x012b
            int r11 = -r9
            r12 = r11
        L_0x0033:
            if (r12 > r9) goto L_0x00a2
            if (r12 == r11) goto L_0x004d
            if (r12 == r9) goto L_0x0045
            int r13 = r26 + r12
            int r14 = r13 + -1
            r14 = r1[r14]
            int r13 = r13 + r5
            r13 = r1[r13]
            if (r14 >= r13) goto L_0x0045
            goto L_0x004d
        L_0x0045:
            int r13 = r26 + r12
            int r13 = r13 - r5
            r13 = r1[r13]
            int r13 = r13 + r5
            r14 = 1
            goto L_0x0053
        L_0x004d:
            int r13 = r26 + r12
            int r13 = r13 + r5
            r13 = r1[r13]
            r14 = 0
        L_0x0053:
            int r15 = r13 - r12
        L_0x0055:
            if (r13 >= r3) goto L_0x006a
            if (r15 >= r4) goto L_0x006a
            int r10 = r20 + r13
            int r5 = r22 + r15
            boolean r5 = r0.b(r10, r5)
            if (r5 == 0) goto L_0x006a
            int r13 = r13 + 1
            int r15 = r15 + 1
            r5 = 1
            r10 = 0
            goto L_0x0055
        L_0x006a:
            int r5 = r26 + r12
            r1[r5] = r13
            if (r8 == 0) goto L_0x009c
            int r10 = r6 - r9
            r13 = 1
            int r10 = r10 + r13
            if (r12 < r10) goto L_0x009c
            int r10 = r6 + r9
            int r10 = r10 - r13
            if (r12 > r10) goto L_0x009c
            r10 = r1[r5]
            r13 = r2[r5]
            if (r10 < r13) goto L_0x009c
            b.y.a.o$e r0 = new b.y.a.o$e
            r0.<init>()
            r3 = r2[r5]
            r0.f3517a = r3
            int r3 = r0.f3517a
            int r3 = r3 - r12
            r0.f3518b = r3
            r1 = r1[r5]
            r2 = r2[r5]
            int r1 = r1 - r2
            r0.f3519c = r1
            r0.f3520d = r14
            r5 = 0
            r0.f3521e = r5
            return r0
        L_0x009c:
            r5 = 0
            int r12 = r12 + 2
            r5 = 1
            r10 = 0
            goto L_0x0033
        L_0x00a2:
            r5 = 0
            r10 = r11
        L_0x00a4:
            if (r10 > r9) goto L_0x0120
            int r12 = r10 + r6
            int r13 = r9 + r6
            if (r12 == r13) goto L_0x00c6
            int r13 = r11 + r6
            if (r12 == r13) goto L_0x00bd
            int r13 = r26 + r12
            int r14 = r13 + -1
            r14 = r2[r14]
            r15 = 1
            int r13 = r13 + r15
            r13 = r2[r13]
            if (r14 >= r13) goto L_0x00be
            goto L_0x00c7
        L_0x00bd:
            r15 = 1
        L_0x00be:
            int r13 = r26 + r12
            int r13 = r13 + r15
            r13 = r2[r13]
            int r13 = r13 - r15
            r14 = 1
            goto L_0x00cd
        L_0x00c6:
            r15 = 1
        L_0x00c7:
            int r13 = r26 + r12
            int r13 = r13 - r15
            r13 = r2[r13]
            r14 = 0
        L_0x00cd:
            int r16 = r13 - r12
        L_0x00cf:
            if (r13 <= 0) goto L_0x00ec
            if (r16 <= 0) goto L_0x00ec
            int r17 = r20 + r13
            int r5 = r17 + -1
            int r17 = r22 + r16
            r18 = r3
            int r3 = r17 + -1
            boolean r3 = r0.b(r5, r3)
            if (r3 == 0) goto L_0x00ee
            int r13 = r13 + -1
            int r16 = r16 + -1
            r3 = r18
            r5 = 0
            r15 = 1
            goto L_0x00cf
        L_0x00ec:
            r18 = r3
        L_0x00ee:
            int r3 = r26 + r12
            r2[r3] = r13
            if (r8 != 0) goto L_0x0119
            if (r12 < r11) goto L_0x0119
            if (r12 > r9) goto L_0x0119
            r5 = r1[r3]
            r13 = r2[r3]
            if (r5 < r13) goto L_0x0119
            b.y.a.o$e r0 = new b.y.a.o$e
            r0.<init>()
            r4 = r2[r3]
            r0.f3517a = r4
            int r4 = r0.f3517a
            int r4 = r4 - r12
            r0.f3518b = r4
            r1 = r1[r3]
            r2 = r2[r3]
            int r1 = r1 - r2
            r0.f3519c = r1
            r0.f3520d = r14
            r3 = 1
            r0.f3521e = r3
            return r0
        L_0x0119:
            r3 = 1
            int r10 = r10 + 2
            r3 = r18
            r5 = 0
            goto L_0x00a4
        L_0x0120:
            r18 = r3
            r3 = 1
            int r9 = r9 + 1
            r3 = r18
            r5 = 1
            r10 = 0
            goto L_0x002f
        L_0x012b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."
            r0.<init>(r1)
            throw r0
        L_0x0133:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.y.a.C0345o.a(b.y.a.o$a, int, int, int, int, int[], int[], int):b.y.a.o$e");
    }
}
