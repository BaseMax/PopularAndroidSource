package com.google.android.material.a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

public final class f extends Property<ImageView, Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f3766a = new Matrix();

    public f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    public final void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }

    public final Matrix get(ImageView imageView) {
        this.f3766a.set(imageView.getImageMatrix());
        return this.f3766a;
    }
}
