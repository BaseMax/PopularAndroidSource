package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.legacy.content.WakefulBroadcastReceiver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class d extends Service {

    /* renamed from: a  reason: collision with root package name */
    final ExecutorService f4059a = Executors.newSingleThreadExecutor();

    /* renamed from: b  reason: collision with root package name */
    private Binder f4060b;
    private final Object c = new Object();
    private int d;
    private int e = 0;

    /* access modifiers changed from: private */
    public final void a(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.c) {
            this.e--;
            if (this.e == 0) {
                stopSelfResult(this.d);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    public final synchronized IBinder onBind(Intent intent) {
        if (this.f4060b == null) {
            this.f4060b = new h(this);
        }
        return this.f4060b;
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.c) {
            this.d = i2;
            this.e++;
        }
        Intent zzp = zzp(intent);
        if (zzp == null) {
            a(intent);
            return 2;
        } else if (zzq(zzp)) {
            a(intent);
            return 2;
        } else {
            this.f4059a.execute(new e(this, zzp, intent));
            return 3;
        }
    }

    /* access modifiers changed from: protected */
    public Intent zzp(Intent intent) {
        return intent;
    }

    public boolean zzq(Intent intent) {
        return false;
    }
}
