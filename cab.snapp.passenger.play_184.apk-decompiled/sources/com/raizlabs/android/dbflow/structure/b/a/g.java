package com.raizlabs.android.dbflow.structure.b.a;

import android.os.Handler;
import android.os.Looper;
import com.raizlabs.android.dbflow.config.FlowLog;

public final class g {
    private static Handler h;

    /* renamed from: a  reason: collision with root package name */
    final b f5219a;

    /* renamed from: b  reason: collision with root package name */
    final c f5220b;
    final c c;
    final com.raizlabs.android.dbflow.config.c d;
    final String e;
    final boolean f;
    final boolean g;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final c f5224a;

        /* renamed from: b  reason: collision with root package name */
        final com.raizlabs.android.dbflow.config.c f5225b;
        b c;
        c d;
        String e;
        boolean f = true;
        boolean g;

        public a(c cVar, com.raizlabs.android.dbflow.config.c cVar2) {
            this.f5224a = cVar;
            this.f5225b = cVar2;
        }

        public final a error(b bVar) {
            this.c = bVar;
            return this;
        }

        public final a success(c cVar) {
            this.d = cVar;
            return this;
        }

        public final a name(String str) {
            this.e = str;
            return this;
        }

        public final a shouldRunInTransaction(boolean z) {
            this.f = z;
            return this;
        }

        public final a runCallbacksOnSameThread(boolean z) {
            this.g = z;
            return this;
        }

        public final g build() {
            return new g(this);
        }

        public final void execute() {
            build().execute();
        }
    }

    public interface b {
        void onError(g gVar, Throwable th);
    }

    public interface c {
        void onSuccess(g gVar);
    }

    static Handler a() {
        if (h == null) {
            h = new Handler(Looper.getMainLooper());
        }
        return h;
    }

    g(a aVar) {
        this.d = aVar.f5225b;
        this.f5219a = aVar.c;
        this.f5220b = aVar.d;
        this.c = aVar.f5224a;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
    }

    public final b error() {
        return this.f5219a;
    }

    public final c success() {
        return this.f5220b;
    }

    public final c transaction() {
        return this.c;
    }

    public final String name() {
        return this.e;
    }

    public final void execute() {
        this.d.getTransactionManager().addTransaction(this);
    }

    public final void cancel() {
        this.d.getTransactionManager().cancelTransaction(this);
    }

    public final void executeSync() {
        try {
            if (this.f) {
                this.d.executeTransaction(this.c);
            } else {
                this.c.execute(this.d.getWritableDatabase());
            }
            if (this.f5220b != null) {
                if (this.g) {
                    this.f5220b.onSuccess(this);
                    return;
                }
                a().post(new Runnable() {
                    public final void run() {
                        g.this.f5220b.onSuccess(g.this);
                    }
                });
            }
        } catch (Throwable th) {
            FlowLog.logError(th);
            b bVar = this.f5219a;
            if (bVar == null) {
                throw new RuntimeException("An exception occurred while executing a transaction", th);
            } else if (this.g) {
                bVar.onError(this, th);
            } else {
                a().post(new Runnable() {
                    public final void run() {
                        g.this.f5219a.onError(g.this, th);
                    }
                });
            }
        }
    }

    public final a newBuilder() {
        return new a(this.c, this.d).error(this.f5219a).success(this.f5220b).name(this.e).shouldRunInTransaction(this.f).runCallbacksOnSameThread(this.g);
    }
}
