package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.i;
import io.fabric.sdk.android.services.concurrency.j;
import io.fabric.sdk.android.services.concurrency.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class c {
    public static final String TAG = "Fabric";

    /* renamed from: a  reason: collision with root package name */
    static volatile c f4915a;

    /* renamed from: b  reason: collision with root package name */
    static final l f4916b = new b();
    final l c;
    final boolean d;
    private final Context e;
    private final Map<Class<? extends i>, i> f;
    private final ExecutorService g;
    private final Handler h;
    /* access modifiers changed from: private */
    public final f<c> i;
    private final f<?> j;
    private final IdManager k;
    private a l;
    private WeakReference<Activity> m;
    /* access modifiers changed from: private */
    public AtomicBoolean n = new AtomicBoolean(false);

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f6554a;

        /* renamed from: b  reason: collision with root package name */
        private i[] f6555b;
        private i c;
        private Handler d;
        private l e;
        private boolean f;
        private String g;
        private String h;
        private f<c> i;

        @Deprecated
        public final a executorService(ExecutorService executorService) {
            return this;
        }

        @Deprecated
        public final a handler(Handler handler) {
            return this;
        }

        public a(Context context) {
            if (context != null) {
                this.f6554a = context;
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public final a kits(i... iVarArr) {
            if (this.f6555b == null) {
                this.f6555b = iVarArr;
                return this;
            }
            throw new IllegalStateException("Kits already set.");
        }

        public final a threadPoolExecutor(i iVar) {
            if (iVar == null) {
                throw new IllegalArgumentException("PriorityThreadPoolExecutor must not be null.");
            } else if (this.c == null) {
                this.c = iVar;
                return this;
            } else {
                throw new IllegalStateException("PriorityThreadPoolExecutor already set.");
            }
        }

        public final a logger(l lVar) {
            if (lVar == null) {
                throw new IllegalArgumentException("Logger must not be null.");
            } else if (this.e == null) {
                this.e = lVar;
                return this;
            } else {
                throw new IllegalStateException("Logger already set.");
            }
        }

        public final a appIdentifier(String str) {
            if (str == null) {
                throw new IllegalArgumentException("appIdentifier must not be null.");
            } else if (this.h == null) {
                this.h = str;
                return this;
            } else {
                throw new IllegalStateException("appIdentifier already set.");
            }
        }

        public final a appInstallIdentifier(String str) {
            if (str == null) {
                throw new IllegalArgumentException("appInstallIdentifier must not be null.");
            } else if (this.g == null) {
                this.g = str;
                return this;
            } else {
                throw new IllegalStateException("appInstallIdentifier already set.");
            }
        }

        public final a debuggable(boolean z) {
            this.f = z;
            return this;
        }

        public final a initializationCallback(f<c> fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("initializationCallback must not be null.");
            } else if (this.i == null) {
                this.i = fVar;
                return this;
            } else {
                throw new IllegalStateException("initializationCallback already set.");
            }
        }

        public final c build() {
            Map map;
            if (this.c == null) {
                this.c = i.create();
            }
            if (this.d == null) {
                this.d = new Handler(Looper.getMainLooper());
            }
            if (this.e == null) {
                if (this.f) {
                    this.e = new b(3);
                } else {
                    this.e = new b();
                }
            }
            if (this.h == null) {
                this.h = this.f6554a.getPackageName();
            }
            if (this.i == null) {
                this.i = f.EMPTY;
            }
            i[] iVarArr = this.f6555b;
            if (iVarArr == null) {
                map = new HashMap();
            } else {
                map = c.a((Collection) Arrays.asList(iVarArr));
            }
            Map map2 = map;
            Context applicationContext = this.f6554a.getApplicationContext();
            c cVar = new c(applicationContext, map2, this.c, this.d, this.e, this.f, this.i, new IdManager(applicationContext, this.h, this.g, map2.values()), c.a(this.f6554a));
            return cVar;
        }
    }

    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    public String getVersion() {
        return "1.3.17.dev";
    }

    c(Context context, Map<Class<? extends i>, i> map, i iVar, Handler handler, l lVar, boolean z, f fVar, IdManager idManager, Activity activity) {
        this.e = context;
        this.f = map;
        this.g = iVar;
        this.h = handler;
        this.c = lVar;
        this.d = z;
        this.i = fVar;
        final int size = map.size();
        this.j = new f() {

            /* renamed from: a  reason: collision with root package name */
            final CountDownLatch f6552a = new CountDownLatch(size);

            public final void success(Object obj) {
                this.f6552a.countDown();
                if (this.f6552a.getCount() == 0) {
                    c.this.n.set(true);
                    c.this.i.success(c.this);
                }
            }

            public final void failure(Exception exc) {
                c.this.i.failure(exc);
            }
        };
        this.k = idManager;
        setCurrentActivity(activity);
    }

    public static c with(Context context, i... iVarArr) {
        if (f4915a == null) {
            synchronized (c.class) {
                if (f4915a == null) {
                    c(new a(context).kits(iVarArr).build());
                }
            }
        }
        return f4915a;
    }

    public static c with(c cVar) {
        if (f4915a == null) {
            synchronized (c.class) {
                if (f4915a == null) {
                    c(cVar);
                }
            }
        }
        return f4915a;
    }

    private static void c(c cVar) {
        f4915a = cVar;
        cVar.a();
    }

    public c setCurrentActivity(Activity activity) {
        this.m = new WeakReference<>(activity);
        return this;
    }

    public Activity getCurrentActivity() {
        WeakReference<Activity> weakReference = this.m;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    private void a() {
        this.l = new a(this.e);
        this.l.registerCallbacks(new a.b() {
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                c.this.setCurrentActivity(activity);
            }

            public final void onActivityStarted(Activity activity) {
                c.this.setCurrentActivity(activity);
            }

            public final void onActivityResumed(Activity activity) {
                c.this.setCurrentActivity(activity);
            }
        });
        b(this.e);
    }

    private void b(Context context) {
        StringBuilder sb;
        Future<Map<String, k>> c2 = c(context);
        Collection<i> kits = getKits();
        m mVar = new m(c2, kits);
        ArrayList<i> arrayList = new ArrayList<>(kits);
        Collections.sort(arrayList);
        mVar.a(context, this, f.EMPTY, this.k);
        for (i a2 : arrayList) {
            a2.a(context, this, this.j, this.k);
        }
        mVar.e();
        if (getLogger().isLoggable(TAG, 3)) {
            sb = new StringBuilder("Initializing ");
            sb.append(getIdentifier());
            sb.append(" [Version: ");
            sb.append(getVersion());
            sb.append("], with the following kits:\n");
        } else {
            sb = null;
        }
        for (i iVar : arrayList) {
            iVar.d.addDependency((j) mVar.d);
            a(this.f, iVar);
            iVar.e();
            if (sb != null) {
                sb.append(iVar.getIdentifier());
                sb.append(" [Version: ");
                sb.append(iVar.getVersion());
                sb.append("]\n");
            }
        }
        if (sb != null) {
            getLogger().d(TAG, sb.toString());
        }
    }

    private static void a(Map<Class<? extends i>, i> map, i iVar) {
        io.fabric.sdk.android.services.concurrency.c cVar = iVar.h;
        if (cVar != null) {
            for (Class cls : cVar.value()) {
                if (cls.isInterface()) {
                    for (i next : map.values()) {
                        if (cls.isAssignableFrom(next.getClass())) {
                            iVar.d.addDependency((j) next.d);
                        }
                    }
                } else if (map.get(cls) != null) {
                    iVar.d.addDependency((j) map.get(cls).d);
                } else {
                    throw new k("Referenced Kit was null, does the kit exist?");
                }
            }
        }
    }

    public a getActivityLifecycleManager() {
        return this.l;
    }

    public ExecutorService getExecutorService() {
        return this.g;
    }

    public Handler getMainHandler() {
        return this.h;
    }

    public Collection<i> getKits() {
        return this.f.values();
    }

    public static l getLogger() {
        if (f4915a == null) {
            return f4916b;
        }
        return f4915a.c;
    }

    public static boolean isDebuggable() {
        if (f4915a == null) {
            return false;
        }
        return f4915a.d;
    }

    public static boolean isInitialized() {
        return f4915a != null && f4915a.n.get();
    }

    public String getAppIdentifier() {
        return this.k.getAppIdentifier();
    }

    public String getAppInstallIdentifier() {
        return this.k.getAppInstallIdentifier();
    }

    private static void a(Map<Class<? extends i>, i> map, Collection<? extends i> collection) {
        for (i iVar : collection) {
            map.put(iVar.getClass(), iVar);
            if (iVar instanceof j) {
                a(map, ((j) iVar).getKits());
            }
        }
    }

    private Future<Map<String, k>> c(Context context) {
        return getExecutorService().submit(new e(context.getPackageCodePath()));
    }

    public static <T extends i> T getKit(Class<T> cls) {
        if (f4915a != null) {
            return (i) f4915a.f.get(cls);
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    static /* synthetic */ Map a(Collection collection) {
        HashMap hashMap = new HashMap(collection.size());
        a((Map<Class<? extends i>, i>) hashMap, (Collection<? extends i>) collection);
        return hashMap;
    }

    static /* synthetic */ Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }
}
