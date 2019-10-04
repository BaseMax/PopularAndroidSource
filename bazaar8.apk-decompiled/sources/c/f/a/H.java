package c.f.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import c.f.a.G;
import com.squareup.picasso.MemoryPolicy;
import com.squareup.picasso.Picasso;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RequestCreator */
public class H {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicInteger f11912a = new AtomicInteger();

    /* renamed from: b  reason: collision with root package name */
    public final Picasso f11913b;

    /* renamed from: c  reason: collision with root package name */
    public final G.a f11914c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11915d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11916e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11917f = true;

    /* renamed from: g  reason: collision with root package name */
    public int f11918g;

    /* renamed from: h  reason: collision with root package name */
    public int f11919h;

    /* renamed from: i  reason: collision with root package name */
    public int f11920i;

    /* renamed from: j  reason: collision with root package name */
    public int f11921j;

    /* renamed from: k  reason: collision with root package name */
    public Drawable f11922k;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f11923l;
    public Object m;

    public H(Picasso picasso, Uri uri, int i2) {
        if (!picasso.q) {
            this.f11913b = picasso;
            this.f11914c = new G.a(uri, i2, picasso.n);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    public H a(int i2) {
        if (!this.f11917f) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (i2 == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        } else if (this.f11922k == null) {
            this.f11918g = i2;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public void b() {
        a((C1041l) null);
    }

    public H c() {
        this.f11916e = true;
        return this;
    }

    public Bitmap d() {
        long nanoTime = System.nanoTime();
        P.b();
        if (this.f11916e) {
            throw new IllegalStateException("Fit cannot be used with get.");
        } else if (!this.f11914c.b()) {
            return null;
        } else {
            G a2 = a(nanoTime);
            u uVar = new u(this.f11913b, a2, this.f11920i, this.f11921j, this.m, P.a(a2, new StringBuilder()));
            Picasso picasso = this.f11913b;
            return C1038i.a(picasso, picasso.f13609h, picasso.f13610i, picasso.f13611j, (C1030a) uVar).m();
        }
    }

    public final Drawable e() {
        int i2 = this.f11918g;
        if (i2 == 0) {
            return this.f11922k;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return this.f11913b.f13608g.getDrawable(i2);
        }
        if (i3 >= 16) {
            return this.f11913b.f13608g.getResources().getDrawable(this.f11918g);
        }
        TypedValue typedValue = new TypedValue();
        this.f11913b.f13608g.getResources().getValue(this.f11918g, typedValue, true);
        return this.f11913b.f13608g.getResources().getDrawable(typedValue.resourceId);
    }

    public H f() {
        this.f11915d = true;
        return this;
    }

    public H g() {
        this.f11916e = false;
        return this;
    }

    public H a() {
        this.m = null;
        return this;
    }

    public H a(int i2, int i3) {
        this.f11914c.a(i2, i3);
        return this;
    }

    public H a(N n) {
        this.f11914c.a(n);
        return this;
    }

    public void a(C1041l lVar) {
        long nanoTime = System.nanoTime();
        if (!this.f11916e) {
            if (this.f11914c.b()) {
                if (!this.f11914c.c()) {
                    this.f11914c.a(Picasso.Priority.LOW);
                }
                G a2 = a(nanoTime);
                String a3 = P.a(a2, new StringBuilder());
                if (!MemoryPolicy.a(this.f11920i) || this.f11913b.b(a3) == null) {
                    s sVar = new s(this.f11913b, a2, this.f11920i, this.f11921j, this.m, a3, lVar);
                    this.f11913b.c(sVar);
                } else {
                    if (this.f11913b.p) {
                        String g2 = a2.g();
                        P.a("Main", "completed", g2, "from " + Picasso.LoadedFrom.MEMORY);
                    }
                    if (lVar != null) {
                        lVar.onSuccess();
                    }
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException("Fit cannot be used with fetch.");
    }

    public void a(ImageView imageView, C1041l lVar) {
        ImageView imageView2 = imageView;
        C1041l lVar2 = lVar;
        long nanoTime = System.nanoTime();
        P.a();
        if (imageView2 == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f11914c.b()) {
            this.f11913b.a(imageView2);
            if (this.f11917f) {
                D.a(imageView2, e());
            }
        } else {
            if (this.f11916e) {
                if (!this.f11914c.d()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.f11917f) {
                            D.a(imageView2, e());
                        }
                        this.f11913b.a(imageView2, new C1044o(this, imageView2, lVar2));
                        return;
                    }
                    this.f11914c.a(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            G a2 = a(nanoTime);
            String a3 = P.a(a2);
            if (MemoryPolicy.a(this.f11920i)) {
                Bitmap b2 = this.f11913b.b(a3);
                if (b2 != null) {
                    this.f11913b.a(imageView2);
                    Picasso picasso = this.f11913b;
                    D.a(imageView, picasso.f13608g, b2, Picasso.LoadedFrom.MEMORY, this.f11915d, picasso.o);
                    if (this.f11913b.p) {
                        String g2 = a2.g();
                        P.a("Main", "completed", g2, "from " + Picasso.LoadedFrom.MEMORY);
                    }
                    if (lVar2 != null) {
                        lVar.onSuccess();
                    }
                    return;
                }
            }
            if (this.f11917f) {
                D.a(imageView2, e());
            }
            v vVar = new v(this.f11913b, imageView, a2, this.f11920i, this.f11921j, this.f11919h, this.f11923l, a3, this.m, lVar, this.f11915d);
            this.f11913b.a((C1030a) vVar);
        }
    }

    public final G a(long j2) {
        int andIncrement = f11912a.getAndIncrement();
        G a2 = this.f11914c.a();
        a2.f11889b = andIncrement;
        a2.f11890c = j2;
        boolean z = this.f11913b.p;
        if (z) {
            P.a("Main", "created", a2.g(), a2.toString());
        }
        this.f11913b.a(a2);
        if (a2 != a2) {
            a2.f11889b = andIncrement;
            a2.f11890c = j2;
            if (z) {
                String d2 = a2.d();
                P.a("Main", "changed", d2, "into " + a2);
            }
        }
        return a2;
    }
}
