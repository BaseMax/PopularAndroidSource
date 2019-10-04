package c.b.a.c.b.b;

import android.annotation.SuppressLint;
import c.b.a.c.b.D;
import c.b.a.c.b.b.i;
import c.b.a.c.c;
import c.b.a.i.f;

/* compiled from: LruResourceCache */
public class h extends f<c, D<?>> implements i {

    /* renamed from: e  reason: collision with root package name */
    public i.a f3905e;

    public h(long j2) {
        super(j2);
    }

    public /* bridge */ /* synthetic */ D a(c cVar, D d2) {
        return (D) super.b(cVar, d2);
    }

    /* renamed from: b */
    public void a(c cVar, D<?> d2) {
        i.a aVar = this.f3905e;
        if (aVar != null && d2 != null) {
            aVar.a(d2);
        }
    }

    public /* bridge */ /* synthetic */ D a(c cVar) {
        return (D) super.c(cVar);
    }

    public void a(i.a aVar) {
        this.f3905e = aVar;
    }

    /* renamed from: a */
    public int b(D<?> d2) {
        if (d2 == null) {
            return super.b(null);
        }
        return d2.b();
    }

    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        if (i2 >= 40) {
            a();
        } else if (i2 >= 20 || i2 == 15) {
            a(c() / 2);
        }
    }
}
