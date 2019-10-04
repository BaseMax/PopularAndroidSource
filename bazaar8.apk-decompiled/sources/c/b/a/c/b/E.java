package c.b.a.c.b;

import c.b.a.c.a.d;
import c.b.a.c.b.C0364g;
import c.b.a.c.c;
import c.b.a.c.c.u;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.List;

/* compiled from: ResourceCacheGenerator */
public class E implements C0364g, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    public final C0364g.a f3816a;

    /* renamed from: b  reason: collision with root package name */
    public final C0365h<?> f3817b;

    /* renamed from: c  reason: collision with root package name */
    public int f3818c;

    /* renamed from: d  reason: collision with root package name */
    public int f3819d = -1;

    /* renamed from: e  reason: collision with root package name */
    public c f3820e;

    /* renamed from: f  reason: collision with root package name */
    public List<u<File, ?>> f3821f;

    /* renamed from: g  reason: collision with root package name */
    public int f3822g;

    /* renamed from: h  reason: collision with root package name */
    public volatile u.a<?> f3823h;

    /* renamed from: i  reason: collision with root package name */
    public File f3824i;

    /* renamed from: j  reason: collision with root package name */
    public F f3825j;

    public E(C0365h<?> hVar, C0364g.a aVar) {
        this.f3817b = hVar;
        this.f3816a = aVar;
    }

    public boolean a() {
        List<c> c2 = this.f3817b.c();
        boolean z = false;
        if (c2.isEmpty()) {
            return false;
        }
        List<Class<?>> j2 = this.f3817b.j();
        if (j2.isEmpty() && File.class.equals(this.f3817b.l())) {
            return false;
        }
        while (true) {
            if (this.f3821f == null || !b()) {
                this.f3819d++;
                if (this.f3819d >= j2.size()) {
                    this.f3818c++;
                    if (this.f3818c >= c2.size()) {
                        return false;
                    }
                    this.f3819d = 0;
                }
                c cVar = c2.get(this.f3818c);
                Class cls = j2.get(this.f3819d);
                F f2 = new F(this.f3817b.b(), cVar, this.f3817b.k(), this.f3817b.m(), this.f3817b.f(), this.f3817b.b(cls), cls, this.f3817b.h());
                this.f3825j = f2;
                this.f3824i = this.f3817b.d().a(this.f3825j);
                File file = this.f3824i;
                if (file != null) {
                    this.f3820e = cVar;
                    this.f3821f = this.f3817b.a(file);
                    this.f3822g = 0;
                }
            } else {
                this.f3823h = null;
                while (!z && b()) {
                    List<u<File, ?>> list = this.f3821f;
                    int i2 = this.f3822g;
                    this.f3822g = i2 + 1;
                    this.f3823h = list.get(i2).a(this.f3824i, this.f3817b.m(), this.f3817b.f(), this.f3817b.h());
                    if (this.f3823h != null && this.f3817b.c(this.f3823h.f4121c.a())) {
                        this.f3823h.f4121c.a(this.f3817b.i(), this);
                        z = true;
                    }
                }
                return z;
            }
        }
    }

    public final boolean b() {
        return this.f3822g < this.f3821f.size();
    }

    public void cancel() {
        u.a<?> aVar = this.f3823h;
        if (aVar != null) {
            aVar.f4121c.cancel();
        }
    }

    public void a(Object obj) {
        this.f3816a.a(this.f3820e, obj, this.f3823h.f4121c, DataSource.RESOURCE_DISK_CACHE, this.f3825j);
    }

    public void a(Exception exc) {
        this.f3816a.a(this.f3825j, exc, this.f3823h.f4121c, DataSource.RESOURCE_DISK_CACHE);
    }
}
