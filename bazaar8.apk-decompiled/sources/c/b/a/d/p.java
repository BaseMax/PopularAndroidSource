package c.b.a.d;

import android.util.Log;
import c.b.a.g.c;
import c.b.a.i.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public final Set<c> f4304a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f4305b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public boolean f4306c;

    public boolean a(c cVar) {
        return a(cVar, true);
    }

    public void b(c cVar) {
        this.f4304a.add(cVar);
        if (!this.f4306c) {
            cVar.e();
            return;
        }
        cVar.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f4305b.add(cVar);
    }

    public void c() {
        for (T t : k.a(this.f4304a)) {
            if (!t.isComplete() && !t.d()) {
                t.clear();
                if (!this.f4306c) {
                    t.e();
                } else {
                    this.f4305b.add(t);
                }
            }
        }
    }

    public void d() {
        this.f4306c = false;
        for (T t : k.a(this.f4304a)) {
            if (!t.isComplete() && !t.isRunning()) {
                t.e();
            }
        }
        this.f4305b.clear();
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f4304a.size() + ", isPaused=" + this.f4306c + "}";
    }

    public final boolean a(c cVar, boolean z) {
        boolean z2 = true;
        if (cVar == null) {
            return true;
        }
        boolean remove = this.f4304a.remove(cVar);
        if (!this.f4305b.remove(cVar) && !remove) {
            z2 = false;
        }
        if (z2) {
            cVar.clear();
            if (z) {
                cVar.a();
            }
        }
        return z2;
    }

    public void a() {
        for (T a2 : k.a(this.f4304a)) {
            a(a2, false);
        }
        this.f4305b.clear();
    }

    public void b() {
        this.f4306c = true;
        for (T t : k.a(this.f4304a)) {
            if (t.isRunning()) {
                t.clear();
                this.f4305b.add(t);
            }
        }
    }
}
