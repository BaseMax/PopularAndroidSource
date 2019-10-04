package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.c.f;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public final class k {
    private static k c;

    /* renamed from: a  reason: collision with root package name */
    final Context f4072a;

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f4073b;
    private l d = new l(this, (byte) 0);
    private int e = 1;

    private k(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f4073b = scheduledExecutorService;
        this.f4072a = context.getApplicationContext();
    }

    private final synchronized int a() {
        int i;
        i = this.e;
        this.e = i + 1;
        return i;
    }

    private final synchronized <T> f<T> a(s<T> sVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(sVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(valueOf);
        }
        if (!this.d.a((s) sVar)) {
            this.d = new l(this, (byte) 0);
            this.d.a((s) sVar);
        }
        return sVar.f4084b.getTask();
    }

    public static synchronized k zzev(Context context) {
        k kVar;
        synchronized (k.class) {
            if (c == null) {
                c = new k(context, Executors.newSingleThreadScheduledExecutor());
            }
            kVar = c;
        }
        return kVar;
    }

    public final f<Void> zzh(int i, Bundle bundle) {
        return a(new r(a(), bundle));
    }

    public final f<Bundle> zzi(int i, Bundle bundle) {
        return a(new u(a(), bundle));
    }
}
