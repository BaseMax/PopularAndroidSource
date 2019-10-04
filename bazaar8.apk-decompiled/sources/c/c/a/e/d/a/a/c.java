package c.c.a.e.d.a.a;

import c.c.a.e.d.b.I;
import h.f.b.f;
import h.f.b.j;

/* compiled from: TokenLocalDataSource.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4914a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public String f4915b = ((String) this.f4917d.a("refreshToken", ""));

    /* renamed from: c  reason: collision with root package name */
    public String f4916c = ((String) this.f4917d.a("accessToken", ""));

    /* renamed from: d  reason: collision with root package name */
    public final I f4917d;

    /* compiled from: TokenLocalDataSource.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(I i2) {
        j.b(i2, "sharedDataSource");
        this.f4917d = i2;
    }

    public final void a(String str) {
        j.b(str, "token");
        this.f4916c = str;
        I.a(this.f4917d, "accessToken", str, false, 4, null);
    }

    public final void b(String str) {
        j.b(str, "token");
        this.f4915b = str;
        I.a(this.f4917d, "refreshToken", str, false, 4, null);
    }

    public final String c() {
        return this.f4915b;
    }

    public final void a() {
        b("");
        a("");
        this.f4917d.a();
    }

    public final String b() {
        return this.f4916c;
    }
}
