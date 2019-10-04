package b.H.a.d;

import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import b.H.a.b;
import b.H.a.c.o;
import b.H.a.e;
import b.H.a.m;
import b.H.d;
import b.H.f;
import b.H.i;
import java.util.List;

/* compiled from: EnqueueRunnable */
public class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1542a = f.a("EnqueueRunnable");

    /* renamed from: b  reason: collision with root package name */
    public final b.H.a.f f1543b;

    /* renamed from: c  reason: collision with root package name */
    public final b f1544c = new b();

    public d(b.H.a.f fVar) {
        this.f1543b = fVar;
    }

    public boolean a() {
        WorkDatabase g2 = this.f1543b.g().g();
        g2.c();
        try {
            boolean b2 = b(this.f1543b);
            g2.o();
            return b2;
        } finally {
            g2.e();
        }
    }

    public i b() {
        return this.f1544c;
    }

    public void c() {
        m g2 = this.f1543b.g();
        e.a(g2.c(), g2.g(), g2.f());
    }

    public void run() {
        try {
            if (!this.f1543b.h()) {
                if (a()) {
                    f.a(this.f1543b.g().b(), RescheduleReceiver.class, true);
                    c();
                }
                this.f1544c.a(i.f1647a);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", new Object[]{this.f1543b}));
        } catch (Throwable th) {
            this.f1544c.a(new i.a.C0019a(th));
        }
    }

    public static boolean b(b.H.a.f fVar) {
        List<b.H.a.f> e2 = fVar.e();
        boolean z = false;
        if (e2 != null) {
            boolean z2 = false;
            for (b.H.a.f next : e2) {
                if (!next.i()) {
                    z2 |= b(next);
                } else {
                    f.a().e(f1542a, String.format("Already enqueued work ids (%s).", new Object[]{TextUtils.join(", ", next.c())}), new Throwable[0]);
                }
            }
            z = z2;
        }
        return a(fVar) | z;
    }

    public static boolean a(b.H.a.f fVar) {
        boolean a2 = a(fVar.g(), fVar.f(), (String[]) b.H.a.f.a(fVar).toArray(new String[0]), fVar.d(), fVar.b());
        fVar.j();
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x0176  */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x0181  */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x01a8 A[LOOP:6: B:109:0x01a2->B:111:0x01a8, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x01c1  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x01d1 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x011f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(b.H.a.m r19, java.util.List<? extends b.H.n> r20, java.lang.String[] r21, java.lang.String r22, androidx.work.ExistingWorkPolicy r23) {
        /*
            r0 = r19
            r1 = r21
            r2 = r22
            r3 = r23
            long r4 = java.lang.System.currentTimeMillis()
            androidx.work.impl.WorkDatabase r6 = r19.g()
            r8 = 1
            if (r1 == 0) goto L_0x0018
            int r9 = r1.length
            if (r9 <= 0) goto L_0x0018
            r9 = 1
            goto L_0x0019
        L_0x0018:
            r9 = 0
        L_0x0019:
            if (r9 == 0) goto L_0x005d
            int r10 = r1.length
            r11 = 0
            r12 = 1
            r13 = 0
            r14 = 0
        L_0x0020:
            if (r11 >= r10) goto L_0x0060
            r15 = r1[r11]
            b.H.a.c.p r7 = r6.v()
            b.H.a.c.o r7 = r7.d(r15)
            if (r7 != 0) goto L_0x0045
            b.H.f r0 = b.H.f.a()
            java.lang.String r1 = f1542a
            java.lang.Object[] r2 = new java.lang.Object[r8]
            r3 = 0
            r2[r3] = r15
            java.lang.String r4 = "Prerequisite %s doesn't exist; not enqueuing"
            java.lang.String r2 = java.lang.String.format(r4, r2)
            java.lang.Throwable[] r4 = new java.lang.Throwable[r3]
            r0.b(r1, r2, r4)
            return r3
        L_0x0045:
            androidx.work.WorkInfo$State r7 = r7.f1467d
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.SUCCEEDED
            if (r7 != r15) goto L_0x004d
            r15 = 1
            goto L_0x004e
        L_0x004d:
            r15 = 0
        L_0x004e:
            r12 = r12 & r15
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.FAILED
            if (r7 != r15) goto L_0x0055
            r13 = 1
            goto L_0x005a
        L_0x0055:
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.CANCELLED
            if (r7 != r15) goto L_0x005a
            r14 = 1
        L_0x005a:
            int r11 = r11 + 1
            goto L_0x0020
        L_0x005d:
            r12 = 1
            r13 = 0
            r14 = 0
        L_0x0060:
            boolean r7 = android.text.TextUtils.isEmpty(r22)
            r7 = r7 ^ r8
            if (r7 == 0) goto L_0x006b
            if (r9 != 0) goto L_0x006b
            r10 = 1
            goto L_0x006c
        L_0x006b:
            r10 = 0
        L_0x006c:
            if (r10 == 0) goto L_0x00cc
            b.H.a.c.p r10 = r6.v()
            java.util.List r10 = r10.a((java.lang.String) r2)
            boolean r11 = r10.isEmpty()
            if (r11 != 0) goto L_0x00cc
            androidx.work.ExistingWorkPolicy r11 = androidx.work.ExistingWorkPolicy.APPEND
            if (r3 != r11) goto L_0x00ce
            b.H.a.c.b r3 = r6.p()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.Iterator r10 = r10.iterator()
        L_0x008d:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto L_0x00c0
            java.lang.Object r11 = r10.next()
            b.H.a.c.o$a r11 = (b.H.a.c.o.a) r11
            java.lang.String r15 = r11.f1476a
            boolean r15 = r3.c(r15)
            if (r15 != 0) goto L_0x00be
            androidx.work.WorkInfo$State r15 = r11.f1477b
            androidx.work.WorkInfo$State r8 = androidx.work.WorkInfo.State.SUCCEEDED
            if (r15 != r8) goto L_0x00a9
            r8 = 1
            goto L_0x00aa
        L_0x00a9:
            r8 = 0
        L_0x00aa:
            r8 = r8 & r12
            androidx.work.WorkInfo$State r12 = r11.f1477b
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.FAILED
            if (r12 != r15) goto L_0x00b3
            r13 = 1
            goto L_0x00b8
        L_0x00b3:
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.CANCELLED
            if (r12 != r15) goto L_0x00b8
            r14 = 1
        L_0x00b8:
            java.lang.String r11 = r11.f1476a
            r9.add(r11)
            r12 = r8
        L_0x00be:
            r8 = 1
            goto L_0x008d
        L_0x00c0:
            java.lang.Object[] r1 = r9.toArray(r1)
            java.lang.String[] r1 = (java.lang.String[]) r1
            int r3 = r1.length
            if (r3 <= 0) goto L_0x00cb
            r9 = 1
            goto L_0x00cc
        L_0x00cb:
            r9 = 0
        L_0x00cc:
            r3 = 0
            goto L_0x0113
        L_0x00ce:
            androidx.work.ExistingWorkPolicy r8 = androidx.work.ExistingWorkPolicy.KEEP
            if (r3 != r8) goto L_0x00ee
            java.util.Iterator r3 = r10.iterator()
        L_0x00d6:
            boolean r8 = r3.hasNext()
            if (r8 == 0) goto L_0x00ee
            java.lang.Object r8 = r3.next()
            b.H.a.c.o$a r8 = (b.H.a.c.o.a) r8
            androidx.work.WorkInfo$State r8 = r8.f1477b
            androidx.work.WorkInfo$State r11 = androidx.work.WorkInfo.State.ENQUEUED
            if (r8 == r11) goto L_0x00ec
            androidx.work.WorkInfo$State r11 = androidx.work.WorkInfo.State.RUNNING
            if (r8 != r11) goto L_0x00d6
        L_0x00ec:
            r3 = 0
            return r3
        L_0x00ee:
            r3 = 0
            b.H.a.d.c r8 = b.H.a.d.c.a(r2, r0, r3)
            r8.run()
            b.H.a.c.p r8 = r6.v()
            java.util.Iterator r10 = r10.iterator()
        L_0x00fe:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto L_0x0110
            java.lang.Object r11 = r10.next()
            b.H.a.c.o$a r11 = (b.H.a.c.o.a) r11
            java.lang.String r11 = r11.f1476a
            r8.delete(r11)
            goto L_0x00fe
        L_0x0110:
            r16 = 1
            goto L_0x0115
        L_0x0113:
            r16 = 0
        L_0x0115:
            java.util.Iterator r8 = r20.iterator()
        L_0x0119:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto L_0x01d6
            java.lang.Object r10 = r8.next()
            b.H.n r10 = (b.H.n) r10
            b.H.a.c.o r11 = r10.c()
            if (r9 == 0) goto L_0x0140
            if (r12 != 0) goto L_0x0140
            if (r13 == 0) goto L_0x0134
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.FAILED
            r11.f1467d = r15
            goto L_0x0148
        L_0x0134:
            if (r14 == 0) goto L_0x013b
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.CANCELLED
            r11.f1467d = r15
            goto L_0x0148
        L_0x013b:
            androidx.work.WorkInfo$State r15 = androidx.work.WorkInfo.State.BLOCKED
            r11.f1467d = r15
            goto L_0x0148
        L_0x0140:
            boolean r15 = r11.d()
            if (r15 != 0) goto L_0x014b
            r11.p = r4
        L_0x0148:
            r17 = r4
            goto L_0x0151
        L_0x014b:
            r17 = r4
            r3 = 0
            r11.p = r3
        L_0x0151:
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 23
            if (r3 < r4) goto L_0x015f
            r4 = 25
            if (r3 > r4) goto L_0x015f
            a((b.H.a.c.o) r11)
            goto L_0x0170
        L_0x015f:
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 22
            if (r3 > r4) goto L_0x0170
            java.lang.String r3 = "androidx.work.impl.background.gcm.GcmScheduler"
            boolean r3 = a(r0, r3)
            if (r3 == 0) goto L_0x0170
            a((b.H.a.c.o) r11)
        L_0x0170:
            androidx.work.WorkInfo$State r3 = r11.f1467d
            androidx.work.WorkInfo$State r4 = androidx.work.WorkInfo.State.ENQUEUED
            if (r3 != r4) goto L_0x0178
            r16 = 1
        L_0x0178:
            b.H.a.c.p r3 = r6.v()
            r3.a((b.H.a.c.o) r11)
            if (r9 == 0) goto L_0x019a
            int r3 = r1.length
            r4 = 0
        L_0x0183:
            if (r4 >= r3) goto L_0x019a
            r5 = r1[r4]
            b.H.a.c.a r11 = new b.H.a.c.a
            java.lang.String r15 = r10.a()
            r11.<init>(r15, r5)
            b.H.a.c.b r5 = r6.p()
            r5.a((b.H.a.c.C0180a) r11)
            int r4 = r4 + 1
            goto L_0x0183
        L_0x019a:
            java.util.Set r3 = r10.b()
            java.util.Iterator r3 = r3.iterator()
        L_0x01a2:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x01bf
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            b.H.a.c.B r5 = r6.w()
            b.H.a.c.A r11 = new b.H.a.c.A
            java.lang.String r15 = r10.a()
            r11.<init>(r4, r15)
            r5.a((b.H.a.c.A) r11)
            goto L_0x01a2
        L_0x01bf:
            if (r7 == 0) goto L_0x01d1
            b.H.a.c.k r3 = r6.u()
            b.H.a.c.j r4 = new b.H.a.c.j
            java.lang.String r5 = r10.a()
            r4.<init>(r2, r5)
            r3.a(r4)
        L_0x01d1:
            r4 = r17
            r3 = 0
            goto L_0x0119
        L_0x01d6:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: b.H.a.d.d.a(b.H.a.m, java.util.List, java.lang.String[], java.lang.String, androidx.work.ExistingWorkPolicy):boolean");
    }

    public static void a(o oVar) {
        b.H.b bVar = oVar.f1475l;
        if (bVar.f() || bVar.i()) {
            String str = oVar.f1468e;
            d.a aVar = new d.a();
            aVar.a(oVar.f1470g);
            aVar.a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            oVar.f1468e = ConstraintTrackingWorker.class.getName();
            oVar.f1470g = aVar.a();
        }
    }

    public static boolean a(m mVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            for (b.H.a.d dVar : mVar.f()) {
                if (cls.isAssignableFrom(dVar.getClass())) {
                    return true;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }
}
