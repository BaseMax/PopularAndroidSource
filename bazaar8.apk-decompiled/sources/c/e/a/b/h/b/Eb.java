package c.e.a.b.h.b;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.Ib;
import com.google.android.gms.internal.measurement.zzy;

public final class Eb<T extends Context & Ib> {

    /* renamed from: a  reason: collision with root package name */
    public final T f10609a;

    public Eb(T t) {
        r.a(t);
        this.f10609a = t;
    }

    public final void a() {
        Y a2 = Y.a((Context) this.f10609a, (zzy) null);
        C0957t e2 = a2.e();
        a2.a();
        e2.B().a("Local AppMeasurementService is starting up");
    }

    public final void b() {
        Y a2 = Y.a((Context) this.f10609a, (zzy) null);
        C0957t e2 = a2.e();
        a2.a();
        e2.B().a("Local AppMeasurementService is shutting down");
    }

    public final boolean c(Intent intent) {
        if (intent == null) {
            c().t().a("onUnbind called with null intent");
            return true;
        }
        c().B().a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final C0957t c() {
        return Y.a((Context) this.f10609a, (zzy) null).e();
    }

    public final int a(Intent intent, int i2, int i3) {
        Y a2 = Y.a((Context) this.f10609a, (zzy) null);
        C0957t e2 = a2.e();
        if (intent == null) {
            e2.w().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        a2.a();
        e2.B().a("Local AppMeasurementService called. startId, action", Integer.valueOf(i3), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            a((Runnable) new Fb(this, i3, e2, intent));
        }
        return 2;
    }

    public final void b(Intent intent) {
        if (intent == null) {
            c().t().a("onRebind called with null intent");
            return;
        }
        c().B().a("onRebind called. action", intent.getAction());
    }

    public final void a(Runnable runnable) {
        Tb a2 = Tb.a((Context) this.f10609a);
        a2.d().a((Runnable) new Hb(this, a2, runnable));
    }

    public final IBinder a(Intent intent) {
        if (intent == null) {
            c().t().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new C0905ba(Tb.a((Context) this.f10609a));
        }
        c().w().a("onBind received unknown action", action);
        return null;
    }

    @TargetApi(24)
    public final boolean a(JobParameters jobParameters) {
        Y a2 = Y.a((Context) this.f10609a, (zzy) null);
        C0957t e2 = a2.e();
        String string = jobParameters.getExtras().getString("action");
        a2.a();
        e2.B().a("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            a((Runnable) new Gb(this, e2, jobParameters));
        }
        return true;
    }

    public final /* synthetic */ void a(C0957t tVar, JobParameters jobParameters) {
        tVar.B().a("AppMeasurementJobService processed last upload request.");
        ((Ib) this.f10609a).a(jobParameters, false);
    }

    public final /* synthetic */ void a(int i2, C0957t tVar, Intent intent) {
        if (((Ib) this.f10609a).a(i2)) {
            tVar.B().a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i2));
            c().B().a("Completed wakeful intent.");
            ((Ib) this.f10609a).a(intent);
        }
    }
}
