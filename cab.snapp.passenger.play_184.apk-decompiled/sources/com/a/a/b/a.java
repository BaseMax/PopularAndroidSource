package com.a.a.b;

import android.content.Context;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.settings.f;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class a implements j {

    /* renamed from: a  reason: collision with root package name */
    final AtomicBoolean f1701a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f1702b;
    private Context c;
    private c d;
    private IdManager e;
    private f f;
    private d g;
    private c h;
    private k i;
    private d j;
    private long k;

    public a() {
        this(false);
    }

    public a(boolean z) {
        this.f1701a = new AtomicBoolean();
        this.k = 0;
        this.f1702b = new AtomicBoolean(z);
    }

    public void initialize(Context context, c cVar, IdManager idManager, f fVar, d dVar, c cVar2, k kVar, d dVar2) {
        this.c = context;
        this.d = cVar;
        this.e = idManager;
        this.f = fVar;
        this.g = dVar;
        this.h = cVar2;
        this.i = kVar;
        this.j = dVar2;
        this.f1701a.set(true);
        if (this.f1702b.get()) {
            a();
        }
    }

    /* access modifiers changed from: protected */
    public final void a() {
        synchronized (this.h) {
            if (this.h.get().contains("last_update_check")) {
                this.h.save(this.h.edit().remove("last_update_check"));
            }
        }
        long currentTimeMillis = this.i.getCurrentTimeMillis();
        long j2 = ((long) this.f.updateSuspendDurationSeconds) * 1000;
        io.fabric.sdk.android.c.getLogger().d(c.TAG, "Check for updates delay: ".concat(String.valueOf(j2)));
        l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(c.TAG, "Check for updates last check time: " + this.k);
        long j3 = this.k + j2;
        l logger2 = io.fabric.sdk.android.c.getLogger();
        logger2.d(c.TAG, "Check for updates current time: " + currentTimeMillis + ", next check time: " + j3);
        if (currentTimeMillis >= j3) {
            try {
                b();
            } finally {
                this.k = currentTimeMillis;
            }
        } else {
            io.fabric.sdk.android.c.getLogger().d(c.TAG, "Check for updates next check time was not passed");
        }
    }

    private void b() {
        io.fabric.sdk.android.c.getLogger().d(c.TAG, "Performing update check");
        c cVar = this.d;
        e eVar = new e(cVar, cVar.a(), this.f.updateUrl, this.j, new g());
        eVar.invoke(new g().getValue(this.c), this.e.getDeviceIdentifiers().get(IdManager.DeviceIdentifierType.FONT_TOKEN), this.g);
    }
}
