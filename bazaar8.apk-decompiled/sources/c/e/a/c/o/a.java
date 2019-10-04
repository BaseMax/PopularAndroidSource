package c.e.a.c.o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

/* compiled from: MaterialResources */
public class a {
    public static ColorStateList a(Context context, TypedArray typedArray, int i2) {
        if (typedArray.hasValue(i2)) {
            int resourceId = typedArray.getResourceId(i2, 0);
            if (resourceId != 0) {
                ColorStateList b2 = b.b.b.a.a.b(context, resourceId);
                if (b2 != null) {
                    return b2;
                }
            }
        }
        return typedArray.getColorStateList(i2);
    }

    public static Drawable b(Context context, TypedArray typedArray, int i2) {
        if (typedArray.hasValue(i2)) {
            int resourceId = typedArray.getResourceId(i2, 0);
            if (resourceId != 0) {
                Drawable c2 = b.b.b.a.a.c(context, resourceId);
                if (c2 != null) {
                    return c2;
                }
            }
        }
        return typedArray.getDrawable(i2);
    }
}
