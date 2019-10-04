package c.f.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* renamed from: c.f.a.a  reason: case insensitive filesystem */
/* compiled from: Action */
public abstract class C1030a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Picasso f11959a;

    /* renamed from: b  reason: collision with root package name */
    public final G f11960b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference<T> f11961c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f11962d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11963e;

    /* renamed from: f  reason: collision with root package name */
    public final int f11964f;

    /* renamed from: g  reason: collision with root package name */
    public final int f11965g;

    /* renamed from: h  reason: collision with root package name */
    public final Drawable f11966h;

    /* renamed from: i  reason: collision with root package name */
    public final String f11967i;

    /* renamed from: j  reason: collision with root package name */
    public final Object f11968j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11969k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11970l;

    /* renamed from: c.f.a.a$a  reason: collision with other inner class name */
    /* compiled from: Action */
    static class C0135a<M> extends WeakReference<M> {

        /* renamed from: a  reason: collision with root package name */
        public final C1030a f11971a;

        public C0135a(C1030a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f11971a = aVar;
        }
    }

    public C1030a(Picasso picasso, T t, G g2, int i2, int i3, int i4, Drawable drawable, String str, Object obj, boolean z) {
        C0135a aVar;
        this.f11959a = picasso;
        this.f11960b = g2;
        if (t == null) {
            aVar = null;
        } else {
            aVar = new C0135a(this, t, picasso.m);
        }
        this.f11961c = aVar;
        this.f11963e = i2;
        this.f11964f = i3;
        this.f11962d = z;
        this.f11965g = i4;
        this.f11966h = drawable;
        this.f11967i = str;
        this.f11968j = obj == null ? this : obj;
    }

    public void a() {
        this.f11970l = true;
    }

    public abstract void a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    public abstract void a(Exception exc);

    public String b() {
        return this.f11967i;
    }

    public int c() {
        return this.f11963e;
    }

    public int d() {
        return this.f11964f;
    }

    public Picasso e() {
        return this.f11959a;
    }

    public Picasso.Priority f() {
        return this.f11960b.u;
    }

    public G g() {
        return this.f11960b;
    }

    public Object h() {
        return this.f11968j;
    }

    public T i() {
        WeakReference<T> weakReference = this.f11961c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public boolean j() {
        return this.f11970l;
    }

    public boolean k() {
        return this.f11969k;
    }
}
