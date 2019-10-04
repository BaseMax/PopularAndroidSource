package b.H.a.a.a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.WorkInfo;
import b.H.a.b.c;
import b.H.a.c.o;
import b.H.a.d;
import b.H.a.m;
import b.H.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GreedyScheduler */
public class a implements d, c, b.H.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1327a = f.a("GreedyScheduler");

    /* renamed from: b  reason: collision with root package name */
    public m f1328b;

    /* renamed from: c  reason: collision with root package name */
    public b.H.a.b.d f1329c;

    /* renamed from: d  reason: collision with root package name */
    public List<o> f1330d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public boolean f1331e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f1332f;

    public a(Context context, m mVar) {
        this.f1328b = mVar;
        this.f1329c = new b.H.a.b.d(context, this);
        this.f1332f = new Object();
    }

    public void a(o... oVarArr) {
        a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (o oVar : oVarArr) {
            if (oVar.f1467d == WorkInfo.State.ENQUEUED && !oVar.d() && oVar.f1472i == 0 && !oVar.c()) {
                if (!oVar.b()) {
                    f.a().a(f1327a, String.format("Starting work for %s", new Object[]{oVar.f1466c}), new Throwable[0]);
                    this.f1328b.c(oVar.f1466c);
                } else if (Build.VERSION.SDK_INT < 24 || !oVar.f1475l.e()) {
                    arrayList.add(oVar);
                    arrayList2.add(oVar.f1466c);
                }
            }
        }
        synchronized (this.f1332f) {
            if (!arrayList.isEmpty()) {
                f.a().a(f1327a, String.format("Starting tracking for [%s]", new Object[]{TextUtils.join(",", arrayList2)}), new Throwable[0]);
                this.f1330d.addAll(arrayList);
                this.f1329c.c(this.f1330d);
            }
        }
    }

    public void b(List<String> list) {
        for (String next : list) {
            f.a().a(f1327a, String.format("Constraints met: Scheduling work ID %s", new Object[]{next}), new Throwable[0]);
            this.f1328b.c(next);
        }
    }

    public final void b(String str) {
        synchronized (this.f1332f) {
            int size = this.f1330d.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                } else if (this.f1330d.get(i2).f1466c.equals(str)) {
                    f.a().a(f1327a, String.format("Stopping tracking for %s", new Object[]{str}), new Throwable[0]);
                    this.f1330d.remove(i2);
                    this.f1329c.c(this.f1330d);
                    break;
                } else {
                    i2++;
                }
            }
        }
    }

    public void a(String str) {
        a();
        f.a().a(f1327a, String.format("Cancelling work ID %s", new Object[]{str}), new Throwable[0]);
        this.f1328b.d(str);
    }

    public void a(List<String> list) {
        for (String next : list) {
            f.a().a(f1327a, String.format("Constraints not met: Cancelling work ID %s", new Object[]{next}), new Throwable[0]);
            this.f1328b.d(next);
        }
    }

    public void a(String str, boolean z) {
        b(str);
    }

    public final void a() {
        if (!this.f1331e) {
            this.f1328b.e().a((b.H.a.a) this);
            this.f1331e = true;
        }
    }
}
