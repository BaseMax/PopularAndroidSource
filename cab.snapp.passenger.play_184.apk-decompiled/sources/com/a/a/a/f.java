package com.a.a.a;

import android.content.Context;
import com.a.a.a.ag;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.b.d;
import io.fabric.sdk.android.services.settings.b;
import java.util.concurrent.ScheduledExecutorService;

final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    final i f1673a;

    /* renamed from: b  reason: collision with root package name */
    final Context f1674b;
    final g c;
    final aj d;
    final io.fabric.sdk.android.services.network.d e;
    final ScheduledExecutorService f;
    af g = new n();

    public f(i iVar, Context context, g gVar, aj ajVar, io.fabric.sdk.android.services.network.d dVar, ScheduledExecutorService scheduledExecutorService) {
        this.f1673a = iVar;
        this.f1674b = context;
        this.c = gVar;
        this.d = ajVar;
        this.e = dVar;
        this.f = scheduledExecutorService;
    }

    public final void processEventAsync(ag.a aVar) {
        a(aVar, false, false);
    }

    public final void processEventAsyncAndFlush(ag.a aVar) {
        a(aVar, false, true);
    }

    public final void processEventSync(ag.a aVar) {
        a(aVar, true, false);
    }

    public final void setAnalyticsSettingsData(final b bVar, final String str) {
        b(new Runnable() {
            public final void run() {
                try {
                    f.this.g.setAnalyticsSettingsData(bVar, str);
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to set analytics settings data", e);
                }
            }
        });
    }

    public final void disable() {
        b(new Runnable() {
            public final void run() {
                try {
                    af afVar = f.this.g;
                    f.this.g = new n();
                    afVar.deleteAllEvents();
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to disable events", e);
                }
            }
        });
    }

    public final void onRollOver(String str) {
        b(new Runnable() {
            public final void run() {
                try {
                    f.this.g.sendEvents();
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to send events files", e);
                }
            }
        });
    }

    public final void enable() {
        b(new Runnable() {
            public final void run() {
                try {
                    ah metadata = f.this.d.getMetadata();
                    ac analyticsFilesManager = f.this.c.getAnalyticsFilesManager();
                    analyticsFilesManager.registerRollOverListener(f.this);
                    f fVar = f.this;
                    o oVar = new o(f.this.f1673a, f.this.f1674b, f.this.f, analyticsFilesManager, f.this.e, metadata);
                    fVar.g = oVar;
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to enable events", e);
                }
            }
        });
    }

    public final void flushEvents() {
        b(new Runnable() {
            public final void run() {
                try {
                    f.this.g.rollFileOver();
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to flush events", e);
                }
            }
        });
    }

    private void a(final ag.a aVar, boolean z, final boolean z2) {
        AnonymousClass6 r0 = new Runnable() {
            public final void run() {
                try {
                    f.this.g.processEvent(aVar);
                    if (z2) {
                        f.this.g.rollFileOver();
                    }
                } catch (Exception e) {
                    c.getLogger().e(b.TAG, "Failed to process event", e);
                }
            }
        };
        if (z) {
            a(r0);
        } else {
            b(r0);
        }
    }

    private void a(Runnable runnable) {
        try {
            this.f.submit(runnable).get();
        } catch (Exception e2) {
            c.getLogger().e(b.TAG, "Failed to run events task", e2);
        }
    }

    private void b(Runnable runnable) {
        try {
            this.f.submit(runnable);
        } catch (Exception e2) {
            c.getLogger().e(b.TAG, "Failed to submit events task", e2);
        }
    }
}
