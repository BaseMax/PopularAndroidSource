package com.github.ybq.android.spinkit.a;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.animation.Interpolator;
import com.github.ybq.android.spinkit.b.f;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private f f2523a;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f2524b;
    private int c = -1;
    private long d = 2000;
    private int e = 0;
    private Map<String, b> f = new HashMap();

    class a extends b<Float> {
        public a(float[] fArr, Property property, Float[] fArr2) {
            super(fArr, property, fArr2);
        }
    }

    class b<T> {

        /* renamed from: b  reason: collision with root package name */
        float[] f2526b;
        Property c;
        T[] d;

        public b(float[] fArr, Property property, T[] tArr) {
            this.f2526b = fArr;
            this.c = property;
            this.d = tArr;
        }
    }

    class c extends b<Integer> {
        public c(float[] fArr, Property property, Integer[] numArr) {
            super(fArr, property, numArr);
        }
    }

    public d(f fVar) {
        this.f2523a = fVar;
    }

    public final d scale(float[] fArr, Float... fArr2) {
        a(fArr, (Property) f.SCALE, fArr2);
        return this;
    }

    public final d alpha(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.ALPHA, numArr);
        return this;
    }

    public final d scaleX(float[] fArr, Float... fArr2) {
        a(fArr, (Property) f.SCALE, fArr2);
        return this;
    }

    public final d scaleY(float[] fArr, Float... fArr2) {
        a(fArr, (Property) f.SCALE_Y, fArr2);
        return this;
    }

    public final d rotateX(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.ROTATE_X, numArr);
        return this;
    }

    public final d rotateY(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.ROTATE_Y, numArr);
        return this;
    }

    public final d translateX(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.TRANSLATE_X, numArr);
        return this;
    }

    public final d translateY(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.TRANSLATE_Y, numArr);
        return this;
    }

    public final d rotate(float[] fArr, Integer... numArr) {
        a(fArr, (Property) f.ROTATE, numArr);
        return this;
    }

    public final d translateXPercentage(float[] fArr, Float... fArr2) {
        a(fArr, (Property) f.TRANSLATE_X_PERCENTAGE, fArr2);
        return this;
    }

    public final d translateYPercentage(float[] fArr, Float... fArr2) {
        a(fArr, (Property) f.TRANSLATE_Y_PERCENTAGE, fArr2);
        return this;
    }

    private void a(float[] fArr, Property property, Float[] fArr2) {
        a(fArr.length, fArr2.length);
        this.f.put(property.getName(), new a(fArr, property, fArr2));
    }

    private void a(float[] fArr, Property property, Integer[] numArr) {
        a(fArr.length, numArr.length);
        this.f.put(property.getName(), new c(fArr, property, numArr));
    }

    private static void a(int i, int i2) {
        if (i != i2) {
            throw new IllegalStateException(String.format(Locale.getDefault(), "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        }
    }

    public final d interpolator(Interpolator interpolator) {
        this.f2524b = interpolator;
        return this;
    }

    public final d easeInOut(float... fArr) {
        interpolator(com.github.ybq.android.spinkit.a.a.b.easeInOut(fArr));
        return this;
    }

    public final d duration(long j) {
        this.d = j;
        return this;
    }

    public final d repeatCount(int i) {
        this.c = i;
        return this;
    }

    public final d startFrame(int i) {
        if (i < 0) {
            i = 0;
        }
        this.e = i;
        return this;
    }

    public final ObjectAnimator build() {
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[this.f.size()];
        int i = 0;
        for (Map.Entry<String, b> value : this.f.entrySet()) {
            b bVar = (b) value.getValue();
            Keyframe[] keyframeArr = new Keyframe[bVar.f2526b.length];
            float[] fArr = bVar.f2526b;
            int i2 = this.e;
            float f2 = fArr[i2];
            while (i2 < this.e + bVar.d.length) {
                int i3 = i2 - this.e;
                int length = i2 % bVar.d.length;
                float f3 = fArr[length] - f2;
                if (f3 < 0.0f) {
                    f3 += fArr[fArr.length - 1];
                }
                if (bVar instanceof c) {
                    keyframeArr[i3] = Keyframe.ofInt(f3, ((Integer) bVar.d[length]).intValue());
                } else if (bVar instanceof a) {
                    keyframeArr[i3] = Keyframe.ofFloat(f3, ((Float) bVar.d[length]).floatValue());
                } else {
                    keyframeArr[i3] = Keyframe.ofObject(f3, bVar.d[length]);
                }
                i2++;
            }
            propertyValuesHolderArr[i] = PropertyValuesHolder.ofKeyframe(bVar.c, keyframeArr);
            i++;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f2523a, propertyValuesHolderArr);
        ofPropertyValuesHolder.setDuration(this.d);
        ofPropertyValuesHolder.setRepeatCount(this.c);
        ofPropertyValuesHolder.setInterpolator(this.f2524b);
        return ofPropertyValuesHolder;
    }
}
