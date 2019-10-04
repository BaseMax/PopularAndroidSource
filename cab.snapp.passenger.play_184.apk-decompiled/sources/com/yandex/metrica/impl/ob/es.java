package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public class es {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f5981a;

    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final fb f5982a;

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f5983b;
        private final fa c;

        public a(fb fbVar, Bundle bundle) {
            this(fbVar, bundle, null);
        }

        public a(fb fbVar, Bundle bundle, fa faVar) {
            this.f5982a = fbVar;
            this.f5983b = bundle;
            this.c = faVar;
        }

        public void run() {
            try {
                this.f5982a.a(this.f5983b, this.c);
            } catch (Exception unused) {
                fa faVar = this.c;
                if (faVar != null) {
                    faVar.a();
                }
            }
        }
    }

    public es() {
        this(Executors.newSingleThreadScheduledExecutor(new ni("YMM-CSE")));
    }

    es(ScheduledExecutorService scheduledExecutorService) {
        this.f5981a = scheduledExecutorService;
    }

    public void a(fb fbVar, Bundle bundle) {
        this.f5981a.execute(new a(fbVar, bundle));
    }

    public void a(fb fbVar, Bundle bundle, fa faVar) {
        this.f5981a.execute(new a(fbVar, bundle, faVar));
    }

    public ScheduledExecutorService a() {
        return this.f5981a;
    }
}
