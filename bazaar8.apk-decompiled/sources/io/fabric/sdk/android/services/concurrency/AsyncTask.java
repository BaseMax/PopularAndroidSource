package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class AsyncTask<Params, Progress, Result> {

    /* renamed from: a  reason: collision with root package name */
    public static final int f14907a = Runtime.getRuntime().availableProcessors();

    /* renamed from: b  reason: collision with root package name */
    public static final int f14908b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f14909c;

    /* renamed from: d  reason: collision with root package name */
    public static final ThreadFactory f14910d = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final BlockingQueue<Runnable> f14911e = new LinkedBlockingQueue(128);

    /* renamed from: f  reason: collision with root package name */
    public static final Executor f14912f;

    /* renamed from: g  reason: collision with root package name */
    public static final Executor f14913g = new c(null);

    /* renamed from: h  reason: collision with root package name */
    public static final b f14914h = new b();

    /* renamed from: i  reason: collision with root package name */
    public static volatile Executor f14915i = f14913g;

    /* renamed from: j  reason: collision with root package name */
    public final d<Params, Result> f14916j = new b(this);

    /* renamed from: k  reason: collision with root package name */
    public final FutureTask<Result> f14917k = new c(this, this.f14916j);

    /* renamed from: l  reason: collision with root package name */
    public volatile Status f14918l = Status.PENDING;
    public final AtomicBoolean m = new AtomicBoolean();
    public final AtomicBoolean n = new AtomicBoolean();

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    private static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final AsyncTask f14920a;

        /* renamed from: b  reason: collision with root package name */
        public final Data[] f14921b;

        public a(AsyncTask asyncTask, Data... dataArr) {
            this.f14920a = asyncTask;
            this.f14921b = dataArr;
        }
    }

    private static class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                aVar.f14920a.a(aVar.f14921b[0]);
            } else if (i2 == 2) {
                aVar.f14920a.b((Progress[]) aVar.f14921b);
            }
        }
    }

    private static class c implements Executor {

        /* renamed from: a  reason: collision with root package name */
        public final LinkedList<Runnable> f14922a;

        /* renamed from: b  reason: collision with root package name */
        public Runnable f14923b;

        public c() {
            this.f14922a = new LinkedList<>();
        }

        public synchronized void a() {
            Runnable poll = this.f14922a.poll();
            this.f14923b = poll;
            if (poll != null) {
                AsyncTask.f14912f.execute(this.f14923b);
            }
        }

        public synchronized void execute(Runnable runnable) {
            this.f14922a.offer(new e(this, runnable));
            if (this.f14923b == null) {
                a();
            }
        }

        public /* synthetic */ c(a aVar) {
            this();
        }
    }

    private static abstract class d<Params, Result> implements Callable<Result> {

        /* renamed from: a  reason: collision with root package name */
        public Params[] f14924a;

        public d() {
        }

        public /* synthetic */ d(a aVar) {
            this();
        }
    }

    static {
        int i2 = f14907a;
        f14908b = i2 + 1;
        f14909c = (i2 * 2) + 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f14908b, f14909c, 1, TimeUnit.SECONDS, f14911e, f14910d);
        f14912f = threadPoolExecutor;
    }

    public abstract Result a(Params... paramsArr);

    public abstract void b(Result result);

    public void b(Progress... progressArr) {
    }

    public void c() {
    }

    public abstract void c(Result result);

    public final Result d(Result result) {
        f14914h.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final void e(Result result) {
        if (!this.n.get()) {
            d(result);
        }
    }

    public final boolean b() {
        return this.m.get();
    }

    public final Status a() {
        return this.f14918l;
    }

    public final boolean a(boolean z) {
        this.m.set(true);
        return this.f14917k.cancel(z);
    }

    public final AsyncTask<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.f14918l != Status.PENDING) {
            int i2 = d.f13730a[this.f14918l.ordinal()];
            if (i2 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i2 == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f14918l = Status.RUNNING;
        c();
        this.f14916j.f14924a = paramsArr;
        executor.execute(this.f14917k);
        return this;
    }

    public final void a(Result result) {
        if (b()) {
            b(result);
        } else {
            c(result);
        }
        this.f14918l = Status.FINISHED;
    }
}
