package b.D;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;

/* renamed from: b.D.h  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
class C0162h extends Property<View, PointF> {
    public C0162h(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(View view) {
        return null;
    }

    /* renamed from: a */
    public void set(View view, PointF pointF) {
        ba.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
    }
}
