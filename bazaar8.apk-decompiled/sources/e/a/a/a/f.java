package e.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import e.a.a.a.a.b.n;
import e.a.a.a.a.c.h;
import e.a.a.a.a.c.o;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Fabric */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static volatile f f13874a;

    /* renamed from: b  reason: collision with root package name */
    public static final o f13875b = new c();

    /* renamed from: c  reason: collision with root package name */
    public final Context f13876c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<Class<? extends l>, l> f13877d;

    /* renamed from: e  reason: collision with root package name */
    public final ExecutorService f13878e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f13879f;

    /* renamed from: g  reason: collision with root package name */
    public final j<f> f13880g;

    /* renamed from: h  reason: collision with root package name */
    public final j<?> f13881h;

    /* renamed from: i  reason: collision with root package name */
    public final IdManager f13882i;

    /* renamed from: j  reason: collision with root package name */
    public b f13883j;

    /* renamed from: k  reason: collision with root package name */
    public WeakReference<Activity> f13884k;

    /* renamed from: l  reason: collision with root package name */
    public AtomicBoolean f13885l = new AtomicBoolean(false);
    public final o m;
    public final boolean n;

    /* compiled from: Fabric */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Context f13886a;

        /* renamed from: b  reason: collision with root package name */
        public l[] f13887b;

        /* renamed from: c  reason: collision with root package name */
        public o f13888c;

        /* renamed from: d  reason: collision with root package name */
        public Handler f13889d;

        /* renamed from: e  reason: collision with root package name */
        public o f13890e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f13891f;

        /* renamed from: g  reason: collision with root package name */
        public String f13892g;

        /* renamed from: h  reason: collision with root package name */
        public String f13893h;

        /* renamed from: i  reason: collision with root package name */
        public j<f> f13894i;

        public a(Context context) {
            if (context != null) {
                this.f13886a = context;
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public a a(l... lVarArr) {
            if (this.f13887b == null) {
                if (!n.a(this.f13886a).a()) {
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    for (l lVar : lVarArr) {
                        String identifier = lVar.getIdentifier();
                        char c2 = 65535;
                        int hashCode = identifier.hashCode();
                        if (hashCode != 607220212) {
                            if (hashCode == 1830452504 && identifier.equals("com.crashlytics.sdk.android:crashlytics")) {
                                c2 = 0;
                            }
                        } else if (identifier.equals("com.crashlytics.sdk.android:answers")) {
                            c2 = 1;
                        }
                        if (c2 == 0 || c2 == 1) {
                            arrayList.add(lVar);
                        } else if (!z) {
                            f.e().a("Fabric", "Fabric will not initialize any kits when Firebase automatic data collection is disabled; to use Third-party kits with automatic data collection disabled, initialize these kits via non-Fabric means.");
                            z = true;
                        }
                    }
                    lVarArr = (l[]) arrayList.toArray(new l[0]);
                }
                this.f13887b = lVarArr;
                return this;
            }
            throw new IllegalStateException("Kits already set.");
        }

        public f a() {
            Map map;
            if (this.f13888c == null) {
                this.f13888c = o.a();
            }
            if (this.f13889d == null) {
                this.f13889d = new Handler(Looper.getMainLooper());
            }
            if (this.f13890e == null) {
                if (this.f13891f) {
                    this.f13890e = new c(3);
                } else {
                    this.f13890e = new c();
                }
            }
            if (this.f13893h == null) {
                this.f13893h = this.f13886a.getPackageName();
            }
            if (this.f13894i == null) {
                this.f13894i = j.f13898a;
            }
            l[] lVarArr = this.f13887b;
            if (lVarArr == null) {
                map = new HashMap();
            } else {
                map = f.b((Collection<? extends l>) Arrays.asList(lVarArr));
            }
            Map map2 = map;
            Context applicationContext = this.f13886a.getApplicationContext();
            f fVar = new f(applicationContext, map2, this.f13888c, this.f13889d, this.f13890e, this.f13891f, this.f13894i, new IdManager(applicationContext, this.f13893h, this.f13892g, map2.values()), f.b(this.f13886a));
            return fVar;
        }
    }

    public f(Context context, Map<Class<? extends l>, l> map, o oVar, Handler handler, o oVar2, boolean z, j jVar, IdManager idManager, Activity activity) {
        this.f13876c = context;
        this.f13877d = map;
        this.f13878e = oVar;
        this.f13879f = handler;
        this.m = oVar2;
        this.n = z;
        this.f13880g = jVar;
        this.f13881h = a(map.size());
        this.f13882i = idManager;
        a(activity);
    }

    public static void c(f fVar) {
        f13874a = fVar;
        fVar.g();
    }

    public static o e() {
        if (f13874a == null) {
            return f13875b;
        }
        return f13874a.m;
    }

    public static boolean h() {
        if (f13874a == null) {
            return false;
        }
        return f13874a.n;
    }

    public static f i() {
        if (f13874a != null) {
            return f13874a;
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    public String c() {
        return "io.fabric.sdk.android:fabric";
    }

    public void d(Context context) {
        StringBuilder sb;
        Future<Map<String, n>> c2 = c(context);
        Collection<l> d2 = d();
        p pVar = new p(c2, d2);
        ArrayList<l> arrayList = new ArrayList<>(d2);
        Collections.sort(arrayList);
        pVar.injectParameters(context, this, j.f13898a, this.f13882i);
        for (l injectParameters : arrayList) {
            injectParameters.injectParameters(context, this, this.f13881h, this.f13882i);
        }
        pVar.initialize();
        if (e().a("Fabric", 3)) {
            sb = new StringBuilder("Initializing ");
            sb.append(c());
            sb.append(" [Version: ");
            sb.append(f());
            sb.append("], with the following kits:\n");
        } else {
            sb = null;
        }
        for (l lVar : arrayList) {
            lVar.initializationTask.addDependency(pVar.initializationTask);
            a(this.f13877d, lVar);
            lVar.initialize();
            if (sb != null) {
                sb.append(lVar.getIdentifier());
                sb.append(" [Version: ");
                sb.append(lVar.getVersion());
                sb.append("]\n");
            }
        }
        if (sb != null) {
            e().d("Fabric", sb.toString());
        }
    }

    public String f() {
        return "1.4.8.32";
    }

    public final void g() {
        this.f13883j = new b(this.f13876c);
        this.f13883j.a(new d(this));
        d(this.f13876c);
    }

    public static Activity b(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public Future<Map<String, n>> c(Context context) {
        return b().submit(new h(context.getPackageCodePath()));
    }

    public static f a(Context context, l... lVarArr) {
        if (f13874a == null) {
            synchronized (f.class) {
                if (f13874a == null) {
                    a aVar = new a(context);
                    aVar.a(lVarArr);
                    c(aVar.a());
                }
            }
        }
        return f13874a;
    }

    public ExecutorService b() {
        return this.f13878e;
    }

    public static Map<Class<? extends l>, l> b(Collection<? extends l> collection) {
        HashMap hashMap = new HashMap(collection.size());
        a((Map<Class<? extends l>, l>) hashMap, collection);
        return hashMap;
    }

    public f a(Activity activity) {
        this.f13884k = new WeakReference<>(activity);
        return this;
    }

    public Activity a() {
        WeakReference<Activity> weakReference = this.f13884k;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public void a(Map<Class<? extends l>, l> map, l lVar) {
        h hVar = lVar.dependsOnAnnotation;
        if (hVar != null) {
            for (Class cls : hVar.value()) {
                if (cls.isInterface()) {
                    for (l next : map.values()) {
                        if (cls.isAssignableFrom(next.getClass())) {
                            lVar.initializationTask.addDependency(next.initializationTask);
                        }
                    }
                } else if (map.get(cls) != null) {
                    lVar.initializationTask.addDependency(map.get(cls).initializationTask);
                } else {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                }
            }
        }
    }

    public static <T extends l> T a(Class<T> cls) {
        return (l) i().f13877d.get(cls);
    }

    public static void a(Map<Class<? extends l>, l> map, Collection<? extends l> collection) {
        for (l lVar : collection) {
            map.put(lVar.getClass(), lVar);
            if (lVar instanceof m) {
                a(map, ((m) lVar).getKits());
            }
        }
    }

    public Collection<l> d() {
        return this.f13877d.values();
    }

    public j<?> a(int i2) {
        return new e(this, i2);
    }
}
