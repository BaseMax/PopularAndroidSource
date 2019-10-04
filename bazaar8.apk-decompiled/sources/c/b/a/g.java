package c.b.a;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import c.b.a.c.b.a.b;
import c.b.a.c.b.r;
import c.b.a.g.a.e;
import c.b.a.g.a.i;
import com.bumptech.glide.Registry;
import java.util.Map;

/* compiled from: GlideContext */
public class g extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final o<?, ?> f4351a = new d();

    /* renamed from: b  reason: collision with root package name */
    public final Handler f4352b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    public final b f4353c;

    /* renamed from: d  reason: collision with root package name */
    public final Registry f4354d;

    /* renamed from: e  reason: collision with root package name */
    public final e f4355e;

    /* renamed from: f  reason: collision with root package name */
    public final c.b.a.g.g f4356f;

    /* renamed from: g  reason: collision with root package name */
    public final Map<Class<?>, o<?, ?>> f4357g;

    /* renamed from: h  reason: collision with root package name */
    public final r f4358h;

    /* renamed from: i  reason: collision with root package name */
    public final int f4359i;

    public g(Context context, b bVar, Registry registry, e eVar, c.b.a.g.g gVar, Map<Class<?>, o<?, ?>> map, r rVar, int i2) {
        super(context.getApplicationContext());
        this.f4353c = bVar;
        this.f4354d = registry;
        this.f4355e = eVar;
        this.f4356f = gVar;
        this.f4357g = map;
        this.f4358h = rVar;
        this.f4359i = i2;
    }

    public <T> o<?, T> a(Class<T> cls) {
        o<?, T> oVar = this.f4357g.get(cls);
        if (oVar == null) {
            for (Map.Entry next : this.f4357g.entrySet()) {
                if (((Class) next.getKey()).isAssignableFrom(cls)) {
                    oVar = (o) next.getValue();
                }
            }
        }
        return oVar == null ? f4351a : oVar;
    }

    public c.b.a.g.g b() {
        return this.f4356f;
    }

    public r c() {
        return this.f4358h;
    }

    public int d() {
        return this.f4359i;
    }

    public Handler e() {
        return this.f4352b;
    }

    public Registry f() {
        return this.f4354d;
    }

    public <X> i<ImageView, X> a(ImageView imageView, Class<X> cls) {
        return this.f4355e.a(imageView, cls);
    }

    public b a() {
        return this.f4353c;
    }
}
