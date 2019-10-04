package b.z;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.f.C0243b;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* compiled from: InvalidationTracker */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f3626a = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b  reason: collision with root package name */
    public final C0243b<String, Integer> f3627b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f3628c;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, Set<String>> f3629d;

    /* renamed from: e  reason: collision with root package name */
    public final RoomDatabase f3630e;

    /* renamed from: f  reason: collision with root package name */
    public AtomicBoolean f3631f;

    /* renamed from: g  reason: collision with root package name */
    public volatile boolean f3632g;

    /* renamed from: h  reason: collision with root package name */
    public volatile f f3633h;

    /* renamed from: i  reason: collision with root package name */
    public a f3634i;

    /* renamed from: j  reason: collision with root package name */
    public final h f3635j;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: k  reason: collision with root package name */
    public final b.c.a.b.b<b, c> f3636k;

    /* renamed from: l  reason: collision with root package name */
    public r f3637l;
    public Runnable m;

    /* compiled from: InvalidationTracker */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f3638a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f3639b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f3640c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f3641d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3642e;

        public a(int i2) {
            this.f3638a = new long[i2];
            this.f3639b = new boolean[i2];
            this.f3640c = new int[i2];
            Arrays.fill(this.f3638a, 0);
            Arrays.fill(this.f3639b, false);
        }

        public boolean a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i2 : iArr) {
                    long j2 = this.f3638a[i2];
                    this.f3638a[i2] = 1 + j2;
                    if (j2 == 0) {
                        this.f3641d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        public boolean b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i2 : iArr) {
                    long j2 = this.f3638a[i2];
                    this.f3638a[i2] = j2 - 1;
                    if (j2 == 1) {
                        this.f3641d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        public int[] a() {
            synchronized (this) {
                if (this.f3641d) {
                    if (!this.f3642e) {
                        int length = this.f3638a.length;
                        int i2 = 0;
                        while (true) {
                            int i3 = 1;
                            if (i2 < length) {
                                boolean z = this.f3638a[i2] > 0;
                                if (z != this.f3639b[i2]) {
                                    int[] iArr = this.f3640c;
                                    if (!z) {
                                        i3 = 2;
                                    }
                                    iArr[i2] = i3;
                                } else {
                                    this.f3640c[i2] = 0;
                                }
                                this.f3639b[i2] = z;
                                i2++;
                            } else {
                                this.f3642e = true;
                                this.f3641d = false;
                                int[] iArr2 = this.f3640c;
                                return iArr2;
                            }
                        }
                    }
                }
                return null;
            }
        }

        public void b() {
            synchronized (this) {
                this.f3642e = false;
            }
        }
    }

    /* compiled from: InvalidationTracker */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public final String[] f3643a;

        public b(String[] strArr) {
            this.f3643a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public abstract void a(Set<String> set);

        public boolean a() {
            return false;
        }
    }

    /* compiled from: InvalidationTracker */
    static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f3644a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f3645b;

        /* renamed from: c  reason: collision with root package name */
        public final b f3646c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f3647d;

        public c(b bVar, int[] iArr, String[] strArr) {
            this.f3646c = bVar;
            this.f3644a = iArr;
            this.f3645b = strArr;
            if (iArr.length == 1) {
                b.f.d dVar = new b.f.d();
                dVar.add(this.f3645b[0]);
                this.f3647d = Collections.unmodifiableSet(dVar);
                return;
            }
            this.f3647d = null;
        }

        public void a(Set<Integer> set) {
            int length = this.f3644a.length;
            Set set2 = null;
            for (int i2 = 0; i2 < length; i2++) {
                if (set.contains(Integer.valueOf(this.f3644a[i2]))) {
                    if (length == 1) {
                        set2 = this.f3647d;
                    } else {
                        if (set2 == null) {
                            set2 = new b.f.d(length);
                        }
                        set2.add(this.f3645b[i2]);
                    }
                }
            }
            if (set2 != null) {
                this.f3646c.a(set2);
            }
        }

        public void a(String[] strArr) {
            Set<String> set = null;
            if (this.f3645b.length == 1) {
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (strArr[i2].equalsIgnoreCase(this.f3645b[0])) {
                        set = this.f3647d;
                        break;
                    } else {
                        i2++;
                    }
                }
            } else {
                b.f.d dVar = new b.f.d();
                for (String str : strArr) {
                    String[] strArr2 = this.f3645b;
                    int length2 = strArr2.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length2) {
                            break;
                        }
                        String str2 = strArr2[i3];
                        if (str2.equalsIgnoreCase(str)) {
                            dVar.add(str2);
                            break;
                        }
                        i3++;
                    }
                }
                if (dVar.size() > 0) {
                    set = dVar;
                }
            }
            if (set != null) {
                this.f3646c.a(set);
            }
        }
    }

    /* compiled from: InvalidationTracker */
    static class d extends b {

        /* renamed from: b  reason: collision with root package name */
        public final j f3648b;

        /* renamed from: c  reason: collision with root package name */
        public final WeakReference<b> f3649c;

        public d(j jVar, b bVar) {
            super(bVar.f3643a);
            this.f3648b = jVar;
            this.f3649c = new WeakReference<>(bVar);
        }

        public void a(Set<String> set) {
            b bVar = (b) this.f3649c.get();
            if (bVar == null) {
                this.f3648b.c((b) this);
            } else {
                bVar.a(set);
            }
        }
    }

    public j(RoomDatabase roomDatabase, String... strArr) {
        this(roomDatabase, new HashMap(), Collections.emptyMap(), strArr);
    }

    public void a(b.C.a.b bVar) {
        synchronized (this) {
            if (this.f3632g) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            bVar.b("PRAGMA temp_store = MEMORY;");
            bVar.b("PRAGMA recursive_triggers='ON';");
            bVar.b("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            b(bVar);
            this.f3633h = bVar.c("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f3632g = true;
        }
    }

    public final void b(b.C.a.b bVar, int i2) {
        String str = this.f3628c[i2];
        StringBuilder sb = new StringBuilder();
        for (String a2 : f3626a) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            a(sb, str, a2);
            bVar.b(sb.toString());
        }
    }

    public final String[] c(String[] strArr) {
        String[] b2 = b(strArr);
        int length = b2.length;
        int i2 = 0;
        while (i2 < length) {
            String str = b2[i2];
            if (this.f3627b.containsKey(str.toLowerCase(Locale.US))) {
                i2++;
            } else {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        return b2;
    }

    public j(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f3631f = new AtomicBoolean(false);
        this.f3632g = false;
        this.f3636k = new b.c.a.b.b<>();
        this.m = new i(this);
        this.f3630e = roomDatabase;
        this.f3634i = new a(strArr.length);
        this.f3627b = new C0243b<>();
        this.f3629d = map2;
        this.f3635j = new h(this.f3630e);
        int length = strArr.length;
        this.f3628c = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String lowerCase = strArr[i2].toLowerCase(Locale.US);
            this.f3627b.put(lowerCase, Integer.valueOf(i2));
            String str = map.get(strArr[i2]);
            if (str != null) {
                this.f3628c[i2] = str.toLowerCase(Locale.US);
            } else {
                this.f3628c[i2] = lowerCase;
            }
        }
        for (Map.Entry next : map.entrySet()) {
            String lowerCase2 = ((String) next.getValue()).toLowerCase(Locale.US);
            if (this.f3627b.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) next.getKey()).toLowerCase(Locale.US);
                C0243b<String, Integer> bVar = this.f3627b;
                bVar.put(lowerCase3, bVar.get(lowerCase2));
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void c(b bVar) {
        c remove;
        synchronized (this.f3636k) {
            remove = this.f3636k.remove(bVar);
        }
        if (remove != null && this.f3634i.b(remove.f3644a)) {
            c();
        }
    }

    public final String[] b(String[] strArr) {
        b.f.d dVar = new b.f.d();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f3629d.containsKey(lowerCase)) {
                dVar.addAll(this.f3629d.get(lowerCase));
            } else {
                dVar.add(str);
            }
        }
        return (String[]) dVar.toArray(new String[dVar.size()]);
    }

    public void c() {
        if (this.f3630e.n()) {
            b(this.f3630e.i().a());
        }
    }

    public void a(Context context, String str) {
        this.f3637l = new r(context, str, this, this.f3630e.j());
    }

    public static void a(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append(e.a.a.a.a.d.c.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb.append(str2);
        sb.append("`");
    }

    public void b(b bVar) {
        a((b) new d(this, bVar));
    }

    public void b() {
        if (this.f3631f.compareAndSet(false, true)) {
            this.f3630e.j().execute(this.m);
        }
    }

    public void b(b.C.a.b bVar) {
        if (!bVar.r()) {
            while (true) {
                try {
                    Lock g2 = this.f3630e.g();
                    g2.lock();
                    try {
                        int[] a2 = this.f3634i.a();
                        if (a2 == null) {
                            g2.unlock();
                            return;
                        }
                        int length = a2.length;
                        bVar.n();
                        for (int i2 = 0; i2 < length; i2++) {
                            int i3 = a2[i2];
                            if (i3 == 1) {
                                a(bVar, i2);
                            } else if (i3 == 2) {
                                b(bVar, i2);
                            }
                        }
                        bVar.p();
                        bVar.q();
                        this.f3634i.b();
                        g2.unlock();
                    } catch (Throwable th) {
                        g2.unlock();
                        throw th;
                    }
                } catch (SQLiteException | IllegalStateException e2) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
                    return;
                }
            }
        }
    }

    public final void a(b.C.a.b bVar, int i2) {
        bVar.b("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i2 + ", 0)");
        String str = this.f3628c[i2];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3626a) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            a(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i2);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            bVar.b(sb.toString());
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void a(b bVar) {
        c b2;
        String[] b3 = b(bVar.f3643a);
        int[] iArr = new int[b3.length];
        int length = b3.length;
        int i2 = 0;
        while (i2 < length) {
            Integer num = this.f3627b.get(b3[i2].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i2] = num.intValue();
                i2++;
            } else {
                throw new IllegalArgumentException("There is no table with name " + b3[i2]);
            }
        }
        c cVar = new c(bVar, iArr, b3);
        synchronized (this.f3636k) {
            b2 = this.f3636k.b(bVar, cVar);
        }
        if (b2 == null && this.f3634i.a(iArr)) {
            c();
        }
    }

    public boolean a() {
        if (!this.f3630e.n()) {
            return false;
        }
        if (!this.f3632g) {
            this.f3630e.i().a();
        }
        if (this.f3632g) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public void a(String... strArr) {
        synchronized (this.f3636k) {
            Iterator<Map.Entry<b, c>> it = this.f3636k.iterator();
            while (it.hasNext()) {
                Map.Entry next = it.next();
                if (!((b) next.getKey()).a()) {
                    ((c) next.getValue()).a(strArr);
                }
            }
        }
    }

    public <T> LiveData<T> a(String[] strArr, boolean z, Callable<T> callable) {
        return this.f3635j.a(c(strArr), z, callable);
    }
}
