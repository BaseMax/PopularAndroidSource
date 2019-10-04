package com.google.firebase.iid;

final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final l f4078a;

    o(l lVar) {
        this.f4078a = lVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003e, code lost:
        if (android.util.Log.isLoggable("MessengerIpcClient", 3) == false) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0040, code lost:
        r3 = java.lang.String.valueOf(r1);
        r5 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 8);
        r5.append("Sending ");
        r5.append(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005b, code lost:
        r3 = r0.f.f4072a;
        r4 = r0.f4075b;
        r5 = android.os.Message.obtain();
        r5.what = r1.c;
        r5.arg1 = r1.f4083a;
        r5.replyTo = r4;
        r4 = new android.os.Bundle();
        r4.putBoolean("oneWay", r1.a());
        r4.putString("pkg", r3.getPackageName());
        r4.putBundle("data", r1.d);
        r5.setData(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        r1 = r0.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0094, code lost:
        if (r1.f4081a == null) goto L_0x009d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0096, code lost:
        r1.f4081a.send(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x009f, code lost:
        if (r1.f4082b == null) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00a1, code lost:
        r1.f4082b.send(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00af, code lost:
        throw new java.lang.IllegalStateException("Both messengers are null");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00b0, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00b1, code lost:
        r0.a(2, r1.getMessage());
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r8 = this;
            com.google.firebase.iid.l r0 = r8.f4078a
        L_0x0002:
            monitor-enter(r0)
            int r1 = r0.f4074a     // Catch:{ all -> 0x00ba }
            r2 = 2
            if (r1 == r2) goto L_0x000a
            monitor-exit(r0)     // Catch:{ all -> 0x00ba }
            return
        L_0x000a:
            java.util.Queue<com.google.firebase.iid.s<?>> r1 = r0.d     // Catch:{ all -> 0x00ba }
            boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x00ba }
            if (r1 == 0) goto L_0x0017
            r0.a()     // Catch:{ all -> 0x00ba }
            monitor-exit(r0)     // Catch:{ all -> 0x00ba }
            return
        L_0x0017:
            java.util.Queue<com.google.firebase.iid.s<?>> r1 = r0.d     // Catch:{ all -> 0x00ba }
            java.lang.Object r1 = r1.poll()     // Catch:{ all -> 0x00ba }
            com.google.firebase.iid.s r1 = (com.google.firebase.iid.s) r1     // Catch:{ all -> 0x00ba }
            android.util.SparseArray<com.google.firebase.iid.s<?>> r3 = r0.e     // Catch:{ all -> 0x00ba }
            int r4 = r1.f4083a     // Catch:{ all -> 0x00ba }
            r3.put(r4, r1)     // Catch:{ all -> 0x00ba }
            com.google.firebase.iid.k r3 = r0.f     // Catch:{ all -> 0x00ba }
            java.util.concurrent.ScheduledExecutorService r3 = r3.f4073b     // Catch:{ all -> 0x00ba }
            com.google.firebase.iid.p r4 = new com.google.firebase.iid.p     // Catch:{ all -> 0x00ba }
            r4.<init>(r0, r1)     // Catch:{ all -> 0x00ba }
            r5 = 30
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ all -> 0x00ba }
            r3.schedule(r4, r5, r7)     // Catch:{ all -> 0x00ba }
            monitor-exit(r0)     // Catch:{ all -> 0x00ba }
            r3 = 3
            java.lang.String r4 = "MessengerIpcClient"
            boolean r3 = android.util.Log.isLoggable(r4, r3)
            if (r3 == 0) goto L_0x005b
            java.lang.String r3 = java.lang.String.valueOf(r1)
            java.lang.String r4 = java.lang.String.valueOf(r3)
            int r4 = r4.length()
            int r4 = r4 + 8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r4)
            java.lang.String r4 = "Sending "
            r5.append(r4)
            r5.append(r3)
        L_0x005b:
            com.google.firebase.iid.k r3 = r0.f
            android.content.Context r3 = r3.f4072a
            android.os.Messenger r4 = r0.f4075b
            android.os.Message r5 = android.os.Message.obtain()
            int r6 = r1.c
            r5.what = r6
            int r6 = r1.f4083a
            r5.arg1 = r6
            r5.replyTo = r4
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            boolean r6 = r1.a()
            java.lang.String r7 = "oneWay"
            r4.putBoolean(r7, r6)
            java.lang.String r3 = r3.getPackageName()
            java.lang.String r6 = "pkg"
            r4.putString(r6, r3)
            android.os.Bundle r1 = r1.d
            java.lang.String r3 = "data"
            r4.putBundle(r3, r1)
            r5.setData(r4)
            com.google.firebase.iid.q r1 = r0.c     // Catch:{ RemoteException -> 0x00b0 }
            android.os.Messenger r3 = r1.f4081a     // Catch:{ RemoteException -> 0x00b0 }
            if (r3 == 0) goto L_0x009d
            android.os.Messenger r1 = r1.f4081a     // Catch:{ RemoteException -> 0x00b0 }
            r1.send(r5)     // Catch:{ RemoteException -> 0x00b0 }
            goto L_0x0002
        L_0x009d:
            com.google.android.gms.iid.MessengerCompat r3 = r1.f4082b     // Catch:{ RemoteException -> 0x00b0 }
            if (r3 == 0) goto L_0x00a8
            com.google.android.gms.iid.MessengerCompat r1 = r1.f4082b     // Catch:{ RemoteException -> 0x00b0 }
            r1.send(r5)     // Catch:{ RemoteException -> 0x00b0 }
            goto L_0x0002
        L_0x00a8:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch:{ RemoteException -> 0x00b0 }
            java.lang.String r3 = "Both messengers are null"
            r1.<init>(r3)     // Catch:{ RemoteException -> 0x00b0 }
            throw r1     // Catch:{ RemoteException -> 0x00b0 }
        L_0x00b0:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()
            r0.a(r2, r1)
            goto L_0x0002
        L_0x00ba:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00ba }
            goto L_0x00be
        L_0x00bd:
            throw r1
        L_0x00be:
            goto L_0x00bd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.o.run():void");
    }
}
