package b.H.a;

import android.content.Context;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import b.H.a.q;
import b.H.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* compiled from: Processor */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1426a = f.a("Processor");

    /* renamed from: b  reason: collision with root package name */
    public Context f1427b;

    /* renamed from: c  reason: collision with root package name */
    public b.H.a f1428c;

    /* renamed from: d  reason: collision with root package name */
    public b.H.a.d.b.a f1429d;

    /* renamed from: e  reason: collision with root package name */
    public WorkDatabase f1430e;

    /* renamed from: f  reason: collision with root package name */
    public Map<String, q> f1431f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    public List<d> f1432g;

    /* renamed from: h  reason: collision with root package name */
    public Set<String> f1433h;

    /* renamed from: i  reason: collision with root package name */
    public final List<a> f1434i;

    /* renamed from: j  reason: collision with root package name */
    public final Object f1435j;

    /* compiled from: Processor */
    private static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public a f1444a;

        /* renamed from: b  reason: collision with root package name */
        public String f1445b;

        /* renamed from: c  reason: collision with root package name */
        public c.e.b.a.a.a<Boolean> f1446c;

        public a(a aVar, String str, c.e.b.a.a.a<Boolean> aVar2) {
            this.f1444a = aVar;
            this.f1445b = str;
            this.f1446c = aVar2;
        }

        public void run() {
            boolean z;
            try {
                z = this.f1446c.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z = true;
            }
            this.f1444a.a(this.f1445b, z);
        }
    }

    public c(Context context, b.H.a aVar, b.H.a.d.b.a aVar2, WorkDatabase workDatabase, List<d> list) {
        this.f1427b = context;
        this.f1428c = aVar;
        this.f1429d = aVar2;
        this.f1430e = workDatabase;
        this.f1432g = list;
        this.f1433h = new HashSet();
        this.f1434i = new ArrayList();
        this.f1435j = new Object();
    }

    public boolean a(String str, WorkerParameters.a aVar) {
        synchronized (this.f1435j) {
            if (this.f1431f.containsKey(str)) {
                f.a().a(f1426a, String.format("Work %s is already enqueued for processing", new Object[]{str}), new Throwable[0]);
                return false;
            }
            q.a aVar2 = new q.a(this.f1427b, this.f1428c, this.f1429d, this.f1430e, str);
            aVar2.a(this.f1432g);
            aVar2.a(aVar);
            q a2 = aVar2.a();
            c.e.b.a.a.a<Boolean> b2 = a2.b();
            b2.a(new a(this, str, b2), this.f1429d.b());
            this.f1431f.put(str, a2);
            this.f1429d.c().execute(a2);
            f.a().a(f1426a, String.format("%s: processing %s", new Object[]{c.class.getSimpleName(), str}), new Throwable[0]);
            return true;
        }
    }

    public boolean b(String str) {
        boolean containsKey;
        synchronized (this.f1435j) {
            containsKey = this.f1431f.containsKey(str);
        }
        return containsKey;
    }

    public boolean c(String str) {
        return a(str, (WorkerParameters.a) null);
    }

    public boolean d(String str) {
        synchronized (this.f1435j) {
            f.a().a(f1426a, String.format("Processor cancelling %s", new Object[]{str}), new Throwable[0]);
            this.f1433h.add(str);
            q remove = this.f1431f.remove(str);
            if (remove != null) {
                remove.a(true);
                f.a().a(f1426a, String.format("WorkerWrapper cancelled for %s", new Object[]{str}), new Throwable[0]);
                return true;
            }
            f.a().a(f1426a, String.format("WorkerWrapper could not be found for %s", new Object[]{str}), new Throwable[0]);
            return false;
        }
    }

    public boolean e(String str) {
        synchronized (this.f1435j) {
            f.a().a(f1426a, String.format("Processor stopping %s", new Object[]{str}), new Throwable[0]);
            q remove = this.f1431f.remove(str);
            if (remove != null) {
                remove.a(false);
                f.a().a(f1426a, String.format("WorkerWrapper stopped for %s", new Object[]{str}), new Throwable[0]);
                return true;
            }
            f.a().a(f1426a, String.format("WorkerWrapper could not be found for %s", new Object[]{str}), new Throwable[0]);
            return false;
        }
    }

    public void b(a aVar) {
        synchronized (this.f1435j) {
            this.f1434i.remove(aVar);
        }
    }

    public boolean a(String str) {
        boolean contains;
        synchronized (this.f1435j) {
            contains = this.f1433h.contains(str);
        }
        return contains;
    }

    public void a(a aVar) {
        synchronized (this.f1435j) {
            this.f1434i.add(aVar);
        }
    }

    public void a(String str, boolean z) {
        synchronized (this.f1435j) {
            this.f1431f.remove(str);
            f.a().a(f1426a, String.format("%s %s executed; reschedule = %s", new Object[]{getClass().getSimpleName(), str, Boolean.valueOf(z)}), new Throwable[0]);
            for (a a2 : this.f1434i) {
                a2.a(str, z);
            }
        }
    }
}
