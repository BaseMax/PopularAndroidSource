package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bb extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ax f2938a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public bb(ax axVar, Looper looper) {
        super(looper);
        this.f2938a = axVar;
    }

    private static void a(Message message) {
        ((bc) message.obj).unregister();
    }

    private static boolean b(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v24, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v7, resolved type: android.app.PendingIntent} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void handleMessage(android.os.Message r7) {
        /*
            r6 = this;
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            java.util.concurrent.atomic.AtomicInteger r0 = r0.f
            int r0 = r0.get()
            int r1 = r7.arg1
            if (r0 == r1) goto L_0x0016
            boolean r0 = b(r7)
            if (r0 == 0) goto L_0x0015
            a(r7)
        L_0x0015:
            return
        L_0x0016:
            int r0 = r7.what
            r1 = 4
            r2 = 1
            r3 = 5
            if (r0 == r2) goto L_0x002a
            int r0 = r7.what
            r4 = 7
            if (r0 == r4) goto L_0x002a
            int r0 = r7.what
            if (r0 == r1) goto L_0x002a
            int r0 = r7.what
            if (r0 != r3) goto L_0x0036
        L_0x002a:
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            boolean r0 = r0.isConnecting()
            if (r0 != 0) goto L_0x0036
            a(r7)
            return
        L_0x0036:
            int r0 = r7.what
            r4 = 8
            r5 = 3
            if (r0 != r1) goto L_0x0080
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            com.google.android.gms.common.ConnectionResult r1 = new com.google.android.gms.common.ConnectionResult
            int r7 = r7.arg2
            r1.<init>(r7)
            com.google.android.gms.common.ConnectionResult unused = r0.y = r1
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            boolean r7 = r7.d()
            if (r7 == 0) goto L_0x005f
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            boolean r7 = r7.z
            if (r7 != 0) goto L_0x005f
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            r7.a((int) r5, null)
            return
        L_0x005f:
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            com.google.android.gms.common.ConnectionResult r7 = r7.y
            if (r7 == 0) goto L_0x006e
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            com.google.android.gms.common.ConnectionResult r7 = r7.y
            goto L_0x0073
        L_0x006e:
            com.google.android.gms.common.ConnectionResult r7 = new com.google.android.gms.common.ConnectionResult
            r7.<init>(r4)
        L_0x0073:
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            com.google.android.gms.common.internal.bd r0 = r0.e
            r0.zzf(r7)
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            r0.a((com.google.android.gms.common.ConnectionResult) r7)
            return
        L_0x0080:
            int r0 = r7.what
            if (r0 != r3) goto L_0x00a5
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            com.google.android.gms.common.ConnectionResult r7 = r7.y
            if (r7 == 0) goto L_0x0093
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            com.google.android.gms.common.ConnectionResult r7 = r7.y
            goto L_0x0098
        L_0x0093:
            com.google.android.gms.common.ConnectionResult r7 = new com.google.android.gms.common.ConnectionResult
            r7.<init>(r4)
        L_0x0098:
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            com.google.android.gms.common.internal.bd r0 = r0.e
            r0.zzf(r7)
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            r0.a((com.google.android.gms.common.ConnectionResult) r7)
            return
        L_0x00a5:
            int r0 = r7.what
            r1 = 0
            if (r0 != r5) goto L_0x00c9
            java.lang.Object r0 = r7.obj
            boolean r0 = r0 instanceof android.app.PendingIntent
            if (r0 == 0) goto L_0x00b5
            java.lang.Object r0 = r7.obj
            r1 = r0
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1
        L_0x00b5:
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult
            int r7 = r7.arg2
            r0.<init>(r7, r1)
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            com.google.android.gms.common.internal.bd r7 = r7.e
            r7.zzf(r0)
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            r7.a((com.google.android.gms.common.ConnectionResult) r0)
            return
        L_0x00c9:
            int r0 = r7.what
            r4 = 6
            if (r0 != r4) goto L_0x00f8
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            r0.a((int) r3, null)
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            com.google.android.gms.common.internal.az r0 = r0.u
            if (r0 == 0) goto L_0x00e6
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            com.google.android.gms.common.internal.az r0 = r0.u
            int r4 = r7.arg2
            r0.onConnectionSuspended(r4)
        L_0x00e6:
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            int r7 = r7.arg2
            r0.f2935b = r7
            long r4 = java.lang.System.currentTimeMillis()
            r0.c = r4
            com.google.android.gms.common.internal.ax r7 = r6.f2938a
            boolean unused = r7.a(r3, r2, r1)
            return
        L_0x00f8:
            int r0 = r7.what
            r1 = 2
            if (r0 != r1) goto L_0x0109
            com.google.android.gms.common.internal.ax r0 = r6.f2938a
            boolean r0 = r0.isConnected()
            if (r0 != 0) goto L_0x0109
            a(r7)
            return
        L_0x0109:
            boolean r0 = b(r7)
            if (r0 == 0) goto L_0x0117
            java.lang.Object r7 = r7.obj
            com.google.android.gms.common.internal.bc r7 = (com.google.android.gms.common.internal.bc) r7
            r7.zzaks()
            return
        L_0x0117:
            int r7 = r7.what
            r0 = 45
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Don't know how to handle message: "
            r1.append(r0)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            java.lang.Exception r0 = new java.lang.Exception
            r0.<init>()
            java.lang.String r1 = "GmsClient"
            android.util.Log.wtf(r1, r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.bb.handleMessage(android.os.Message):void");
    }
}
