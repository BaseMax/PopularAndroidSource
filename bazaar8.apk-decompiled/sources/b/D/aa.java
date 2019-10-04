package b.D;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import b.i.k.z;

/* compiled from: ViewUtils */
class aa extends Property<View, Rect> {
    public aa(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public Rect get(View view) {
        return z.g(view);
    }

    /* renamed from: a */
    public void set(View view, Rect rect) {
        z.a(view, rect);
    }
}
