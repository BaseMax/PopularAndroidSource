package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import b.H.d;
import b.H.q;
import java.util.UUID;
import java.util.concurrent.Executor;

public abstract class ListenableWorker {

    /* renamed from: a  reason: collision with root package name */
    public Context f1000a;

    /* renamed from: b  reason: collision with root package name */
    public WorkerParameters f1001b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f1002c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1003d;

    public static abstract class a {

        /* renamed from: androidx.work.ListenableWorker$a$a  reason: collision with other inner class name */
        public static final class C0013a extends a {

            /* renamed from: a  reason: collision with root package name */
            public final d f1004a;

            public C0013a() {
                this(d.f1640b);
            }

            public d d() {
                return this.f1004a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0013a.class != obj.getClass()) {
                    return false;
                }
                return this.f1004a.equals(((C0013a) obj).f1004a);
            }

            public int hashCode() {
                return (C0013a.class.getName().hashCode() * 31) + this.f1004a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f1004a + '}';
            }

            public C0013a(d dVar) {
                this.f1004a = dVar;
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                boolean z = true;
                if (this == obj) {
                    return true;
                }
                if (obj == null || b.class != obj.getClass()) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {

            /* renamed from: a  reason: collision with root package name */
            public final d f1005a;

            public c() {
                this(d.f1640b);
            }

            public d d() {
                return this.f1005a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f1005a.equals(((c) obj).f1005a);
            }

            public int hashCode() {
                return (c.class.getName().hashCode() * 31) + this.f1005a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f1005a + '}';
            }

            public c(d dVar) {
                this.f1005a = dVar;
            }
        }

        public static a a(d dVar) {
            return new c(dVar);
        }

        public static a b() {
            return new b();
        }

        public static a c() {
            return new c();
        }

        public static a a() {
            return new C0013a();
        }
    }

    @SuppressLint({"BanKeepAnnotation"})
    @Keep
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        } else if (workerParameters != null) {
            this.f1000a = context;
            this.f1001b = workerParameters;
        } else {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
    }

    public final Context a() {
        return this.f1000a;
    }

    public Executor b() {
        return this.f1001b.a();
    }

    public final UUID c() {
        return this.f1001b.b();
    }

    public final d d() {
        return this.f1001b.c();
    }

    public q e() {
        return this.f1001b.d();
    }

    public final boolean f() {
        return this.f1003d;
    }

    public void g() {
    }

    public final void h() {
        this.f1003d = true;
    }

    public abstract c.e.b.a.a.a<a> i();

    public final void j() {
        this.f1002c = true;
        g();
    }
}
