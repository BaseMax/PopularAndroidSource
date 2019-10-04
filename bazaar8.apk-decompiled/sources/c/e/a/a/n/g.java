package c.e.a.a.n;

import c.e.a.a.o.I;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: BaseDataSource */
public abstract class g implements j {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f9453a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<A> f9454b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    public int f9455c;

    /* renamed from: d  reason: collision with root package name */
    public l f9456d;

    public g(boolean z) {
        this.f9453a = z;
    }

    public /* synthetic */ Map<String, List<String>> a() {
        return i.a(this);
    }

    public final void a(A a2) {
        if (!this.f9454b.contains(a2)) {
            this.f9454b.add(a2);
            this.f9455c++;
        }
    }

    public final void b(l lVar) {
        for (int i2 = 0; i2 < this.f9455c; i2++) {
            this.f9454b.get(i2).c(this, lVar, this.f9453a);
        }
    }

    public final void c(l lVar) {
        this.f9456d = lVar;
        for (int i2 = 0; i2 < this.f9455c; i2++) {
            this.f9454b.get(i2).b(this, lVar, this.f9453a);
        }
    }

    public final void b() {
        l lVar = this.f9456d;
        I.a(lVar);
        l lVar2 = lVar;
        for (int i2 = 0; i2 < this.f9455c; i2++) {
            this.f9454b.get(i2).a(this, lVar2, this.f9453a);
        }
        this.f9456d = null;
    }

    public final void a(int i2) {
        l lVar = this.f9456d;
        I.a(lVar);
        l lVar2 = lVar;
        for (int i3 = 0; i3 < this.f9455c; i3++) {
            this.f9454b.get(i3).a(this, lVar2, this.f9453a, i2);
        }
    }
}
