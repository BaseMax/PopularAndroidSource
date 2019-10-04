package b.D;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* renamed from: b.D.u  reason: case insensitive filesystem */
/* compiled from: ObjectAnimatorUtils */
public class C0174u {
    public static <T> ObjectAnimator a(T t, Property<T, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return ObjectAnimator.ofObject(t, property, null, path);
        }
        return ObjectAnimator.ofFloat(t, new C0176w(property, path), new float[]{0.0f, 1.0f});
    }
}
