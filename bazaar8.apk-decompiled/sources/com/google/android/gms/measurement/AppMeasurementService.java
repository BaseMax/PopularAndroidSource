package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import b.q.a.a;
import c.e.a.b.h.b.Eb;
import c.e.a.b.h.b.Ib;

public final class AppMeasurementService extends Service implements Ib {

    /* renamed from: a  reason: collision with root package name */
    public Eb<AppMeasurementService> f13224a;

    public final Eb<AppMeasurementService> a() {
        if (this.f13224a == null) {
            this.f13224a = new Eb<>(this);
        }
        return this.f13224a;
    }

    public final IBinder onBind(Intent intent) {
        return a().a(intent);
    }

    public final void onCreate() {
        super.onCreate();
        a().a();
    }

    public final void onDestroy() {
        a().b();
        super.onDestroy();
    }

    public final void onRebind(Intent intent) {
        a().b(intent);
    }

    public final int onStartCommand(Intent intent, int i2, int i3) {
        return a().a(intent, i2, i3);
    }

    public final boolean onUnbind(Intent intent) {
        return a().c(intent);
    }

    public final boolean a(int i2) {
        return stopSelfResult(i2);
    }

    public final void a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    public final void a(Intent intent) {
        a.a(intent);
    }
}
