package b.D;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* renamed from: b.D.x  reason: case insensitive filesystem */
/* compiled from: PropertyValuesHolderUtils */
public class C0177x {
    public static PropertyValuesHolder a(Property<?, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return PropertyValuesHolder.ofObject(property, null, path);
        }
        return PropertyValuesHolder.ofFloat(new C0176w(property, path), new float[]{0.0f, 1.0f});
    }
}
