package com.google.zxing.pdf417.a;

import com.google.zxing.common.b;
import com.google.zxing.h;
import com.google.zxing.m;

final class c {

    /* renamed from: a  reason: collision with root package name */
    final b f4369a;

    /* renamed from: b  reason: collision with root package name */
    final m f4370b;
    final m c;
    final m d;
    final m e;
    final int f;
    final int g;
    final int h;
    final int i;

    c(b bVar, m mVar, m mVar2, m mVar3, m mVar4) throws h {
        boolean z = false;
        boolean z2 = mVar == null || mVar2 == null;
        z = (mVar3 == null || mVar4 == null) ? true : z;
        if (!z2 || !z) {
            if (z2) {
                mVar = new m(0.0f, mVar3.getY());
                mVar2 = new m(0.0f, mVar4.getY());
            } else if (z) {
                mVar3 = new m((float) (bVar.getWidth() - 1), mVar.getY());
                mVar4 = new m((float) (bVar.getWidth() - 1), mVar2.getY());
            }
            this.f4369a = bVar;
            this.f4370b = mVar;
            this.c = mVar2;
            this.d = mVar3;
            this.e = mVar4;
            this.f = (int) Math.min(mVar.getX(), mVar2.getX());
            this.g = (int) Math.max(mVar3.getX(), mVar4.getX());
            this.h = (int) Math.min(mVar.getY(), mVar3.getY());
            this.i = (int) Math.max(mVar2.getY(), mVar4.getY());
            return;
        }
        throw h.getNotFoundInstance();
    }

    c(c cVar) {
        this.f4369a = cVar.f4369a;
        this.f4370b = cVar.f4370b;
        this.c = cVar.c;
        this.d = cVar.d;
        this.e = cVar.e;
        this.f = cVar.f;
        this.g = cVar.g;
        this.h = cVar.h;
        this.i = cVar.i;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.pdf417.a.c a(int r13, int r14, boolean r15) throws com.google.zxing.h {
        /*
            r12 = this;
            com.google.zxing.m r0 = r12.f4370b
            com.google.zxing.m r1 = r12.c
            com.google.zxing.m r2 = r12.d
            com.google.zxing.m r3 = r12.e
            if (r13 <= 0) goto L_0x0029
            if (r15 == 0) goto L_0x000e
            r4 = r0
            goto L_0x000f
        L_0x000e:
            r4 = r2
        L_0x000f:
            float r5 = r4.getY()
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L_0x0018
            r5 = 0
        L_0x0018:
            com.google.zxing.m r13 = new com.google.zxing.m
            float r4 = r4.getX()
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L_0x0026
            r8 = r13
            goto L_0x002a
        L_0x0026:
            r10 = r13
            r8 = r0
            goto L_0x002b
        L_0x0029:
            r8 = r0
        L_0x002a:
            r10 = r2
        L_0x002b:
            if (r14 <= 0) goto L_0x005b
            if (r15 == 0) goto L_0x0032
            com.google.zxing.m r13 = r12.c
            goto L_0x0034
        L_0x0032:
            com.google.zxing.m r13 = r12.e
        L_0x0034:
            float r0 = r13.getY()
            int r0 = (int) r0
            int r0 = r0 + r14
            com.google.zxing.common.b r14 = r12.f4369a
            int r14 = r14.getHeight()
            if (r0 < r14) goto L_0x004a
            com.google.zxing.common.b r14 = r12.f4369a
            int r14 = r14.getHeight()
            int r0 = r14 + -1
        L_0x004a:
            com.google.zxing.m r14 = new com.google.zxing.m
            float r13 = r13.getX()
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L_0x0058
            r9 = r14
            goto L_0x005c
        L_0x0058:
            r11 = r14
            r9 = r1
            goto L_0x005d
        L_0x005b:
            r9 = r1
        L_0x005c:
            r11 = r3
        L_0x005d:
            com.google.zxing.pdf417.a.c r13 = new com.google.zxing.pdf417.a.c
            com.google.zxing.common.b r7 = r12.f4369a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.c.a(int, int, boolean):com.google.zxing.pdf417.a.c");
    }
}
