package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.e.h;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.b.k;
import java.util.List;
import java.util.Map;

public final class e extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    static final i<?, ?> f2017a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final b f2018b;
    private final f c;
    private final com.bumptech.glide.e.a.e d;
    private final h e;
    private final List<g<Object>> f;
    private final Map<Class<?>, i<?, ?>> g;
    private final k h;
    private final boolean i;
    private final int j;

    public e(Context context, b bVar, f fVar, com.bumptech.glide.e.a.e eVar, h hVar, Map<Class<?>, i<?, ?>> map, List<g<Object>> list, k kVar, boolean z, int i2) {
        super(context.getApplicationContext());
        this.f2018b = bVar;
        this.c = fVar;
        this.d = eVar;
        this.e = hVar;
        this.f = list;
        this.g = map;
        this.h = kVar;
        this.i = z;
        this.j = i2;
    }

    public final List<g<Object>> getDefaultRequestListeners() {
        return this.f;
    }

    public final h getDefaultRequestOptions() {
        return this.e;
    }

    public final <T> i<?, T> getDefaultTransitionOptions(Class<T> cls) {
        i<?, T> iVar = this.g.get(cls);
        if (iVar == null) {
            for (Map.Entry next : this.g.entrySet()) {
                if (((Class) next.getKey()).isAssignableFrom(cls)) {
                    iVar = (i) next.getValue();
                }
            }
        }
        return iVar == null ? f2017a : iVar;
    }

    public final <X> j<ImageView, X> buildImageViewTarget(ImageView imageView, Class<X> cls) {
        return this.d.buildTarget(imageView, cls);
    }

    public final k getEngine() {
        return this.h;
    }

    public final f getRegistry() {
        return this.c;
    }

    public final int getLogLevel() {
        return this.j;
    }

    public final b getArrayPool() {
        return this.f2018b;
    }

    public final boolean isLoggingRequestOriginsEnabled() {
        return this.i;
    }
}
