package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import b.C.a.a.e;
import b.C.a.c;
import b.C.a.f;
import b.c.a.a.C0237c;
import b.z.C0354c;
import b.z.F;
import b.z.j;
import b.z.u;
import com.crashlytics.android.answers.SessionEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public abstract class RoomDatabase {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public volatile b.C.a.b f937a;

    /* renamed from: b  reason: collision with root package name */
    public Executor f938b;

    /* renamed from: c  reason: collision with root package name */
    public Executor f939c;

    /* renamed from: d  reason: collision with root package name */
    public b.C.a.c f940d;

    /* renamed from: e  reason: collision with root package name */
    public final j f941e = d();

    /* renamed from: f  reason: collision with root package name */
    public boolean f942f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f943g;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    public List<b> f944h;

    /* renamed from: i  reason: collision with root package name */
    public final ReentrantReadWriteLock f945i = new ReentrantReadWriteLock();

    /* renamed from: j  reason: collision with root package name */
    public final ThreadLocal<Integer> f946j = new ThreadLocal<>();

    /* renamed from: k  reason: collision with root package name */
    public final Map<String, Object> f947k = new ConcurrentHashMap();

    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        @SuppressLint({"NewApi"})
        public JournalMode a(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                ActivityManager activityManager = (ActivityManager) context.getSystemService(SessionEvent.ACTIVITY_KEY);
                if (activityManager != null && !b.i.a.c.a(activityManager)) {
                    return WRITE_AHEAD_LOGGING;
                }
            }
            return TRUNCATE;
        }
    }

    public static class a<T extends RoomDatabase> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<T> f949a;

        /* renamed from: b  reason: collision with root package name */
        public final String f950b;

        /* renamed from: c  reason: collision with root package name */
        public final Context f951c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<b> f952d;

        /* renamed from: e  reason: collision with root package name */
        public Executor f953e;

        /* renamed from: f  reason: collision with root package name */
        public Executor f954f;

        /* renamed from: g  reason: collision with root package name */
        public c.C0015c f955g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f956h;

        /* renamed from: i  reason: collision with root package name */
        public JournalMode f957i = JournalMode.AUTOMATIC;

        /* renamed from: j  reason: collision with root package name */
        public boolean f958j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f959k = true;

        /* renamed from: l  reason: collision with root package name */
        public boolean f960l;
        public final c m = new c();
        public Set<Integer> n;
        public Set<Integer> o;

        public a(Context context, Class<T> cls, String str) {
            this.f951c = context;
            this.f949a = cls;
            this.f950b = str;
        }

        public a<T> a(b.z.a.a... aVarArr) {
            if (this.o == null) {
                this.o = new HashSet();
            }
            for (b.z.a.a aVar : aVarArr) {
                this.o.add(Integer.valueOf(aVar.f3585a));
                this.o.add(Integer.valueOf(aVar.f3586b));
            }
            this.m.a(aVarArr);
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        public T b() {
            if (this.f951c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            } else if (this.f949a != null) {
                if (this.f953e == null && this.f954f == null) {
                    Executor b2 = C0237c.b();
                    this.f954f = b2;
                    this.f953e = b2;
                } else {
                    Executor executor = this.f953e;
                    if (executor != null && this.f954f == null) {
                        this.f954f = executor;
                    } else if (this.f953e == null) {
                        Executor executor2 = this.f954f;
                        if (executor2 != null) {
                            this.f953e = executor2;
                        }
                    }
                }
                Set<Integer> set = this.o;
                if (!(set == null || this.n == null)) {
                    for (Integer next : set) {
                        if (this.n.contains(next)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + next);
                        }
                    }
                }
                if (this.f955g == null) {
                    this.f955g = new e();
                }
                Context context = this.f951c;
                C0354c cVar = new C0354c(context, this.f950b, this.f955g, this.m, this.f952d, this.f956h, this.f957i.a(context), this.f953e, this.f954f, this.f958j, this.f959k, this.f960l, this.n);
                T t = (RoomDatabase) u.a(this.f949a, "_Impl");
                t.b(cVar);
                return t;
            } else {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
        }

        public a<T> c() {
            this.f959k = false;
            this.f960l = true;
            return this;
        }

        public a<T> a() {
            this.f956h = true;
            return this;
        }

        public a<T> a(b bVar) {
            if (this.f952d == null) {
                this.f952d = new ArrayList<>();
            }
            this.f952d.add(bVar);
            return this;
        }
    }

    public static abstract class b {
        public void a(b.C.a.b bVar) {
        }

        public void b(b.C.a.b bVar) {
        }
    }

    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public b.f.j<b.f.j<b.z.a.a>> f961a = new b.f.j<>();

        public void a(b.z.a.a... aVarArr) {
            for (b.z.a.a a2 : aVarArr) {
                a(a2);
            }
        }

        public final void a(b.z.a.a aVar) {
            int i2 = aVar.f3585a;
            int i3 = aVar.f3586b;
            b.f.j a2 = this.f961a.a(i2);
            if (a2 == null) {
                a2 = new b.f.j();
                this.f961a.c(i2, a2);
            }
            b.z.a.a aVar2 = (b.z.a.a) a2.a(i3);
            if (aVar2 != null) {
                Log.w("ROOM", "Overriding migration " + aVar2 + " with " + aVar);
            }
            a2.a(i3, aVar);
        }

        public List<b.z.a.a> a(int i2, int i3) {
            if (i2 == i3) {
                return Collections.emptyList();
            }
            return a(new ArrayList(), i3 > i2, i2, i3);
        }

        public final List<b.z.a.a> a(List<b.z.a.a> list, boolean z, int i2, int i3) {
            boolean z2;
            int i4;
            int i5;
            int i6 = z ? -1 : 1;
            do {
                if (z) {
                    if (i2 >= i3) {
                        return list;
                    }
                } else if (i2 <= i3) {
                    return list;
                }
                b.f.j a2 = this.f961a.a(i2);
                if (a2 != null) {
                    int c2 = a2.c();
                    z2 = false;
                    if (z) {
                        i5 = c2 - 1;
                        i4 = -1;
                    } else {
                        i4 = c2;
                        i5 = 0;
                    }
                    while (true) {
                        if (i5 == i4) {
                            break;
                        }
                        int c3 = a2.c(i5);
                        if (!z ? !(c3 < i3 || c3 >= i2) : !(c3 > i3 || c3 <= i2)) {
                            list.add(a2.f(i5));
                            i2 = c3;
                            z2 = true;
                            continue;
                            break;
                        }
                        i5 += i6;
                    }
                } else {
                    return null;
                }
            } while (z2);
            return null;
        }
    }

    public static boolean m() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public abstract b.C.a.c a(C0354c cVar);

    public void a() {
        if (!this.f942f && m()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void b(C0354c cVar) {
        this.f940d = a(cVar);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            if (cVar.f3615g == JournalMode.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f940d.a(z);
        }
        this.f944h = cVar.f3613e;
        this.f938b = cVar.f3616h;
        this.f939c = new F(cVar.f3617i);
        this.f942f = cVar.f3614f;
        this.f943g = z;
        if (cVar.f3618j) {
            this.f941e.a(cVar.f3610b, cVar.f3611c);
        }
    }

    @Deprecated
    public void c() {
        a();
        b.C.a.b a2 = this.f940d.a();
        this.f941e.b(a2);
        a2.n();
    }

    public abstract j d();

    @Deprecated
    public void e() {
        this.f940d.a().q();
        if (!l()) {
            this.f941e.b();
        }
    }

    public Map<String, Object> f() {
        return this.f947k;
    }

    public Lock g() {
        return this.f945i.readLock();
    }

    public j h() {
        return this.f941e;
    }

    public b.C.a.c i() {
        return this.f940d;
    }

    public Executor j() {
        return this.f938b;
    }

    public Executor k() {
        return this.f939c;
    }

    public boolean l() {
        return this.f940d.a().r();
    }

    public boolean n() {
        b.C.a.b bVar = this.f937a;
        return bVar != null && bVar.isOpen();
    }

    @Deprecated
    public void o() {
        this.f940d.a().p();
    }

    public Cursor a(b.C.a.e eVar) {
        a();
        b();
        return this.f940d.a().a(eVar);
    }

    public f a(String str) {
        a();
        b();
        return this.f940d.a().c(str);
    }

    public void a(b.C.a.b bVar) {
        this.f941e.a(bVar);
    }

    public void b() {
        if (!l() && this.f946j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }
}
