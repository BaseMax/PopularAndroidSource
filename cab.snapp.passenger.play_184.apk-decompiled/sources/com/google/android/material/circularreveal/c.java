package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.b;

public interface c extends b.a {

    public static class a implements TypeEvaluator<d> {
        public static final TypeEvaluator<d> CIRCULAR_REVEAL = new a();

        /* renamed from: a  reason: collision with root package name */
        private final d f3877a = new d((byte) 0);

        public final d evaluate(float f, d dVar, d dVar2) {
            this.f3877a.set(com.google.android.material.e.a.lerp(dVar.centerX, dVar2.centerX, f), com.google.android.material.e.a.lerp(dVar.centerY, dVar2.centerY, f), com.google.android.material.e.a.lerp(dVar.radius, dVar2.radius, f));
            return this.f3877a;
        }
    }

    public static class b extends Property<c, d> {
        public static final Property<c, d> CIRCULAR_REVEAL = new b("circularReveal");

        private b(String str) {
            super(d.class, str);
        }

        public final d get(c cVar) {
            return cVar.getRevealInfo();
        }

        public final void set(c cVar, d dVar) {
            cVar.setRevealInfo(dVar);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$c  reason: collision with other inner class name */
    public static class C0071c extends Property<c, Integer> {
        public static final Property<c, Integer> CIRCULAR_REVEAL_SCRIM_COLOR = new C0071c("circularRevealScrimColor");

        private C0071c(String str) {
            super(Integer.class, str);
        }

        public final Integer get(c cVar) {
            return Integer.valueOf(cVar.getCircularRevealScrimColor());
        }

        public final void set(c cVar, Integer num) {
            cVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class d {
        public static final float INVALID_RADIUS = Float.MAX_VALUE;
        public float centerX;
        public float centerY;
        public float radius;

        /* synthetic */ d(byte b2) {
            this();
        }

        private d() {
        }

        public d(float f, float f2, float f3) {
            this.centerX = f;
            this.centerY = f2;
            this.radius = f3;
        }

        public d(d dVar) {
            this(dVar.centerX, dVar.centerY, dVar.radius);
        }

        public void set(float f, float f2, float f3) {
            this.centerX = f;
            this.centerY = f2;
            this.radius = f3;
        }

        public void set(d dVar) {
            set(dVar.centerX, dVar.centerY, dVar.radius);
        }

        public boolean isInvalid() {
            return this.radius == Float.MAX_VALUE;
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    void draw(Canvas canvas);

    Drawable getCircularRevealOverlayDrawable();

    int getCircularRevealScrimColor();

    d getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(d dVar);
}
