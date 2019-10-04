package com.farsitel.bazaar.core.util.imageloader;

import android.content.Context;
import c.b.a.c.b.p;
import c.b.a.e;
import c.b.a.e.a;
import c.b.a.f;
import c.b.a.g.g;
import c.c.a.c.h.d;
import com.bumptech.glide.MemoryCategory;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DecodeFormat;
import h.f.b.j;

/* compiled from: BazaarGlideModule.kt */
public final class BazaarGlideModule extends a {
    public void a(Context context, e eVar, Registry registry) {
        j.b(context, "context");
        j.b(eVar, "glide");
        j.b(registry, "registry");
        if (d.a(context)) {
            eVar.a(MemoryCategory.NORMAL);
        } else {
            eVar.a(MemoryCategory.LOW);
        }
        super.a(context, eVar, registry);
    }

    public boolean a() {
        return false;
    }

    public void a(Context context, f fVar) {
        j.b(context, "context");
        j.b(fVar, "builder");
        if (d.a(context)) {
            fVar.a(new g().a(DecodeFormat.PREFER_ARGB_8888).a(p.f3990d));
        } else {
            fVar.a(new g().a(DecodeFormat.PREFER_RGB_565).a(p.f3990d));
        }
    }
}
