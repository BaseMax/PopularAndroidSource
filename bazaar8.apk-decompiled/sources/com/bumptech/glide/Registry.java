package com.bumptech.glide;

import c.b.a.c.a.e;
import c.b.a.c.a.g;
import c.b.a.c.b.A;
import c.b.a.c.b.D;
import c.b.a.c.b.j;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.w;
import c.b.a.c.h;
import c.b.a.f.a;
import c.b.a.f.b;
import c.b.a.f.c;
import c.b.a.f.d;
import c.b.a.f.e;
import c.b.a.f.f;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Registry {

    /* renamed from: a  reason: collision with root package name */
    public final w f12034a = new w(this.f12043j);

    /* renamed from: b  reason: collision with root package name */
    public final a f12035b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final e f12036c = new e();

    /* renamed from: d  reason: collision with root package name */
    public final f f12037d = new f();

    /* renamed from: e  reason: collision with root package name */
    public final g f12038e = new g();

    /* renamed from: f  reason: collision with root package name */
    public final c.b.a.c.d.f.f f12039f = new c.b.a.c.d.f.f();

    /* renamed from: g  reason: collision with root package name */
    public final b f12040g = new b();

    /* renamed from: h  reason: collision with root package name */
    public final d f12041h = new d();

    /* renamed from: i  reason: collision with root package name */
    public final c f12042i = new c();

    /* renamed from: j  reason: collision with root package name */
    public final b.i.j.e<List<Throwable>> f12043j = c.b.a.i.a.d.b();

    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }

        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        a((List<String>) Arrays.asList(new String[]{"Gif", "Bitmap", "BitmapDrawable"}));
    }

    public <Data> Registry a(Class<Data> cls, c.b.a.c.a<Data> aVar) {
        this.f12035b.a(cls, aVar);
        return this;
    }

    public <Data, TResource, Transcode> A<Data, TResource, Transcode> b(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        A<Data, TResource, Transcode> a2 = this.f12042i.a(cls, cls2, cls3);
        if (this.f12042i.a(a2)) {
            return null;
        }
        if (a2 == null) {
            List<j<Data, TResource, Transcode>> a3 = a(cls, cls2, cls3);
            if (a3.isEmpty()) {
                a2 = null;
            } else {
                a2 = new A<>(cls, cls2, cls3, a3, this.f12043j);
            }
            this.f12042i.a(cls, cls2, cls3, a2);
        }
        return a2;
    }

    public <Model, TResource, Transcode> List<Class<?>> c(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a2 = this.f12041h.a(cls, cls2);
        if (a2 == null) {
            a2 = new ArrayList<>();
            for (Class<?> b2 : this.f12034a.a((Class<?>) cls)) {
                for (Class next : this.f12036c.b(b2, cls2)) {
                    if (!this.f12039f.b(next, cls3).isEmpty() && !a2.contains(next)) {
                        a2.add(next);
                    }
                }
            }
            this.f12041h.a(cls, cls2, Collections.unmodifiableList(a2));
        }
        return a2;
    }

    public <Data, TResource> Registry a(Class<Data> cls, Class<TResource> cls2, c.b.a.c.g<Data, TResource> gVar) {
        a("legacy_append", cls, cls2, gVar);
        return this;
    }

    public <Data, TResource> Registry a(String str, Class<Data> cls, Class<TResource> cls2, c.b.a.c.g<Data, TResource> gVar) {
        this.f12036c.a(str, gVar, cls, cls2);
        return this;
    }

    public final Registry a(List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.f12036c.a((List<String>) arrayList);
        return this;
    }

    public <TResource> Registry a(Class<TResource> cls, h<TResource> hVar) {
        this.f12037d.a(cls, hVar);
        return this;
    }

    public boolean b(D<?> d2) {
        return this.f12037d.a(d2.c()) != null;
    }

    public Registry a(e.a<?> aVar) {
        this.f12038e.a(aVar);
        return this;
    }

    public <X> c.b.a.c.a.e<X> b(X x) {
        return this.f12038e.a(x);
    }

    public <TResource, Transcode> Registry a(Class<TResource> cls, Class<Transcode> cls2, c.b.a.c.d.f.e<TResource, Transcode> eVar) {
        this.f12039f.a(cls, cls2, eVar);
        return this;
    }

    public Registry a(ImageHeaderParser imageHeaderParser) {
        this.f12040g.a(imageHeaderParser);
        return this;
    }

    public <Model, Data> Registry a(Class<Model> cls, Class<Data> cls2, v<Model, Data> vVar) {
        this.f12034a.a(cls, cls2, vVar);
        return this;
    }

    public final <Data, TResource, Transcode> List<j<Data, TResource, Transcode>> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class next : this.f12036c.b(cls, cls2)) {
            for (Class next2 : this.f12039f.b(next, cls3)) {
                j jVar = new j(cls, next, next2, this.f12036c.a(cls, next), this.f12039f.a(next, next2), this.f12043j);
                arrayList.add(jVar);
            }
        }
        return arrayList;
    }

    public <X> c.b.a.c.a<X> c(X x) {
        c.b.a.c.a<X> a2 = this.f12035b.a(x.getClass());
        if (a2 != null) {
            return a2;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    public <X> h<X> a(D<X> d2) {
        h<X> a2 = this.f12037d.a(d2.c());
        if (a2 != null) {
            return a2;
        }
        throw new NoResultEncoderAvailableException(d2.c());
    }

    public <Model> List<u<Model, ?>> a(Model model) {
        List<u<Model, ?>> b2 = this.f12034a.b(model);
        if (!b2.isEmpty()) {
            return b2;
        }
        throw new NoModelLoaderAvailableException(model);
    }

    public List<ImageHeaderParser> a() {
        List<ImageHeaderParser> a2 = this.f12040g.a();
        if (!a2.isEmpty()) {
            return a2;
        }
        throw new NoImageHeaderParserException();
    }
}
