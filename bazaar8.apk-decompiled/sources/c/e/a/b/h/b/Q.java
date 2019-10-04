package c.e.a.b.h.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzy;

public final class Q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Y f10717a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f10718b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Bundle f10719c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Context f10720d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0957t f10721e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ BroadcastReceiver.PendingResult f10722f;

    public Q(O o, Y y, long j2, Bundle bundle, Context context, C0957t tVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f10717a = y;
        this.f10718b = j2;
        this.f10719c = bundle;
        this.f10720d = context;
        this.f10721e = tVar;
        this.f10722f = pendingResult;
    }

    public final void run() {
        long a2 = this.f10717a.j().f10618k.a();
        long j2 = this.f10718b;
        if (a2 > 0 && (j2 >= a2 || j2 <= 0)) {
            j2 = a2 - 1;
        }
        if (j2 > 0) {
            this.f10719c.putLong("click_timestamp", j2);
        }
        this.f10719c.putString("_cis", "referrer broadcast");
        Y.a(this.f10720d, (zzy) null).B().b("auto", "_cmp", this.f10719c);
        this.f10721e.B().a("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.f10722f;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
