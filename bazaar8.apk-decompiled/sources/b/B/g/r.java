package b.b.g;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import b.i.c.a.d;
import e.a.a.a.a.b.C1046a;

/* compiled from: AppCompatProgressBarHelper */
public class r {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2229a = {16843067, 16843068};

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f2230b;

    /* renamed from: c  reason: collision with root package name */
    public Bitmap f2231c;

    public r(ProgressBar progressBar) {
        this.f2230b = progressBar;
    }

    public void a(AttributeSet attributeSet, int i2) {
        pa a2 = pa.a(this.f2230b.getContext(), attributeSet, f2229a, i2, 0);
        Drawable c2 = a2.c(0);
        if (c2 != null) {
            this.f2230b.setIndeterminateDrawable(a(c2));
        }
        Drawable c3 = a2.c(1);
        if (c3 != null) {
            this.f2230b.setProgressDrawable(a(c3, false));
        }
        a2.a();
    }

    public Bitmap b() {
        return this.f2231c;
    }

    public final Drawable a(Drawable drawable, boolean z) {
        if (drawable instanceof d) {
            d dVar = (d) drawable;
            Drawable a2 = dVar.a();
            if (a2 != null) {
                dVar.a(a(a2, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                int id = layerDrawable.getId(i2);
                drawableArr[i2] = a(layerDrawable.getDrawable(i2), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i3 = 0; i3 < numberOfLayers; i3++) {
                layerDrawable2.setId(i3, layerDrawable.getId(i3));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f2231c == null) {
                this.f2231c = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(a());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            drawable = z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }

    public final Drawable a(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            Drawable a2 = a(animationDrawable.getFrame(i2), true);
            a2.setLevel(C1046a.DEFAULT_TIMEOUT);
            animationDrawable2.addFrame(a2, animationDrawable.getDuration(i2));
        }
        animationDrawable2.setLevel(C1046a.DEFAULT_TIMEOUT);
        return animationDrawable2;
    }

    public final Shape a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }
}
