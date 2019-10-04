package c.b.a.g;

/* compiled from: ThumbnailRequestCoordinator */
public class j implements d, c {

    /* renamed from: a  reason: collision with root package name */
    public final d f4406a;

    /* renamed from: b  reason: collision with root package name */
    public c f4407b;

    /* renamed from: c  reason: collision with root package name */
    public c f4408c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4409d;

    public j() {
        this(null);
    }

    public void a(c cVar, c cVar2) {
        this.f4407b = cVar;
        this.f4408c = cVar2;
    }

    public void b(c cVar) {
        if (cVar.equals(this.f4407b)) {
            d dVar = this.f4406a;
            if (dVar != null) {
                dVar.b(this);
            }
        }
    }

    public boolean c(c cVar) {
        return h() && cVar.equals(this.f4407b) && !f();
    }

    public void clear() {
        this.f4409d = false;
        this.f4408c.clear();
        this.f4407b.clear();
    }

    public boolean d(c cVar) {
        return i() && (cVar.equals(this.f4407b) || !this.f4407b.b());
    }

    public void e(c cVar) {
        if (!cVar.equals(this.f4408c)) {
            d dVar = this.f4406a;
            if (dVar != null) {
                dVar.e(this);
            }
            if (!this.f4408c.isComplete()) {
                this.f4408c.clear();
            }
        }
    }

    public boolean f(c cVar) {
        return g() && cVar.equals(this.f4407b);
    }

    public final boolean g() {
        d dVar = this.f4406a;
        return dVar == null || dVar.f(this);
    }

    public final boolean h() {
        d dVar = this.f4406a;
        return dVar == null || dVar.c(this);
    }

    public final boolean i() {
        d dVar = this.f4406a;
        return dVar == null || dVar.d(this);
    }

    public boolean isComplete() {
        return this.f4407b.isComplete() || this.f4408c.isComplete();
    }

    public boolean isRunning() {
        return this.f4407b.isRunning();
    }

    public final boolean j() {
        d dVar = this.f4406a;
        return dVar != null && dVar.f();
    }

    public j(d dVar) {
        this.f4406a = dVar;
    }

    public boolean c() {
        return this.f4407b.c();
    }

    public boolean d() {
        return this.f4407b.d();
    }

    public boolean f() {
        return j() || b();
    }

    public void a() {
        this.f4407b.a();
        this.f4408c.a();
    }

    public boolean b() {
        return this.f4407b.b() || this.f4408c.b();
    }

    public boolean a(c cVar) {
        if (!(cVar instanceof j)) {
            return false;
        }
        j jVar = (j) cVar;
        c cVar2 = this.f4407b;
        if (cVar2 == null) {
            if (jVar.f4407b != null) {
                return false;
            }
        } else if (!cVar2.a(jVar.f4407b)) {
            return false;
        }
        c cVar3 = this.f4408c;
        if (cVar3 == null) {
            if (jVar.f4408c != null) {
                return false;
            }
        } else if (!cVar3.a(jVar.f4408c)) {
            return false;
        }
        return true;
    }

    public void e() {
        this.f4409d = true;
        if (!this.f4407b.isComplete() && !this.f4408c.isRunning()) {
            this.f4408c.e();
        }
        if (this.f4409d && !this.f4407b.isRunning()) {
            this.f4407b.e();
        }
    }
}
