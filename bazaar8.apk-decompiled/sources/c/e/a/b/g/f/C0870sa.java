package c.e.a.b.g.f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: c.e.a.b.g.f.sa  reason: case insensitive filesystem */
public abstract class C0870sa<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f10515a = new Object();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    public static Context f10516b = null;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f10517c = false;

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicInteger f10518d = new AtomicInteger();

    /* renamed from: e  reason: collision with root package name */
    public final C0894ya f10519e;

    /* renamed from: f  reason: collision with root package name */
    public final String f10520f;

    /* renamed from: g  reason: collision with root package name */
    public final T f10521g;

    /* renamed from: h  reason: collision with root package name */
    public volatile int f10522h;

    /* renamed from: i  reason: collision with root package name */
    public volatile T f10523i;

    public C0870sa(C0894ya yaVar, String str, T t) {
        this.f10522h = -1;
        if (yaVar.f10555b != null) {
            this.f10519e = yaVar;
            this.f10520f = str;
            this.f10521g = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void a(Context context) {
        synchronized (f10515a) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f10516b != context) {
                synchronized (C0827ha.class) {
                    C0827ha.f10419a.clear();
                }
                synchronized (C0898za.class) {
                    C0898za.f10566a.clear();
                }
                synchronized (C0855oa.class) {
                    C0855oa.f10493a = null;
                }
                f10518d.incrementAndGet();
                f10516b = context;
            }
        }
    }

    public static void c() {
        f10518d.incrementAndGet();
    }

    public abstract T a(Object obj);

    public final T b() {
        return this.f10521g;
    }

    public final String d() {
        return a(this.f10519e.f10557d);
    }

    public final T e() {
        C0843la laVar;
        C0894ya yaVar = this.f10519e;
        String str = (String) C0855oa.a(f10516b).a("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (!(str != null && C0815ea.f10387c.matcher(str).matches())) {
            if (this.f10519e.f10555b != null) {
                C0894ya yaVar2 = this.f10519e;
                laVar = C0827ha.a(f10516b.getContentResolver(), this.f10519e.f10555b);
            } else {
                Context context = f10516b;
                C0894ya yaVar3 = this.f10519e;
                laVar = C0898za.a(context, (String) null);
            }
            if (laVar != null) {
                Object a2 = laVar.a(d());
                if (a2 != null) {
                    return a(a2);
                }
            }
        } else {
            String valueOf = String.valueOf(d());
            Log.w("PhenotypeFlag", valueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(valueOf) : new String("Bypass reading Phenotype values for flag: "));
        }
        return null;
    }

    public final T f() {
        C0894ya yaVar = this.f10519e;
        Object a2 = C0855oa.a(f10516b).a(a(this.f10519e.f10556c));
        if (a2 != null) {
            return a(a2);
        }
        return null;
    }

    public /* synthetic */ C0870sa(C0894ya yaVar, String str, Object obj, C0874ta taVar) {
        this(yaVar, str, obj);
    }

    public final String a(String str) {
        if (str != null && str.isEmpty()) {
            return this.f10520f;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f10520f);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final T a() {
        int i2 = f10518d.get();
        if (this.f10522h < i2) {
            synchronized (this) {
                if (this.f10522h < i2) {
                    if (f10516b != null) {
                        C0894ya yaVar = this.f10519e;
                        T e2 = e();
                        if (e2 == null) {
                            e2 = f();
                            if (e2 == null) {
                                e2 = this.f10521g;
                            }
                        }
                        this.f10523i = e2;
                        this.f10522h = i2;
                    } else {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                }
            }
        }
        return this.f10523i;
    }

    public static C0870sa<Long> a(C0894ya yaVar, String str, long j2) {
        return new C0874ta(yaVar, str, Long.valueOf(j2));
    }

    public static C0870sa<Integer> a(C0894ya yaVar, String str, int i2) {
        return new C0878ua(yaVar, str, Integer.valueOf(i2));
    }

    public static C0870sa<Boolean> a(C0894ya yaVar, String str, boolean z) {
        return new C0882va(yaVar, str, Boolean.valueOf(z));
    }

    public static C0870sa<Double> a(C0894ya yaVar, String str, double d2) {
        return new C0886wa(yaVar, str, Double.valueOf(d2));
    }

    public static C0870sa<String> a(C0894ya yaVar, String str, String str2) {
        return new C0890xa(yaVar, str, str2);
    }
}
