package c.b.a.g;

/* compiled from: ErrorRequestCoordinator */
public final class a implements d, c {

    /* renamed from: a  reason: collision with root package name */
    public final d f4360a;

    /* renamed from: b  reason: collision with root package name */
    public c f4361b;

    /* renamed from: c  reason: collision with root package name */
    public c f4362c;

    public a(d dVar) {
        this.f4360a = dVar;
    }

    public void a(c cVar, c cVar2) {
        this.f4361b = cVar;
        this.f4362c = cVar2;
    }

    public boolean b() {
        return (this.f4361b.c() ? this.f4362c : this.f4361b).b();
    }

    public boolean c() {
        return this.f4361b.c() && this.f4362c.c();
    }

    public void clear() {
        this.f4361b.clear();
        if (this.f4362c.isRunning()) {
            this.f4362c.clear();
        }
    }

    public boolean d() {
        return (this.f4361b.c() ? this.f4362c : this.f4361b).d();
    }

    public void e() {
        if (!this.f4361b.isRunning()) {
            this.f4361b.e();
        }
    }

    public boolean f(c cVar) {
        return g() && g(cVar);
    }

    public final boolean g() {
        d dVar = this.f4360a;
        return dVar == null || dVar.f(this);
    }

    public final boolean h() {
        d dVar = this.f4360a;
        return dVar == null || dVar.c(this);
    }

    public final boolean i() {
        d dVar = this.f4360a;
        return dVar == null || dVar.d(this);
    }

    public boolean isComplete() {
        return (this.f4361b.c() ? this.f4362c : this.f4361b).isComplete();
    }

    public boolean isRunning() {
        return (this.f4361b.c() ? this.f4362c : this.f4361b).isRunning();
    }

    public final boolean j() {
        d dVar = this.f4360a;
        return dVar != null && dVar.f();
    }

    public void b(c cVar) {
        if (!cVar.equals(this.f4362c)) {
            if (!this.f4362c.isRunning()) {
                this.f4362c.e();
            }
            return;
        }
        d dVar = this.f4360a;
        if (dVar != null) {
            dVar.b(this);
        }
    }

    public boolean c(c cVar) {
        return h() && g(cVar);
    }

    public boolean d(c cVar) {
        return i() && g(cVar);
    }

    public boolean f() {
        return j() || b();
    }

    public final boolean g(c cVar) {
        return cVar.equals(this.f4361b) || (this.f4361b.c() && cVar.equals(this.f4362c));
    }

    public void a() {
        this.f4361b.a();
        this.f4362c.a();
    }

    public void e(c cVar) {
        d dVar = this.f4360a;
        if (dVar != null) {
            dVar.e(this);
        }
    }

    public boolean a(c cVar) {
        if (!(cVar instanceof a)) {
            return false;
        }
        a aVar = (a) cVar;
        if (!this.f4361b.a(aVar.f4361b) || !this.f4362c.a(aVar.f4362c)) {
            return false;
        }
        return true;
    }
}
