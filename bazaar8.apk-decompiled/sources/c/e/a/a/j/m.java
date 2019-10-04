package c.e.a.a.j;

import android.os.Handler;
import android.os.Looper;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.n.A;
import c.e.a.a.o.C0737e;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: BaseMediaSource */
public abstract class m implements v {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<v.b> f8947a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    public final w.a f8948b = new w.a();

    /* renamed from: c  reason: collision with root package name */
    public Looper f8949c;

    /* renamed from: d  reason: collision with root package name */
    public Z f8950d;

    /* renamed from: e  reason: collision with root package name */
    public Object f8951e;

    public final void a(Z z, Object obj) {
        this.f8950d = z;
        this.f8951e = obj;
        Iterator<v.b> it = this.f8947a.iterator();
        while (it.hasNext()) {
            it.next().a(this, z, obj);
        }
    }

    public abstract void a(A a2);

    public abstract void b();

    public final w.a a(v.a aVar) {
        return this.f8948b.a(0, aVar, 0);
    }

    public final w.a a(v.a aVar, long j2) {
        C0737e.a(aVar != null);
        return this.f8948b.a(0, aVar, j2);
    }

    public final w.a a(int i2, v.a aVar, long j2) {
        return this.f8948b.a(i2, aVar, j2);
    }

    public final void a(Handler handler, w wVar) {
        this.f8948b.a(handler, wVar);
    }

    public final void a(w wVar) {
        this.f8948b.a(wVar);
    }

    public final void a(v.b bVar, A a2) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f8949c;
        C0737e.a(looper == null || looper == myLooper);
        this.f8947a.add(bVar);
        if (this.f8949c == null) {
            this.f8949c = myLooper;
            a(a2);
            return;
        }
        Z z = this.f8950d;
        if (z != null) {
            bVar.a(this, z, this.f8951e);
        }
    }

    public final void a(v.b bVar) {
        this.f8947a.remove(bVar);
        if (this.f8947a.isEmpty()) {
            this.f8949c = null;
            this.f8950d = null;
            this.f8951e = null;
            b();
        }
    }
}
