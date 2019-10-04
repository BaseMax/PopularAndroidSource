package b.H.a;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import b.H.a.d.d;
import b.H.i;
import b.H.l;
import b.H.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: WorkContinuationImpl */
public class f extends l {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1566a = b.H.f.a("WorkContinuationImpl");

    /* renamed from: b  reason: collision with root package name */
    public final m f1567b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1568c;

    /* renamed from: d  reason: collision with root package name */
    public final ExistingWorkPolicy f1569d;

    /* renamed from: e  reason: collision with root package name */
    public final List<? extends n> f1570e;

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f1571f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f1572g;

    /* renamed from: h  reason: collision with root package name */
    public final List<f> f1573h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1574i;

    /* renamed from: j  reason: collision with root package name */
    public i f1575j;

    public f(m mVar, List<? extends n> list) {
        this(mVar, null, ExistingWorkPolicy.KEEP, list, null);
    }

    public i a() {
        if (!this.f1574i) {
            d dVar = new d(this);
            this.f1567b.h().a(dVar);
            this.f1575j = dVar.b();
        } else {
            b.H.f.a().e(f1566a, String.format("Already enqueued work ids (%s)", new Object[]{TextUtils.join(", ", this.f1571f)}), new Throwable[0]);
        }
        return this.f1575j;
    }

    public ExistingWorkPolicy b() {
        return this.f1569d;
    }

    public List<String> c() {
        return this.f1571f;
    }

    public String d() {
        return this.f1568c;
    }

    public List<f> e() {
        return this.f1573h;
    }

    public List<? extends n> f() {
        return this.f1570e;
    }

    public m g() {
        return this.f1567b;
    }

    public boolean h() {
        return a(this, new HashSet());
    }

    public boolean i() {
        return this.f1574i;
    }

    public void j() {
        this.f1574i = true;
    }

    public f(m mVar, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends n> list) {
        this(mVar, str, existingWorkPolicy, list, null);
    }

    public f(m mVar, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends n> list, List<f> list2) {
        this.f1567b = mVar;
        this.f1568c = str;
        this.f1569d = existingWorkPolicy;
        this.f1570e = list;
        this.f1573h = list2;
        this.f1571f = new ArrayList(this.f1570e.size());
        this.f1572g = new ArrayList();
        if (list2 != null) {
            for (f fVar : list2) {
                this.f1572g.addAll(fVar.f1572g);
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String a2 = ((n) list.get(i2)).a();
            this.f1571f.add(a2);
            this.f1572g.add(a2);
        }
    }

    public static boolean a(f fVar, Set<String> set) {
        set.addAll(fVar.c());
        Set<String> a2 = a(fVar);
        for (String contains : set) {
            if (a2.contains(contains)) {
                return true;
            }
        }
        List<f> e2 = fVar.e();
        if (e2 != null && !e2.isEmpty()) {
            for (f a3 : e2) {
                if (a(a3, set)) {
                    return true;
                }
            }
        }
        set.removeAll(fVar.c());
        return false;
    }

    public static Set<String> a(f fVar) {
        HashSet hashSet = new HashSet();
        List<f> e2 = fVar.e();
        if (e2 != null && !e2.isEmpty()) {
            for (f c2 : e2) {
                hashSet.addAll(c2.c());
            }
        }
        return hashSet;
    }
}
