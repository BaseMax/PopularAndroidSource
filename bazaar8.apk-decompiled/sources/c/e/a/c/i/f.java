package c.e.a.c.i;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import c.e.a.c.i.d;

/* compiled from: CircularRevealWidget */
public interface f extends d.a {

    /* compiled from: CircularRevealWidget */
    public static class a implements TypeEvaluator<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final TypeEvaluator<d> f11322a = new a();

        /* renamed from: b  reason: collision with root package name */
        public final d f11323b = new d();

        /* renamed from: a */
        public d evaluate(float f2, d dVar, d dVar2) {
            this.f11323b.a(c.e.a.c.m.a.a(dVar.f11326a, dVar2.f11326a, f2), c.e.a.c.m.a.a(dVar.f11327b, dVar2.f11327b, f2), c.e.a.c.m.a.a(dVar.f11328c, dVar2.f11328c, f2));
            return this.f11323b;
        }
    }

    /* compiled from: CircularRevealWidget */
    public static class b extends Property<f, d> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<f, d> f11324a = new b("circularReveal");

        public b(String str) {
            super(d.class, str);
        }

        /* renamed from: a */
        public d get(f fVar) {
            return fVar.getRevealInfo();
        }

        /* renamed from: a */
        public void set(f fVar, d dVar) {
            fVar.setRevealInfo(dVar);
        }
    }

    /* compiled from: CircularRevealWidget */
    public static class c extends Property<f, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<f, Integer> f11325a = new c("circularRevealScrimColor");

        public c(String str) {
            super(Integer.class, str);
        }

        /* renamed from: a */
        public Integer get(f fVar) {
            return Integer.valueOf(fVar.getCircularRevealScrimColor());
        }

        /* renamed from: a */
        public void set(f fVar, Integer num) {
            fVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* compiled from: CircularRevealWidget */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public float f11326a;

        /* renamed from: b  reason: collision with root package name */
        public float f11327b;

        /* renamed from: c  reason: collision with root package name */
        public float f11328c;

        public void a(float f2, float f3, float f4) {
            this.f11326a = f2;
            this.f11327b = f3;
            this.f11328c = f4;
        }

        public d() {
        }

        public d(float f2, float f3, float f4) {
            this.f11326a = f2;
            this.f11327b = f3;
            this.f11328c = f4;
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    d getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i2);

    void setRevealInfo(d dVar);
}
