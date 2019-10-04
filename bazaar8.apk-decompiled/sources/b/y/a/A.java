package b.y.a;

import b.y.a.C0331a;
import java.util.List;

/* compiled from: OpReorderer */
public class A {

    /* renamed from: a  reason: collision with root package name */
    public final a f3406a;

    /* compiled from: OpReorderer */
    interface a {
        C0331a.b a(int i2, int i3, int i4, Object obj);

        void a(C0331a.b bVar);
    }

    public A(a aVar) {
        this.f3406a = aVar;
    }

    public final void a(List<C0331a.b> list, int i2, int i3) {
        C0331a.b bVar = list.get(i2);
        C0331a.b bVar2 = list.get(i3);
        int i4 = bVar2.f3443a;
        if (i4 == 1) {
            a(list, i2, bVar, i3, bVar2);
        } else if (i4 == 2) {
            b(list, i2, bVar, i3, bVar2);
        } else if (i4 == 4) {
            c(list, i2, bVar, i3, bVar2);
        }
    }

    public void b(List<C0331a.b> list) {
        while (true) {
            int a2 = a(list);
            if (a2 != -1) {
                a(list, a2, a2 + 1);
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(java.util.List<b.y.a.C0331a.b> r9, int r10, b.y.a.C0331a.b r11, int r12, b.y.a.C0331a.b r13) {
        /*
            r8 = this;
            int r0 = r11.f3446d
            int r1 = r13.f3444b
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto L_0x000d
            int r1 = r1 - r4
            r13.f3444b = r1
            goto L_0x0020
        L_0x000d:
            int r5 = r13.f3446d
            int r1 = r1 + r5
            if (r0 >= r1) goto L_0x0020
            int r5 = r5 - r4
            r13.f3446d = r5
            b.y.a.A$a r0 = r8.f3406a
            int r1 = r11.f3444b
            java.lang.Object r5 = r13.f3445c
            b.y.a.a$b r0 = r0.a(r2, r1, r4, r5)
            goto L_0x0021
        L_0x0020:
            r0 = r3
        L_0x0021:
            int r1 = r11.f3444b
            int r5 = r13.f3444b
            if (r1 > r5) goto L_0x002b
            int r5 = r5 + r4
            r13.f3444b = r5
            goto L_0x0041
        L_0x002b:
            int r6 = r13.f3446d
            int r7 = r5 + r6
            if (r1 >= r7) goto L_0x0041
            int r5 = r5 + r6
            int r5 = r5 - r1
            b.y.a.A$a r3 = r8.f3406a
            int r1 = r1 + r4
            java.lang.Object r4 = r13.f3445c
            b.y.a.a$b r3 = r3.a(r2, r1, r5, r4)
            int r1 = r13.f3446d
            int r1 = r1 - r5
            r13.f3446d = r1
        L_0x0041:
            r9.set(r12, r11)
            int r11 = r13.f3446d
            if (r11 <= 0) goto L_0x004c
            r9.set(r10, r13)
            goto L_0x0054
        L_0x004c:
            r9.remove(r10)
            b.y.a.A$a r11 = r8.f3406a
            r11.a(r13)
        L_0x0054:
            if (r0 == 0) goto L_0x0059
            r9.add(r10, r0)
        L_0x0059:
            if (r3 == 0) goto L_0x005e
            r9.add(r10, r3)
        L_0x005e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.y.a.A.c(java.util.List, int, b.y.a.a$b, int, b.y.a.a$b):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0077  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(java.util.List<b.y.a.C0331a.b> r10, int r11, b.y.a.C0331a.b r12, int r13, b.y.a.C0331a.b r14) {
        /*
            r9 = this;
            int r0 = r12.f3444b
            int r1 = r12.f3446d
            r2 = 0
            r3 = 1
            if (r0 >= r1) goto L_0x0015
            int r4 = r14.f3444b
            if (r4 != r0) goto L_0x0013
            int r4 = r14.f3446d
            int r1 = r1 - r0
            if (r4 != r1) goto L_0x0013
            r0 = 0
            goto L_0x0021
        L_0x0013:
            r0 = 0
            goto L_0x0024
        L_0x0015:
            int r4 = r14.f3444b
            int r5 = r1 + 1
            if (r4 != r5) goto L_0x0023
            int r4 = r14.f3446d
            int r0 = r0 - r1
            if (r4 != r0) goto L_0x0023
            r0 = 1
        L_0x0021:
            r2 = 1
            goto L_0x0024
        L_0x0023:
            r0 = 1
        L_0x0024:
            int r1 = r12.f3446d
            int r4 = r14.f3444b
            r5 = 2
            if (r1 >= r4) goto L_0x002f
            int r4 = r4 - r3
            r14.f3444b = r4
            goto L_0x0048
        L_0x002f:
            int r6 = r14.f3446d
            int r4 = r4 + r6
            if (r1 >= r4) goto L_0x0048
            int r6 = r6 - r3
            r14.f3446d = r6
            r12.f3443a = r5
            r12.f3446d = r3
            int r11 = r14.f3446d
            if (r11 != 0) goto L_0x0047
            r10.remove(r13)
            b.y.a.A$a r10 = r9.f3406a
            r10.a(r14)
        L_0x0047:
            return
        L_0x0048:
            int r1 = r12.f3444b
            int r4 = r14.f3444b
            r6 = 0
            if (r1 > r4) goto L_0x0053
            int r4 = r4 + r3
            r14.f3444b = r4
            goto L_0x0069
        L_0x0053:
            int r7 = r14.f3446d
            int r8 = r4 + r7
            if (r1 >= r8) goto L_0x0069
            int r4 = r4 + r7
            int r4 = r4 - r1
            b.y.a.A$a r7 = r9.f3406a
            int r1 = r1 + r3
            b.y.a.a$b r6 = r7.a(r5, r1, r4, r6)
            int r1 = r12.f3444b
            int r3 = r14.f3444b
            int r1 = r1 - r3
            r14.f3446d = r1
        L_0x0069:
            if (r2 == 0) goto L_0x0077
            r10.set(r11, r14)
            r10.remove(r13)
            b.y.a.A$a r10 = r9.f3406a
            r10.a(r12)
            return
        L_0x0077:
            if (r0 == 0) goto L_0x00a8
            if (r6 == 0) goto L_0x0091
            int r0 = r12.f3444b
            int r1 = r6.f3444b
            if (r0 <= r1) goto L_0x0086
            int r1 = r6.f3446d
            int r0 = r0 - r1
            r12.f3444b = r0
        L_0x0086:
            int r0 = r12.f3446d
            int r1 = r6.f3444b
            if (r0 <= r1) goto L_0x0091
            int r1 = r6.f3446d
            int r0 = r0 - r1
            r12.f3446d = r0
        L_0x0091:
            int r0 = r12.f3444b
            int r1 = r14.f3444b
            if (r0 <= r1) goto L_0x009c
            int r1 = r14.f3446d
            int r0 = r0 - r1
            r12.f3444b = r0
        L_0x009c:
            int r0 = r12.f3446d
            int r1 = r14.f3444b
            if (r0 <= r1) goto L_0x00d6
            int r1 = r14.f3446d
            int r0 = r0 - r1
            r12.f3446d = r0
            goto L_0x00d6
        L_0x00a8:
            if (r6 == 0) goto L_0x00c0
            int r0 = r12.f3444b
            int r1 = r6.f3444b
            if (r0 < r1) goto L_0x00b5
            int r1 = r6.f3446d
            int r0 = r0 - r1
            r12.f3444b = r0
        L_0x00b5:
            int r0 = r12.f3446d
            int r1 = r6.f3444b
            if (r0 < r1) goto L_0x00c0
            int r1 = r6.f3446d
            int r0 = r0 - r1
            r12.f3446d = r0
        L_0x00c0:
            int r0 = r12.f3444b
            int r1 = r14.f3444b
            if (r0 < r1) goto L_0x00cb
            int r1 = r14.f3446d
            int r0 = r0 - r1
            r12.f3444b = r0
        L_0x00cb:
            int r0 = r12.f3446d
            int r1 = r14.f3444b
            if (r0 < r1) goto L_0x00d6
            int r1 = r14.f3446d
            int r0 = r0 - r1
            r12.f3446d = r0
        L_0x00d6:
            r10.set(r11, r14)
            int r14 = r12.f3444b
            int r0 = r12.f3446d
            if (r14 == r0) goto L_0x00e3
            r10.set(r13, r12)
            goto L_0x00e6
        L_0x00e3:
            r10.remove(r13)
        L_0x00e6:
            if (r6 == 0) goto L_0x00eb
            r10.add(r11, r6)
        L_0x00eb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.y.a.A.b(java.util.List, int, b.y.a.a$b, int, b.y.a.a$b):void");
    }

    public final void a(List<C0331a.b> list, int i2, C0331a.b bVar, int i3, C0331a.b bVar2) {
        int i4 = bVar.f3446d < bVar2.f3444b ? -1 : 0;
        if (bVar.f3444b < bVar2.f3444b) {
            i4++;
        }
        int i5 = bVar2.f3444b;
        int i6 = bVar.f3444b;
        if (i5 <= i6) {
            bVar.f3444b = i6 + bVar2.f3446d;
        }
        int i7 = bVar2.f3444b;
        int i8 = bVar.f3446d;
        if (i7 <= i8) {
            bVar.f3446d = i8 + bVar2.f3446d;
        }
        bVar2.f3444b += i4;
        list.set(i2, bVar2);
        list.set(i3, bVar);
    }

    public final int a(List<C0331a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f3443a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }
}
