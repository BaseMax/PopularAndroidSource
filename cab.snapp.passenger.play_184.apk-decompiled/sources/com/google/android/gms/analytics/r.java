package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.f;
import java.lang.Thread;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class r {

    /* renamed from: b  reason: collision with root package name */
    private static volatile r f2591b;

    /* renamed from: a  reason: collision with root package name */
    final a f2592a = new a();
    private final Context c;
    /* access modifiers changed from: private */
    public final List<Object> d = new CopyOnWriteArrayList();
    private final m e = new m();
    private volatile com.google.android.gms.internal.a f;
    /* access modifiers changed from: private */
    public Thread.UncaughtExceptionHandler g;

    class a extends ThreadPoolExecutor {
        public a() {
            super(1, 1, 1, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new b((byte) 0));
            allowCoreThreadTimeOut(true);
        }

        /* access modifiers changed from: protected */
        public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new t(this, runnable, t);
        }
    }

    static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f2594a = new AtomicInteger();

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public final Thread newThread(Runnable runnable) {
            int incrementAndGet = f2594a.incrementAndGet();
            StringBuilder sb = new StringBuilder(23);
            sb.append("measurement-");
            sb.append(incrementAndGet);
            return new c(runnable, sb.toString());
        }
    }

    static class c extends Thread {
        c(Runnable runnable, String str) {
            super(runnable, str);
        }

        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private r(Context context) {
        Context applicationContext = context.getApplicationContext();
        ap.checkNotNull(applicationContext);
        this.c = applicationContext;
    }

    public static r zzbl(Context context) {
        ap.checkNotNull(context);
        if (f2591b == null) {
            synchronized (r.class) {
                if (f2591b == null) {
                    f2591b = new r(context);
                }
            }
        }
        return f2591b;
    }

    public static void zzve() {
        if (!(Thread.currentThread() instanceof c)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final Context getContext() {
        return this.c;
    }

    public final <V> Future<V> zza(Callable<V> callable) {
        ap.checkNotNull(callable);
        if (!(Thread.currentThread() instanceof c)) {
            return this.f2592a.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    public final void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.g = uncaughtExceptionHandler;
    }

    public final void zzc(Runnable runnable) {
        ap.checkNotNull(runnable);
        this.f2592a.submit(runnable);
    }

    public final com.google.android.gms.internal.a zzvc() {
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    com.google.android.gms.internal.a aVar = new com.google.android.gms.internal.a();
                    PackageManager packageManager = this.c.getPackageManager();
                    String packageName = this.c.getPackageName();
                    aVar.setAppId(packageName);
                    aVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.c.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        String valueOf = String.valueOf(packageName);
                        if (valueOf.length() != 0) {
                            "Error retrieving package info: appName set to ".concat(valueOf);
                        } else {
                            new String("Error retrieving package info: appName set to ");
                        }
                    }
                    aVar.setAppName(packageName);
                    aVar.setAppVersion(str);
                    this.f = aVar;
                }
            }
        }
        return this.f;
    }

    public final f zzvd() {
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        f fVar = new f();
        fVar.setLanguage(ce.zza(Locale.getDefault()));
        fVar.zzchl = displayMetrics.widthPixels;
        fVar.zzchm = displayMetrics.heightPixels;
        return fVar;
    }

    static /* synthetic */ void a(o oVar) {
        ap.zzgn("deliver should be called from worker thread");
        ap.checkArgument(oVar.zzuw(), "Measurement must be submitted");
        List<u> transports = oVar.getTransports();
        if (!transports.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (u next : transports) {
                Uri zzup = next.zzup();
                if (!hashSet.contains(zzup)) {
                    hashSet.add(zzup);
                    next.zzb(oVar);
                }
            }
        }
    }
}
