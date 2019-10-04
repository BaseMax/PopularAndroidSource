package c.c.a.d.g.a;

import android.app.Notification;
import android.graphics.Bitmap;
import b.i.a.n;
import c.b.a.g.a.h;
import c.b.a.g.f;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;

/* compiled from: ImageLoader.kt */
public final class g implements f<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f4803a;

    public g(h hVar) {
        this.f4803a = hVar;
    }

    public boolean a(GlideException glideException, Object obj, h<Bitmap> hVar, boolean z) {
        n.c cVar = new n.c();
        cVar.b(this.f4803a.f4806c);
        cVar.a((CharSequence) this.f4803a.f4807d);
        h hVar2 = this.f4803a;
        hVar2.f4808e.b((CharSequence) hVar2.f4809f);
        n.d dVar = this.f4803a.f4808e;
        dVar.a((n.e) cVar);
        Notification a2 = dVar.a();
        h hVar3 = this.f4803a;
        hVar3.f4810g.a(hVar3.f4811h, a2);
        return false;
    }

    public boolean a(Bitmap bitmap, Object obj, h<Bitmap> hVar, DataSource dataSource, boolean z) {
        n.b bVar = new n.b();
        bVar.a((CharSequence) this.f4803a.f4806c);
        bVar.b(bitmap);
        h hVar2 = this.f4803a;
        hVar2.f4808e.b((CharSequence) hVar2.f4809f);
        n.d dVar = this.f4803a.f4808e;
        dVar.a((n.e) bVar);
        Notification a2 = dVar.a();
        h hVar3 = this.f4803a;
        hVar3.f4810g.a(hVar3.f4811h, a2);
        return false;
    }
}
