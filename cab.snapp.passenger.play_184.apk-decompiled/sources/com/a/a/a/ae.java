package com.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.a.a.a.ag;
import com.a.a.a.k;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.c.b;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.m;
import java.util.concurrent.ScheduledExecutorService;

final class ae implements k.a {

    /* renamed from: a  reason: collision with root package name */
    final f f1657a;

    /* renamed from: b  reason: collision with root package name */
    final a f1658b;
    final k c;
    final i d;
    private final long e;

    public final void onError(String str) {
    }

    public static ae build(i iVar, Context context, IdManager idManager, String str, String str2, long j) {
        Context context2 = context;
        IdManager idManager2 = idManager;
        aj ajVar = new aj(context, idManager, str, str2);
        g gVar = new g(context, new b(iVar));
        io.fabric.sdk.android.services.network.b bVar = new io.fabric.sdk.android.services.network.b(c.getLogger());
        a aVar = new a(context);
        ScheduledExecutorService buildSingleThreadScheduledExecutorService = m.buildSingleThreadScheduledExecutorService("Answers Events Handler");
        k kVar = new k(buildSingleThreadScheduledExecutorService);
        f fVar = new f(iVar, context, gVar, ajVar, bVar, buildSingleThreadScheduledExecutorService);
        ae aeVar = new ae(fVar, aVar, kVar, i.build(context), j);
        return aeVar;
    }

    private ae(f fVar, a aVar, k kVar, i iVar, long j) {
        this.f1657a = fVar;
        this.f1658b = aVar;
        this.c = kVar;
        this.d = iVar;
        this.e = j;
    }

    public final void enable() {
        this.f1657a.enable();
        this.f1658b.registerCallbacks(new h(this, this.c));
        this.c.registerListener(this);
        if (!this.d.hasAnalyticsLaunched()) {
            onInstall(this.e);
            this.d.setAnalyticsLaunched();
        }
    }

    public final void disable() {
        this.f1658b.resetCallbacks();
        this.f1657a.disable();
    }

    public final void onCustom(m mVar) {
        c.getLogger().d(b.TAG, "Logged custom event: ".concat(String.valueOf(mVar)));
        this.f1657a.processEventAsync(ag.customEventBuilder(mVar));
    }

    public final void onPredefined(v vVar) {
        c.getLogger().d(b.TAG, "Logged predefined event: ".concat(String.valueOf(vVar)));
        this.f1657a.processEventAsync(ag.predefinedEventBuilder(vVar));
    }

    public final void onCrash(String str, String str2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            c.getLogger().d(b.TAG, "Logged crash");
            this.f1657a.processEventSync(ag.crashEventBuilder(str, str2));
            return;
        }
        throw new IllegalStateException("onCrash called from main thread!!!");
    }

    public final void onInstall(long j) {
        c.getLogger().d(b.TAG, "Logged install");
        this.f1657a.processEventAsyncAndFlush(ag.installEventBuilder(j));
    }

    public final void onLifecycle(Activity activity, ag.b bVar) {
        l logger = c.getLogger();
        logger.d(b.TAG, "Logged lifecycle event: " + bVar.name());
        this.f1657a.processEventAsync(ag.lifecycleEventBuilder(bVar, activity));
    }

    public final void onBackground() {
        c.getLogger().d(b.TAG, "Flush events when app is backgrounded");
        this.f1657a.flushEvents();
    }

    public final void setAnalyticsSettingsData(io.fabric.sdk.android.services.settings.b bVar, String str) {
        this.c.setFlushOnBackground(bVar.flushOnBackground);
        this.f1657a.setAnalyticsSettingsData(bVar, str);
    }
}
