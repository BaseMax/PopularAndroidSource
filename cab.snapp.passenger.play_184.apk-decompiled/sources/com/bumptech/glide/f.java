package com.bumptech.glide;

import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.a.e;
import com.bumptech.glide.load.b.t;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.p;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class f {
    public static final String BUCKET_BITMAP = "Bitmap";
    public static final String BUCKET_BITMAP_DRAWABLE = "BitmapDrawable";
    public static final String BUCKET_GIF = "Gif";

    /* renamed from: a  reason: collision with root package name */
    private final p f2052a = new p(this.j);

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.d.a f2053b = new com.bumptech.glide.d.a();
    private final com.bumptech.glide.d.e c = new com.bumptech.glide.d.e();
    private final com.bumptech.glide.d.f d = new com.bumptech.glide.d.f();
    private final com.bumptech.glide.load.a.f e = new com.bumptech.glide.load.a.f();
    private final com.bumptech.glide.load.resource.e.f f = new com.bumptech.glide.load.resource.e.f();
    private final com.bumptech.glide.d.b g = new com.bumptech.glide.d.b();
    private final com.bumptech.glide.d.d h = new com.bumptech.glide.d.d();
    private final com.bumptech.glide.d.c i = new com.bumptech.glide.d.c();
    private final Pools.Pool<List<Throwable>> j = com.bumptech.glide.g.a.a.threadSafeList();

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    public static class c extends a {
        public c(Object obj) {
            super("Failed to find any ModelLoaders for model: ".concat(String.valueOf(obj)));
        }

        public c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    public static class d extends a {
        public d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class e extends a {
        public e(Class<?> cls) {
            super("Failed to find source encoder for data class: ".concat(String.valueOf(cls)));
        }
    }

    public f() {
        setResourceDecoderBucketPriorityList(Arrays.asList(new String[]{BUCKET_GIF, BUCKET_BITMAP, BUCKET_BITMAP_DRAWABLE}));
    }

    @Deprecated
    public final <Data> f register(Class<Data> cls, com.bumptech.glide.load.a<Data> aVar) {
        return append(cls, aVar);
    }

    public final <Data> f append(Class<Data> cls, com.bumptech.glide.load.a<Data> aVar) {
        this.f2053b.append(cls, aVar);
        return this;
    }

    public final <Data> f prepend(Class<Data> cls, com.bumptech.glide.load.a<Data> aVar) {
        this.f2053b.prepend(cls, aVar);
        return this;
    }

    public final <Data, TResource> f append(Class<Data> cls, Class<TResource> cls2, h<Data, TResource> hVar) {
        append("legacy_append", cls, cls2, hVar);
        return this;
    }

    public final <Data, TResource> f append(String str, Class<Data> cls, Class<TResource> cls2, h<Data, TResource> hVar) {
        this.c.append(str, hVar, cls, cls2);
        return this;
    }

    public final <Data, TResource> f prepend(Class<Data> cls, Class<TResource> cls2, h<Data, TResource> hVar) {
        prepend("legacy_prepend_all", cls, cls2, hVar);
        return this;
    }

    public final <Data, TResource> f prepend(String str, Class<Data> cls, Class<TResource> cls2, h<Data, TResource> hVar) {
        this.c.prepend(str, hVar, cls, cls2);
        return this;
    }

    public final f setResourceDecoderBucketPriorityList(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.c.setBucketPriorityList(arrayList);
        return this;
    }

    @Deprecated
    public final <TResource> f register(Class<TResource> cls, i<TResource> iVar) {
        return append(cls, iVar);
    }

    public final <TResource> f append(Class<TResource> cls, i<TResource> iVar) {
        this.d.append(cls, iVar);
        return this;
    }

    public final <TResource> f prepend(Class<TResource> cls, i<TResource> iVar) {
        this.d.prepend(cls, iVar);
        return this;
    }

    public final f register(e.a<?> aVar) {
        this.e.register(aVar);
        return this;
    }

    public final <TResource, Transcode> f register(Class<TResource> cls, Class<Transcode> cls2, com.bumptech.glide.load.resource.e.e<TResource, Transcode> eVar) {
        this.f.register(cls, cls2, eVar);
        return this;
    }

    public final f register(ImageHeaderParser imageHeaderParser) {
        this.g.add(imageHeaderParser);
        return this;
    }

    public final <Model, Data> f append(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.f2052a.append(cls, cls2, oVar);
        return this;
    }

    public final <Model, Data> f prepend(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.f2052a.prepend(cls, cls2, oVar);
        return this;
    }

    public final <Model, Data> f replace(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        this.f2052a.replace(cls, cls2, oVar);
        return this;
    }

    public final <Data, TResource, Transcode> t<Data, TResource, Transcode> getLoadPath(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        Class<Data> cls4 = cls;
        Class<TResource> cls5 = cls2;
        Class<Transcode> cls6 = cls3;
        t<Data, TResource, Transcode> tVar = this.i.get(cls4, cls5, cls6);
        if (this.i.isEmptyLoadPath(tVar)) {
            return null;
        }
        if (tVar == null) {
            ArrayList arrayList = new ArrayList();
            for (Class next : this.c.getResourceClasses(cls4, cls5)) {
                for (Class next2 : this.f.getTranscodeClasses(next, cls6)) {
                    com.bumptech.glide.load.b.i iVar = r1;
                    com.bumptech.glide.load.b.i iVar2 = new com.bumptech.glide.load.b.i(cls, next, next2, this.c.getDecoders(cls4, next), this.f.get(next, next2), this.j);
                    arrayList.add(iVar);
                }
            }
            if (arrayList.isEmpty()) {
                tVar = null;
            } else {
                tVar = new t<>(cls, cls2, cls3, arrayList, this.j);
            }
            this.i.put(cls4, cls5, cls6, tVar);
        }
        return tVar;
    }

    public final <Model, TResource, Transcode> List<Class<?>> getRegisteredResourceClasses(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> list = this.h.get(cls, cls2, cls3);
        if (list == null) {
            list = new ArrayList<>();
            for (Class<?> resourceClasses : this.f2052a.getDataClasses(cls)) {
                for (Class next : this.c.getResourceClasses(resourceClasses, cls2)) {
                    if (!this.f.getTranscodeClasses(next, cls3).isEmpty() && !list.contains(next)) {
                        list.add(next);
                    }
                }
            }
            this.h.put(cls, cls2, cls3, Collections.unmodifiableList(list));
        }
        return list;
    }

    public final boolean isResourceEncoderAvailable(v<?> vVar) {
        return this.d.get(vVar.getResourceClass()) != null;
    }

    public final <X> i<X> getResultEncoder(v<X> vVar) throws d {
        i<X> iVar = this.d.get(vVar.getResourceClass());
        if (iVar != null) {
            return iVar;
        }
        throw new d(vVar.getResourceClass());
    }

    public final <X> com.bumptech.glide.load.a<X> getSourceEncoder(X x) throws e {
        com.bumptech.glide.load.a<X> encoder = this.f2053b.getEncoder(x.getClass());
        if (encoder != null) {
            return encoder;
        }
        throw new e(x.getClass());
    }

    public final <X> com.bumptech.glide.load.a.e<X> getRewinder(X x) {
        return this.e.build(x);
    }

    public final <Model> List<n<Model, ?>> getModelLoaders(Model model) {
        List<n<Model, ?>> modelLoaders = this.f2052a.getModelLoaders(model);
        if (!modelLoaders.isEmpty()) {
            return modelLoaders;
        }
        throw new c(model);
    }

    public final List<ImageHeaderParser> getImageHeaderParsers() {
        List<ImageHeaderParser> parsers = this.g.getParsers();
        if (!parsers.isEmpty()) {
            return parsers;
        }
        throw new b();
    }
}
