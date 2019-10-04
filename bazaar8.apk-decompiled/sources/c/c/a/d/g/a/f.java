package c.c.a.d.g.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import c.b.a.d.i;
import c.b.a.d.o;
import c.b.a.e;
import c.b.a.g.g;
import c.b.a.n;

/* compiled from: GlideRequests */
public class f extends n {
    public f(e eVar, i iVar, o oVar, Context context) {
        super(eVar, iVar, oVar, context);
    }

    public e<Bitmap> c() {
        return (e) super.c();
    }

    public e<Drawable> d() {
        return (e) super.d();
    }

    public <ResourceType> e<ResourceType> a(Class<ResourceType> cls) {
        return new e<>(this.f4463d, this, cls, this.f4464e);
    }

    public e<Drawable> a(String str) {
        return (e) super.a(str);
    }

    public e<Drawable> a(Uri uri) {
        return (e) super.a(uri);
    }

    public void a(g gVar) {
        if (gVar instanceof d) {
            super.a(gVar);
        } else {
            super.a((g) new d().a(gVar));
        }
    }
}
