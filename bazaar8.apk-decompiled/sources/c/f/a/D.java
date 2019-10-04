package c.f.a;

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

/* compiled from: PicassoDrawable */
public final class D extends BitmapDrawable {

    /* renamed from: a  reason: collision with root package name */
    public static final Paint f11879a = new Paint();

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11880b;

    /* renamed from: c  reason: collision with root package name */
    public final float f11881c;

    /* renamed from: d  reason: collision with root package name */
    public final Picasso.LoadedFrom f11882d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f11883e;

    /* renamed from: f  reason: collision with root package name */
    public long f11884f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11885g;

    /* renamed from: h  reason: collision with root package name */
    public int f11886h = 255;

    public D(Context context, Bitmap bitmap, Drawable drawable, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f11880b = z2;
        this.f11881c = context.getResources().getDisplayMetrics().density;
        this.f11882d = loadedFrom;
        if (loadedFrom != Picasso.LoadedFrom.MEMORY && !z) {
            this.f11883e = drawable;
            this.f11885g = true;
            this.f11884f = SystemClock.uptimeMillis();
        }
    }

    public static void a(ImageView imageView, Context context, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        D d2 = new D(context, bitmap, drawable, loadedFrom, z, z2);
        imageView.setImageDrawable(d2);
    }

    public void draw(Canvas canvas) {
        if (!this.f11885g) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f11884f)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f11885g = false;
                this.f11883e = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f11883e;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (((float) this.f11886h) * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f11886h);
            }
        }
        if (this.f11880b) {
            a(canvas);
        }
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f11883e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    public void setAlpha(int i2) {
        this.f11886h = i2;
        Drawable drawable = this.f11883e;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
        super.setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f11883e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }

    public static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    public final void a(Canvas canvas) {
        f11879a.setColor(-1);
        canvas.drawPath(a(0, 0, (int) (this.f11881c * 16.0f)), f11879a);
        f11879a.setColor(this.f11882d.debugColor);
        canvas.drawPath(a(0, 0, (int) (this.f11881c * 15.0f)), f11879a);
    }

    public static Path a(int i2, int i3, int i4) {
        Path path = new Path();
        float f2 = (float) i2;
        float f3 = (float) i3;
        path.moveTo(f2, f3);
        path.lineTo((float) (i2 + i4), f3);
        path.lineTo(f2, (float) (i3 + i4));
        return path;
    }
}
