package com.google.android.material.i;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f3913a = new ArrayList();
    public float endX;
    public float endY;
    public float startX;
    public float startY;

    public static class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private static final RectF f3914a = new RectF();
        public float bottom;
        public float left;
        public float right;
        public float startAngle;
        public float sweepAngle;
        public float top;

        public a(float f, float f2, float f3, float f4) {
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
        }

        public final void applyToPath(Matrix matrix, Path path) {
            Matrix matrix2 = this.c;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f3914a.set(this.left, this.top, this.right, this.bottom);
            path.arcTo(f3914a, this.startAngle, this.sweepAngle, false);
            path.transform(matrix);
        }
    }

    public static class b extends c {

        /* renamed from: a  reason: collision with root package name */
        float f3915a;

        /* renamed from: b  reason: collision with root package name */
        float f3916b;

        public final void applyToPath(Matrix matrix, Path path) {
            Matrix matrix2 = this.c;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f3915a, this.f3916b);
            path.transform(matrix);
        }
    }

    public static abstract class c {
        protected final Matrix c = new Matrix();

        public abstract void applyToPath(Matrix matrix, Path path);
    }

    /* renamed from: com.google.android.material.i.d$d  reason: collision with other inner class name */
    public static class C0073d extends c {
        public float controlX;
        public float controlY;
        public float endX;
        public float endY;

        public final void applyToPath(Matrix matrix, Path path) {
            Matrix matrix2 = this.c;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(this.controlX, this.controlY, this.endX, this.endY);
            path.transform(matrix);
        }
    }

    public d() {
        reset(0.0f, 0.0f);
    }

    public d(float f, float f2) {
        reset(f, f2);
    }

    public final void reset(float f, float f2) {
        this.startX = f;
        this.startY = f2;
        this.endX = f;
        this.endY = f2;
        this.f3913a.clear();
    }

    public final void lineTo(float f, float f2) {
        b bVar = new b();
        bVar.f3915a = f;
        bVar.f3916b = f2;
        this.f3913a.add(bVar);
        this.endX = f;
        this.endY = f2;
    }

    public final void quadToPoint(float f, float f2, float f3, float f4) {
        C0073d dVar = new C0073d();
        dVar.controlX = f;
        dVar.controlY = f2;
        dVar.endX = f3;
        dVar.endY = f4;
        this.f3913a.add(dVar);
        this.endX = f3;
        this.endY = f4;
    }

    public final void addArc(float f, float f2, float f3, float f4, float f5, float f6) {
        a aVar = new a(f, f2, f3, f4);
        aVar.startAngle = f5;
        aVar.sweepAngle = f6;
        this.f3913a.add(aVar);
        double d = (double) (f5 + f6);
        this.endX = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d))));
        this.endY = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d))));
    }

    public final void applyToPath(Matrix matrix, Path path) {
        int size = this.f3913a.size();
        for (int i = 0; i < size; i++) {
            this.f3913a.get(i).applyToPath(matrix, path);
        }
    }
}
