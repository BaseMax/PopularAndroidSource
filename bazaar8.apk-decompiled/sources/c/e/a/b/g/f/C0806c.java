package c.e.a.b.g.f;

import android.content.Context;
import android.os.Bundle;
import c.e.a.b.g.f.C0802b;

/* renamed from: c.e.a.b.g.f.c  reason: case insensitive filesystem */
public final class C0806c extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f10352e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f10353f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Context f10354g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Bundle f10355h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ C0802b f10356i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0806c(C0802b bVar, String str, String str2, Context context, Bundle bundle) {
        super(bVar);
        this.f10356i = bVar;
        this.f10352e = str;
        this.f10353f = str2;
        this.f10354g = context;
        this.f10355h = bundle;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0072, code lost:
        if (r4 < r3) goto L_0x0074;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0054 A[Catch:{ RemoteException -> 0x009e }] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0060 A[Catch:{ RemoteException -> 0x009e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r14 = this;
            r0 = 0
            r1 = 1
            c.e.a.b.g.f.b r2 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ RemoteException -> 0x009e }
            r3.<init>()     // Catch:{ RemoteException -> 0x009e }
            java.util.Map unused = r2.f10334j = r3     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.b r2 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r3 = r14.f10352e     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r4 = r14.f10353f     // Catch:{ RemoteException -> 0x009e }
            boolean r2 = c.e.a.b.g.f.C0802b.b(r3, r4)     // Catch:{ RemoteException -> 0x009e }
            r3 = 0
            if (r2 == 0) goto L_0x0027
            java.lang.String r3 = r14.f10353f     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r2 = r14.f10352e     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.b r4 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r4 = r4.f10330f     // Catch:{ RemoteException -> 0x009e }
            r10 = r2
            r11 = r3
            r9 = r4
            goto L_0x002a
        L_0x0027:
            r9 = r3
            r10 = r9
            r11 = r10
        L_0x002a:
            android.content.Context r2 = r14.f10354g     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.C0802b.e(r2)     // Catch:{ RemoteException -> 0x009e }
            java.lang.Boolean r2 = c.e.a.b.g.f.C0802b.f10327c     // Catch:{ RemoteException -> 0x009e }
            boolean r2 = r2.booleanValue()     // Catch:{ RemoteException -> 0x009e }
            if (r2 != 0) goto L_0x003e
            if (r10 == 0) goto L_0x003c
            goto L_0x003e
        L_0x003c:
            r2 = 0
            goto L_0x003f
        L_0x003e:
            r2 = 1
        L_0x003f:
            c.e.a.b.g.f.b r3 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.b r4 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            android.content.Context r5 = r14.f10354g     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.cd r4 = r4.a((android.content.Context) r5, (boolean) r2)     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.cd unused = r3.n = r4     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.b r3 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.cd r3 = r3.n     // Catch:{ RemoteException -> 0x009e }
            if (r3 != 0) goto L_0x0060
            c.e.a.b.g.f.b r2 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r2 = r2.f10330f     // Catch:{ RemoteException -> 0x009e }
            java.lang.String r3 = "Failed to connect to measurement client."
            android.util.Log.w(r2, r3)     // Catch:{ RemoteException -> 0x009e }
            return
        L_0x0060:
            android.content.Context r3 = r14.f10354g     // Catch:{ RemoteException -> 0x009e }
            int r3 = c.e.a.b.g.f.C0802b.d((android.content.Context) r3)     // Catch:{ RemoteException -> 0x009e }
            android.content.Context r4 = r14.f10354g     // Catch:{ RemoteException -> 0x009e }
            int r4 = c.e.a.b.g.f.C0802b.c((android.content.Context) r4)     // Catch:{ RemoteException -> 0x009e }
            if (r2 == 0) goto L_0x0079
            int r2 = java.lang.Math.max(r3, r4)     // Catch:{ RemoteException -> 0x009e }
            if (r4 >= r3) goto L_0x0076
        L_0x0074:
            r3 = 1
            goto L_0x0077
        L_0x0076:
            r3 = 0
        L_0x0077:
            r8 = r3
            goto L_0x0081
        L_0x0079:
            if (r3 <= 0) goto L_0x007d
            r2 = r3
            goto L_0x007e
        L_0x007d:
            r2 = r4
        L_0x007e:
            if (r3 <= 0) goto L_0x0076
            goto L_0x0074
        L_0x0081:
            com.google.android.gms.internal.measurement.zzy r13 = new com.google.android.gms.internal.measurement.zzy     // Catch:{ RemoteException -> 0x009e }
            r4 = 15300(0x3bc4, double:7.559E-320)
            long r6 = (long) r2     // Catch:{ RemoteException -> 0x009e }
            android.os.Bundle r12 = r14.f10355h     // Catch:{ RemoteException -> 0x009e }
            r3 = r13
            r3.<init>(r4, r6, r8, r9, r10, r11, r12)     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.b r2 = r14.f10356i     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.g.f.cd r2 = r2.n     // Catch:{ RemoteException -> 0x009e }
            android.content.Context r3 = r14.f10354g     // Catch:{ RemoteException -> 0x009e }
            c.e.a.b.e.a r3 = c.e.a.b.e.b.a(r3)     // Catch:{ RemoteException -> 0x009e }
            long r4 = r14.f10337a     // Catch:{ RemoteException -> 0x009e }
            r2.initialize(r3, r13, r4)     // Catch:{ RemoteException -> 0x009e }
            return
        L_0x009e:
            r2 = move-exception
            c.e.a.b.g.f.b r3 = r14.f10356i
            r3.a((java.lang.Exception) r2, (boolean) r1, (boolean) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.C0806c.a():void");
    }
}
