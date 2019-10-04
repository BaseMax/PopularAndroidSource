package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class AsyncTask<Params, Progress, Result> {
    public static final Executor SERIAL_EXECUTOR = new c((byte) 0);
    public static final Executor THREAD_POOL_EXECUTOR;

    /* renamed from: a  reason: collision with root package name */
    private static final int f6618a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f6619b;
    private static final int c = ((f6618a * 2) + 1);
    private static final ThreadFactory d = new ThreadFactory() {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f6620a = new AtomicInteger(1);

        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.f6620a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> e = new LinkedBlockingQueue(128);
    private static final b f = new b();
    private static volatile Executor g = SERIAL_EXECUTOR;
    private final d<Params, Result> h = new d<Params, Result>() {
        public final Result call() throws Exception {
            AsyncTask.this.l.set(true);
            Process.setThreadPriority(10);
            AsyncTask asyncTask = AsyncTask.this;
            return asyncTask.a(asyncTask.doInBackground(this.f6630b));
        }
    };
    private final FutureTask<Result> i = new FutureTask<Result>(this.h) {
        /* access modifiers changed from: protected */
        public final void done() {
            try {
                AsyncTask.b(AsyncTask.this, get());
            } catch (InterruptedException unused) {
            } catch (ExecutionException e) {
                throw new RuntimeException("An error occured while executing doInBackground()", e.getCause());
            } catch (CancellationException unused2) {
                AsyncTask.b(AsyncTask.this, null);
            }
        }
    };
    private volatile Status j = Status.PENDING;
    private final AtomicBoolean k = new AtomicBoolean();
    /* access modifiers changed from: private */
    public final AtomicBoolean l = new AtomicBoolean();

    /* renamed from: io.fabric.sdk.android.services.concurrency.AsyncTask$4  reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6623a = new int[Status.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                io.fabric.sdk.android.services.concurrency.AsyncTask$Status[] r0 = io.fabric.sdk.android.services.concurrency.AsyncTask.Status.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f6623a = r0
                int[] r0 = f6623a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.fabric.sdk.android.services.concurrency.AsyncTask$Status r1 = io.fabric.sdk.android.services.concurrency.AsyncTask.Status.RUNNING     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f6623a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.fabric.sdk.android.services.concurrency.AsyncTask$Status r1 = io.fabric.sdk.android.services.concurrency.AsyncTask.Status.FINISHED     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.concurrency.AsyncTask.AnonymousClass4.<clinit>():void");
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        final AsyncTask f6624a;

        /* renamed from: b  reason: collision with root package name */
        final Data[] f6625b;

        a(AsyncTask asyncTask, Data... dataArr) {
            this.f6624a = asyncTask;
            this.f6625b = dataArr;
        }
    }

    static class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        public final void handleMessage(Message message) {
            a aVar = (a) message.obj;
            if (message.what == 1) {
                AsyncTask.c(aVar.f6624a, aVar.f6625b[0]);
            }
        }
    }

    static class c implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final LinkedList<Runnable> f6626a;

        /* renamed from: b  reason: collision with root package name */
        Runnable f6627b;

        private c() {
            this.f6626a = new LinkedList<>();
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        public final synchronized void execute(final Runnable runnable) {
            this.f6626a.offer(new Runnable() {
                public final void run() {
                    try {
                        runnable.run();
                    } finally {
                        c.this.a();
                    }
                }
            });
            if (this.f6627b == null) {
                a();
            }
        }

        /* access modifiers changed from: protected */
        public final synchronized void a() {
            Runnable poll = this.f6626a.poll();
            this.f6627b = poll;
            if (poll != null) {
                AsyncTask.THREAD_POOL_EXECUTOR.execute(this.f6627b);
            }
        }
    }

    static abstract class d<Params, Result> implements Callable<Result> {

        /* renamed from: b  reason: collision with root package name */
        Params[] f6630b;

        private d() {
        }

        /* synthetic */ d(byte b2) {
            this();
        }
    }

    /* access modifiers changed from: protected */
    public abstract Result doInBackground(Params... paramsArr);

    /* access modifiers changed from: protected */
    public void onCancelled(Result result) {
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(Result result) {
    }

    /* access modifiers changed from: protected */
    public void onPreExecute() {
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f6618a = availableProcessors;
        f6619b = availableProcessors + 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f6619b, c, 1, TimeUnit.SECONDS, e, d);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
    }

    public static void init() {
        f.getLooper();
    }

    public static void setDefaultExecutor(Executor executor) {
        g = executor;
    }

    /* access modifiers changed from: private */
    public Result a(Result result) {
        f.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final Status getStatus() {
        return this.j;
    }

    public final boolean isCancelled() {
        return this.k.get();
    }

    public final boolean cancel(boolean z) {
        this.k.set(true);
        return this.i.cancel(z);
    }

    public final Result get() throws InterruptedException, ExecutionException {
        return this.i.get();
    }

    public final Result get(long j2, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.i.get(j2, timeUnit);
    }

    public final AsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(g, paramsArr);
    }

    public final AsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.j != Status.PENDING) {
            int i2 = AnonymousClass4.f6623a[this.j.ordinal()];
            if (i2 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i2 == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.j = Status.RUNNING;
        onPreExecute();
        this.h.f6630b = paramsArr;
        executor.execute(this.i);
        return this;
    }

    public static void execute(Runnable runnable) {
        g.execute(runnable);
    }

    static /* synthetic */ void b(AsyncTask asyncTask, Object obj) {
        if (!asyncTask.l.get()) {
            asyncTask.a(obj);
        }
    }

    static /* synthetic */ void c(AsyncTask asyncTask, Object obj) {
        if (asyncTask.isCancelled()) {
            asyncTask.onCancelled(obj);
        } else {
            asyncTask.onPostExecute(obj);
        }
        asyncTask.j = Status.FINISHED;
    }
}
