package c.b.a.c.b.a;

import android.graphics.Bitmap;
import c.b.a.i.k;

/* compiled from: AttributeStrategy */
public class c implements l {

    /* renamed from: a  reason: collision with root package name */
    public final b f3845a = new b();

    /* renamed from: b  reason: collision with root package name */
    public final h<a, Bitmap> f3846b = new h<>();

    /* compiled from: AttributeStrategy */
    static class a implements m {

        /* renamed from: a  reason: collision with root package name */
        public final b f3847a;

        /* renamed from: b  reason: collision with root package name */
        public int f3848b;

        /* renamed from: c  reason: collision with root package name */
        public int f3849c;

        /* renamed from: d  reason: collision with root package name */
        public Bitmap.Config f3850d;

        public a(b bVar) {
            this.f3847a = bVar;
        }

        public void a(int i2, int i3, Bitmap.Config config) {
            this.f3848b = i2;
            this.f3849c = i3;
            this.f3850d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f3848b == aVar.f3848b && this.f3849c == aVar.f3849c && this.f3850d == aVar.f3850d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i2 = ((this.f3848b * 31) + this.f3849c) * 31;
            Bitmap.Config config = this.f3850d;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return c.c(this.f3848b, this.f3849c, this.f3850d);
        }

        public void a() {
            this.f3847a.a(this);
        }
    }

    /* compiled from: AttributeStrategy */
    static class b extends d<a> {
        public a a(int i2, int i3, Bitmap.Config config) {
            a aVar = (a) b();
            aVar.a(i2, i3, config);
            return aVar;
        }

        public a a() {
            return new a(this);
        }
    }

    public static String d(Bitmap bitmap) {
        return c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    public void a(Bitmap bitmap) {
        this.f3846b.a(this.f3845a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    public String b(int i2, int i3, Bitmap.Config config) {
        return c(i2, i3, config);
    }

    public String c(Bitmap bitmap) {
        return d(bitmap);
    }

    public Bitmap removeLast() {
        return this.f3846b.a();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f3846b;
    }

    public static String c(int i2, int i3, Bitmap.Config config) {
        return "[" + i2 + "x" + i3 + "], " + config;
    }

    public int b(Bitmap bitmap) {
        return k.a(bitmap);
    }

    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return this.f3846b.a(this.f3845a.a(i2, i3, config));
    }
}
