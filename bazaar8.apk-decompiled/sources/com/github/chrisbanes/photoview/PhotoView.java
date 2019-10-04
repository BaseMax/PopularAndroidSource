package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import c.d.a.a.e;
import c.d.a.a.f;
import c.d.a.a.g;
import c.d.a.a.h;
import c.d.a.a.i;
import c.d.a.a.j;
import c.d.a.a.k;
import c.d.a.a.p;

public class PhotoView extends AppCompatImageView {

    /* renamed from: c  reason: collision with root package name */
    public p f12504c;

    /* renamed from: d  reason: collision with root package name */
    public ImageView.ScaleType f12505d;

    public PhotoView(Context context) {
        this(context, null);
    }

    public final void a() {
        this.f12504c = new p(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f12505d;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f12505d = null;
        }
    }

    public boolean b(Matrix matrix) {
        return this.f12504c.b(matrix);
    }

    public p getAttacher() {
        return this.f12504c;
    }

    public RectF getDisplayRect() {
        return this.f12504c.f();
    }

    public Matrix getImageMatrix() {
        return this.f12504c.h();
    }

    public float getMaximumScale() {
        return this.f12504c.i();
    }

    public float getMediumScale() {
        return this.f12504c.j();
    }

    public float getMinimumScale() {
        return this.f12504c.k();
    }

    public float getScale() {
        return this.f12504c.l();
    }

    public ImageView.ScaleType getScaleType() {
        return this.f12504c.m();
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f12504c.a(z);
    }

    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        if (frame) {
            this.f12504c.o();
        }
        return frame;
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        p pVar = this.f12504c;
        if (pVar != null) {
            pVar.o();
        }
    }

    public void setImageResource(int i2) {
        super.setImageResource(i2);
        p pVar = this.f12504c;
        if (pVar != null) {
            pVar.o();
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        p pVar = this.f12504c;
        if (pVar != null) {
            pVar.o();
        }
    }

    public void setMaximumScale(float f2) {
        this.f12504c.a(f2);
    }

    public void setMediumScale(float f2) {
        this.f12504c.b(f2);
    }

    public void setMinimumScale(float f2) {
        this.f12504c.c(f2);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f12504c.a(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f12504c.a(onDoubleTapListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f12504c.a(onLongClickListener);
    }

    public void setOnMatrixChangeListener(e eVar) {
        this.f12504c.a(eVar);
    }

    public void setOnOutsidePhotoTapListener(f fVar) {
        this.f12504c.a(fVar);
    }

    public void setOnPhotoTapListener(g gVar) {
        this.f12504c.a(gVar);
    }

    public void setOnScaleChangeListener(h hVar) {
        this.f12504c.a(hVar);
    }

    public void setOnSingleFlingListener(i iVar) {
        this.f12504c.a(iVar);
    }

    public void setOnViewDragListener(j jVar) {
        this.f12504c.a(jVar);
    }

    public void setOnViewTapListener(k kVar) {
        this.f12504c.a(kVar);
    }

    public void setRotationBy(float f2) {
        this.f12504c.d(f2);
    }

    public void setRotationTo(float f2) {
        this.f12504c.e(f2);
    }

    public void setScale(float f2) {
        this.f12504c.f(f2);
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        p pVar = this.f12504c;
        if (pVar == null) {
            this.f12505d = scaleType;
        } else {
            pVar.a(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i2) {
        this.f12504c.a(i2);
    }

    public void setZoomable(boolean z) {
        this.f12504c.b(z);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    public boolean a(Matrix matrix) {
        return this.f12504c.b(matrix);
    }
}
