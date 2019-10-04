package c.f.a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: Request */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public static final long f11888a = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: b  reason: collision with root package name */
    public int f11889b;

    /* renamed from: c  reason: collision with root package name */
    public long f11890c;

    /* renamed from: d  reason: collision with root package name */
    public int f11891d;

    /* renamed from: e  reason: collision with root package name */
    public final Uri f11892e;

    /* renamed from: f  reason: collision with root package name */
    public final int f11893f;

    /* renamed from: g  reason: collision with root package name */
    public final String f11894g;

    /* renamed from: h  reason: collision with root package name */
    public final List<N> f11895h;

    /* renamed from: i  reason: collision with root package name */
    public final int f11896i;

    /* renamed from: j  reason: collision with root package name */
    public final int f11897j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f11898k;

    /* renamed from: l  reason: collision with root package name */
    public final int f11899l;
    public final boolean m;
    public final boolean n;
    public final float o;
    public final float p;
    public final float q;
    public final boolean r;
    public final boolean s;
    public final Bitmap.Config t;
    public final Picasso.Priority u;

    /* compiled from: Request */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Uri f11900a;

        /* renamed from: b  reason: collision with root package name */
        public int f11901b;

        /* renamed from: c  reason: collision with root package name */
        public String f11902c;

        /* renamed from: d  reason: collision with root package name */
        public int f11903d;

        /* renamed from: e  reason: collision with root package name */
        public int f11904e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f11905f;

        /* renamed from: g  reason: collision with root package name */
        public int f11906g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f11907h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f11908i;

        /* renamed from: j  reason: collision with root package name */
        public float f11909j;

        /* renamed from: k  reason: collision with root package name */
        public float f11910k;

        /* renamed from: l  reason: collision with root package name */
        public float f11911l;
        public boolean m;
        public boolean n;
        public List<N> o;
        public Bitmap.Config p;
        public Picasso.Priority q;

        public a(Uri uri, int i2, Bitmap.Config config) {
            this.f11900a = uri;
            this.f11901b = i2;
            this.p = config;
        }

        public a a(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            } else if (i3 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            } else if (i3 == 0 && i2 == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            } else {
                this.f11903d = i2;
                this.f11904e = i3;
                return this;
            }
        }

        public boolean b() {
            return (this.f11900a == null && this.f11901b == 0) ? false : true;
        }

        public boolean c() {
            return this.q != null;
        }

        public boolean d() {
            return (this.f11903d == 0 && this.f11904e == 0) ? false : true;
        }

        public a a(Picasso.Priority priority) {
            if (priority == null) {
                throw new IllegalArgumentException("Priority invalid.");
            } else if (this.q == null) {
                this.q = priority;
                return this;
            } else {
                throw new IllegalStateException("Priority already set.");
            }
        }

        public a a(N n2) {
            if (n2 == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            } else if (n2.a() != null) {
                if (this.o == null) {
                    this.o = new ArrayList(2);
                }
                this.o.add(n2);
                return this;
            } else {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
        }

        public G a() {
            if (this.f11907h && this.f11905f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            } else if (this.f11905f && this.f11903d == 0 && this.f11904e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            } else if (this.f11907h && this.f11903d == 0 && this.f11904e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            } else {
                if (this.q == null) {
                    this.q = Picasso.Priority.NORMAL;
                }
                G g2 = r2;
                G g3 = new G(this.f11900a, this.f11901b, this.f11902c, this.o, this.f11903d, this.f11904e, this.f11905f, this.f11907h, this.f11906g, this.f11908i, this.f11909j, this.f11910k, this.f11911l, this.m, this.n, this.p, this.q);
                return g2;
            }
        }
    }

    public String a() {
        Uri uri = this.f11892e;
        if (uri != null) {
            return String.valueOf(uri.getPath());
        }
        return Integer.toHexString(this.f11893f);
    }

    public boolean b() {
        return this.f11895h != null;
    }

    public boolean c() {
        return (this.f11896i == 0 && this.f11897j == 0) ? false : true;
    }

    public String d() {
        long nanoTime = System.nanoTime() - this.f11890c;
        if (nanoTime > f11888a) {
            return g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    public boolean e() {
        return c() || this.o != 0.0f;
    }

    public boolean f() {
        return e() || b();
    }

    public String g() {
        return "[R" + this.f11889b + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i2 = this.f11893f;
        if (i2 > 0) {
            sb.append(i2);
        } else {
            sb.append(this.f11892e);
        }
        List<N> list = this.f11895h;
        if (list != null && !list.isEmpty()) {
            for (N a2 : this.f11895h) {
                sb.append(' ');
                sb.append(a2.a());
            }
        }
        if (this.f11894g != null) {
            sb.append(" stableKey(");
            sb.append(this.f11894g);
            sb.append(')');
        }
        if (this.f11896i > 0) {
            sb.append(" resize(");
            sb.append(this.f11896i);
            sb.append(',');
            sb.append(this.f11897j);
            sb.append(')');
        }
        if (this.f11898k) {
            sb.append(" centerCrop");
        }
        if (this.m) {
            sb.append(" centerInside");
        }
        if (this.o != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.o);
            if (this.r) {
                sb.append(" @ ");
                sb.append(this.p);
                sb.append(',');
                sb.append(this.q);
            }
            sb.append(')');
        }
        if (this.s) {
            sb.append(" purgeable");
        }
        if (this.t != null) {
            sb.append(' ');
            sb.append(this.t);
        }
        sb.append('}');
        return sb.toString();
    }

    public G(Uri uri, int i2, String str, List<N> list, int i3, int i4, boolean z, boolean z2, int i5, boolean z3, float f2, float f3, float f4, boolean z4, boolean z5, Bitmap.Config config, Picasso.Priority priority) {
        this.f11892e = uri;
        this.f11893f = i2;
        this.f11894g = str;
        if (list == null) {
            this.f11895h = null;
        } else {
            this.f11895h = Collections.unmodifiableList(list);
        }
        this.f11896i = i3;
        this.f11897j = i4;
        this.f11898k = z;
        this.m = z2;
        this.f11899l = i5;
        this.n = z3;
        this.o = f2;
        this.p = f3;
        this.q = f4;
        this.r = z4;
        this.s = z5;
        this.t = config;
        this.u = priority;
    }
}
