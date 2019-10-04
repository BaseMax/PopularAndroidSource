package b.D;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;

/* renamed from: b.D.d  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
class C0158d extends Property<Drawable, PointF> {

    /* renamed from: a  reason: collision with root package name */
    public Rect f1144a = new Rect();

    public C0158d(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public void set(Drawable drawable, PointF pointF) {
        drawable.copyBounds(this.f1144a);
        this.f1144a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
        drawable.setBounds(this.f1144a);
    }

    /* renamed from: a */
    public PointF get(Drawable drawable) {
        drawable.copyBounds(this.f1144a);
        Rect rect = this.f1144a;
        return new PointF((float) rect.left, (float) rect.top);
    }
}
