package c.c.a.d.h.b;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.animation.Interpolator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: SpriteAnimatorBuilder */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public w f4843a;

    /* renamed from: b  reason: collision with root package name */
    public Interpolator f4844b;

    /* renamed from: c  reason: collision with root package name */
    public int f4845c = -1;

    /* renamed from: d  reason: collision with root package name */
    public long f4846d = 2000;

    /* renamed from: e  reason: collision with root package name */
    public int f4847e = 0;

    /* renamed from: f  reason: collision with root package name */
    public Map<String, b> f4848f = new HashMap();

    /* compiled from: SpriteAnimatorBuilder */
    class a extends b<Float> {
        public a(float[] fArr, Property property, Float[] fArr2) {
            super(fArr, property, fArr2);
        }
    }

    /* compiled from: SpriteAnimatorBuilder */
    class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public float[] f4850a;

        /* renamed from: b  reason: collision with root package name */
        public Property f4851b;

        /* renamed from: c  reason: collision with root package name */
        public T[] f4852c;

        public b(float[] fArr, Property property, T[] tArr) {
            this.f4850a = fArr;
            this.f4851b = property;
            this.f4852c = tArr;
        }
    }

    public x(w wVar) {
        this.f4843a = wVar;
    }

    public x a(float[] fArr, Float... fArr2) {
        a(fArr, w.f4841k, fArr2);
        return this;
    }

    public final void a(float[] fArr, Property property, Float[] fArr2) {
        a(fArr.length, fArr2.length);
        this.f4848f.put(property.getName(), new a(fArr, property, fArr2));
    }

    public final void a(int i2, int i3) {
        if (i2 != i3) {
            throw new IllegalStateException(String.format(Locale.getDefault(), "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]", new Object[]{Integer.valueOf(i2), Integer.valueOf(i3)}));
        }
    }

    public x a(Interpolator interpolator) {
        this.f4844b = interpolator;
        return this;
    }

    public x a(float... fArr) {
        a((Interpolator) f.a(fArr));
        return this;
    }

    public x a(long j2) {
        this.f4846d = j2;
        return this;
    }

    public ObjectAnimator a() {
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[this.f4848f.size()];
        int i2 = 0;
        for (Map.Entry<String, b> value : this.f4848f.entrySet()) {
            b bVar = (b) value.getValue();
            float[] fArr = bVar.f4850a;
            Keyframe[] keyframeArr = new Keyframe[fArr.length];
            int i3 = this.f4847e;
            float f2 = fArr[i3];
            while (true) {
                int i4 = this.f4847e;
                T[] tArr = bVar.f4852c;
                if (i3 >= tArr.length + i4) {
                    break;
                }
                int i5 = i3 - i4;
                int length = i3 % tArr.length;
                float f3 = fArr[length] - f2;
                if (f3 < 0.0f) {
                    f3 += fArr[fArr.length - 1];
                }
                if (bVar instanceof a) {
                    keyframeArr[i5] = Keyframe.ofFloat(f3, ((Float) bVar.f4852c[length]).floatValue());
                } else {
                    keyframeArr[i5] = Keyframe.ofObject(f3, bVar.f4852c[length]);
                }
                i3++;
            }
            propertyValuesHolderArr[i2] = PropertyValuesHolder.ofKeyframe(bVar.f4851b, keyframeArr);
            i2++;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f4843a, propertyValuesHolderArr);
        ofPropertyValuesHolder.setDuration(this.f4846d);
        ofPropertyValuesHolder.setRepeatCount(this.f4845c);
        ofPropertyValuesHolder.setInterpolator(this.f4844b);
        return ofPropertyValuesHolder;
    }
}
