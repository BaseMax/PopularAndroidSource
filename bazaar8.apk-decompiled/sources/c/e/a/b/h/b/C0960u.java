package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.u  reason: case insensitive filesystem */
public final class C0960u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11071a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11072b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f11073c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Object f11074d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f11075e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0957t f11076f;

    public C0960u(C0957t tVar, int i2, String str, Object obj, Object obj2, Object obj3) {
        this.f11076f = tVar;
        this.f11071a = i2;
        this.f11072b = str;
        this.f11073c = obj;
        this.f11074d = obj2;
        this.f11075e = obj3;
    }

    public final void run() {
        F j2 = this.f11076f.f11077a.j();
        if (j2.n()) {
            if (this.f11076f.f11045c == 0) {
                if (this.f11076f.i().p()) {
                    C0957t tVar = this.f11076f;
                    tVar.a();
                    char unused = tVar.f11045c = 'C';
                } else {
                    C0957t tVar2 = this.f11076f;
                    tVar2.a();
                    char unused2 = tVar2.f11045c = 'c';
                }
            }
            if (this.f11076f.f11046d < 0) {
                C0957t tVar3 = this.f11076f;
                long unused3 = tVar3.f11046d = tVar3.i().n();
            }
            char charAt = "01VDIWEA?".charAt(this.f11071a);
            char a2 = this.f11076f.f11045c;
            long b2 = this.f11076f.f11046d;
            String a3 = C0957t.a(true, this.f11072b, this.f11073c, this.f11074d, this.f11075e);
            StringBuilder sb = new StringBuilder(String.valueOf(a3).length() + 24);
            sb.append("2");
            sb.append(charAt);
            sb.append(a2);
            sb.append(b2);
            sb.append(":");
            sb.append(a3);
            String sb2 = sb.toString();
            if (sb2.length() > 1024) {
                sb2 = this.f11072b.substring(0, 1024);
            }
            j2.f10612e.a(sb2, 1);
            return;
        }
        this.f11076f.a(6, "Persisted config not initialized. Not logging error/warn");
    }
}
