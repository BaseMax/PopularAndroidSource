package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

final class t extends BitmapDrawable {
    private static final Paint e = new Paint();

    /* renamed from: a  reason: collision with root package name */
    Drawable f5300a;

    /* renamed from: b  reason: collision with root package name */
    long f5301b;
    boolean c;
    int d = 255;
    private final boolean f;
    private final float g;
    private final Picasso.LoadedFrom h;

    static void a(ImageView imageView, Context context, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        t tVar = new t(context, bitmap, drawable, loadedFrom, z, z2);
        imageView.setImageDrawable(tVar);
    }

    static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    private t(Context context, Bitmap bitmap, Drawable drawable, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f = z2;
        this.g = context.getResources().getDisplayMetrics().density;
        this.h = loadedFrom;
        if (loadedFrom != Picasso.LoadedFrom.MEMORY && !z) {
            this.f5300a = drawable;
            this.c = true;
            this.f5301b = SystemClock.uptimeMillis();
        }
    }

    public final void draw(Canvas canvas) {
        if (!this.c) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f5301b)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.c = false;
                this.f5300a = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f5300a;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (((float) this.d) * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.d);
            }
        }
        if (this.f) {
            e.setColor(-1);
            canvas.drawPath(a((int) (this.g * 16.0f)), e);
            e.setColor(this.h.f5246a);
            canvas.drawPath(a((int) (this.g * 15.0f)), e);
        }
    }

    public final void setAlpha(int i) {
        this.d = i;
        Drawable drawable = this.f5300a;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f5300a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }

    /* access modifiers changed from: protected */
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f5300a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    private static Path a(int i) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        float f2 = (float) (i + 0);
        path.lineTo(f2, 0.0f);
        path.lineTo(0.0f, f2);
        return path;
    }
}
