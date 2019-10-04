package b.D;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* renamed from: b.D.w  reason: case insensitive filesystem */
/* compiled from: PathProperty */
public class C0176w<T> extends Property<T, Float> {

    /* renamed from: a  reason: collision with root package name */
    public final Property<T, PointF> f1206a;

    /* renamed from: b  reason: collision with root package name */
    public final PathMeasure f1207b;

    /* renamed from: c  reason: collision with root package name */
    public final float f1208c;

    /* renamed from: d  reason: collision with root package name */
    public final float[] f1209d = new float[2];

    /* renamed from: e  reason: collision with root package name */
    public final PointF f1210e = new PointF();

    /* renamed from: f  reason: collision with root package name */
    public float f1211f;

    public C0176w(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f1206a = property;
        this.f1207b = new PathMeasure(path, false);
        this.f1208c = this.f1207b.getLength();
    }

    /* renamed from: a */
    public void set(T t, Float f2) {
        this.f1211f = f2.floatValue();
        this.f1207b.getPosTan(this.f1208c * f2.floatValue(), this.f1209d, null);
        PointF pointF = this.f1210e;
        float[] fArr = this.f1209d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f1206a.set(t, pointF);
    }

    public Float get(T t) {
        return Float.valueOf(this.f1211f);
    }
}
