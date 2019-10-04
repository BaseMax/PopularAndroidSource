package b.H.a.b;

import android.content.Context;
import b.H.a.b.a.a;
import b.H.a.b.a.b;
import b.H.a.b.a.c;
import b.H.a.b.a.e;
import b.H.a.b.a.g;
import b.H.a.b.a.h;
import b.H.a.c.o;
import b.H.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WorkConstraintsTracker */
public class d implements c.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1422a = f.a("WorkConstraintsTracker");

    /* renamed from: b  reason: collision with root package name */
    public final c f1423b;

    /* renamed from: c  reason: collision with root package name */
    public final c[] f1424c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f1425d = new Object();

    public d(Context context, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f1423b = cVar;
        this.f1424c = new c[]{new a(applicationContext), new b(applicationContext), new h(applicationContext), new b.H.a.b.a.d(applicationContext), new g(applicationContext), new b.H.a.b.a.f(applicationContext), new e(applicationContext)};
    }

    public void a() {
        synchronized (this.f1425d) {
            for (c a2 : this.f1424c) {
                a2.a();
            }
        }
    }

    public void b(List<String> list) {
        synchronized (this.f1425d) {
            if (this.f1423b != null) {
                this.f1423b.a(list);
            }
        }
    }

    public void c(List<o> list) {
        synchronized (this.f1425d) {
            for (c a2 : this.f1424c) {
                a2.a((c.a) null);
            }
            for (c a3 : this.f1424c) {
                a3.a(list);
            }
            for (c a4 : this.f1424c) {
                a4.a((c.a) this);
            }
        }
    }

    public boolean a(String str) {
        synchronized (this.f1425d) {
            for (c cVar : this.f1424c) {
                if (cVar.a(str)) {
                    f.a().a(f1422a, String.format("Work %s constrained by %s", new Object[]{str, cVar.getClass().getSimpleName()}), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public void a(List<String> list) {
        synchronized (this.f1425d) {
            ArrayList arrayList = new ArrayList();
            for (String next : list) {
                if (a(next)) {
                    f.a().a(f1422a, String.format("Constraints met for %s", new Object[]{next}), new Throwable[0]);
                    arrayList.add(next);
                }
            }
            if (this.f1423b != null) {
                this.f1423b.b(arrayList);
            }
        }
    }
}
