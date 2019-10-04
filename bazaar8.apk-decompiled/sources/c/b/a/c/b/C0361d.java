package c.b.a.c.b;

import c.b.a.c.a.d;
import c.b.a.c.b.C0364g;
import c.b.a.c.c;
import c.b.a.c.c.u;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.List;

/* renamed from: c.b.a.c.b.d  reason: case insensitive filesystem */
/* compiled from: DataCacheGenerator */
public class C0361d implements C0364g, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    public final List<c> f3949a;

    /* renamed from: b  reason: collision with root package name */
    public final C0365h<?> f3950b;

    /* renamed from: c  reason: collision with root package name */
    public final C0364g.a f3951c;

    /* renamed from: d  reason: collision with root package name */
    public int f3952d;

    /* renamed from: e  reason: collision with root package name */
    public c f3953e;

    /* renamed from: f  reason: collision with root package name */
    public List<u<File, ?>> f3954f;

    /* renamed from: g  reason: collision with root package name */
    public int f3955g;

    /* renamed from: h  reason: collision with root package name */
    public volatile u.a<?> f3956h;

    /* renamed from: i  reason: collision with root package name */
    public File f3957i;

    public C0361d(C0365h<?> hVar, C0364g.a aVar) {
        this(hVar.c(), hVar, aVar);
    }

    public boolean a() {
        while (true) {
            boolean z = false;
            if (this.f3954f == null || !b()) {
                this.f3952d++;
                if (this.f3952d >= this.f3949a.size()) {
                    return false;
                }
                c cVar = this.f3949a.get(this.f3952d);
                this.f3957i = this.f3950b.d().a(new C0362e(cVar, this.f3950b.k()));
                File file = this.f3957i;
                if (file != null) {
                    this.f3953e = cVar;
                    this.f3954f = this.f3950b.a(file);
                    this.f3955g = 0;
                }
            } else {
                this.f3956h = null;
                while (!z && b()) {
                    List<u<File, ?>> list = this.f3954f;
                    int i2 = this.f3955g;
                    this.f3955g = i2 + 1;
                    this.f3956h = list.get(i2).a(this.f3957i, this.f3950b.m(), this.f3950b.f(), this.f3950b.h());
                    if (this.f3956h != null && this.f3950b.c(this.f3956h.f4121c.a())) {
                        this.f3956h.f4121c.a(this.f3950b.i(), this);
                        z = true;
                    }
                }
                return z;
            }
        }
    }

    public final boolean b() {
        return this.f3955g < this.f3954f.size();
    }

    public void cancel() {
        u.a<?> aVar = this.f3956h;
        if (aVar != null) {
            aVar.f4121c.cancel();
        }
    }

    public C0361d(List<c> list, C0365h<?> hVar, C0364g.a aVar) {
        this.f3952d = -1;
        this.f3949a = list;
        this.f3950b = hVar;
        this.f3951c = aVar;
    }

    public void a(Object obj) {
        this.f3951c.a(this.f3953e, obj, this.f3956h.f4121c, DataSource.DATA_DISK_CACHE, this.f3953e);
    }

    public void a(Exception exc) {
        this.f3951c.a(this.f3953e, exc, this.f3956h.f4121c, DataSource.DATA_DISK_CACHE);
    }
}
