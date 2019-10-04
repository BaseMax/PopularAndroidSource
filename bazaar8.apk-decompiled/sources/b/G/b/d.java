package b.g.b;

import a.a.a.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* compiled from: Constraints */
public class d extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public c f2490a;

    /* compiled from: Constraints */
    public static class a extends ConstraintLayout.a {
        public float na;
        public boolean oa;
        public float pa;
        public float qa;
        public float ra;
        public float sa;
        public float ta;
        public float ua;
        public float va;
        public float wa;
        public float xa;
        public float ya;
        public float za;

        public a(int i2, int i3) {
            super(i2, i3);
            this.na = 1.0f;
            this.oa = false;
            this.pa = 0.0f;
            this.qa = 0.0f;
            this.ra = 0.0f;
            this.sa = 0.0f;
            this.ta = 1.0f;
            this.ua = 1.0f;
            this.va = 0.0f;
            this.wa = 0.0f;
            this.xa = 0.0f;
            this.ya = 0.0f;
            this.za = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.na = 1.0f;
            this.oa = false;
            this.pa = 0.0f;
            this.qa = 0.0f;
            this.ra = 0.0f;
            this.sa = 0.0f;
            this.ta = 1.0f;
            this.ua = 1.0f;
            this.va = 0.0f;
            this.wa = 0.0f;
            this.xa = 0.0f;
            this.ya = 0.0f;
            this.za = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == b.ConstraintSet_android_alpha) {
                    this.na = obtainStyledAttributes.getFloat(index, this.na);
                } else if (index == b.ConstraintSet_android_elevation) {
                    this.pa = obtainStyledAttributes.getFloat(index, this.pa);
                    this.oa = true;
                } else if (index == b.ConstraintSet_android_rotationX) {
                    this.ra = obtainStyledAttributes.getFloat(index, this.ra);
                } else if (index == b.ConstraintSet_android_rotationY) {
                    this.sa = obtainStyledAttributes.getFloat(index, this.sa);
                } else if (index == b.ConstraintSet_android_rotation) {
                    this.qa = obtainStyledAttributes.getFloat(index, this.qa);
                } else if (index == b.ConstraintSet_android_scaleX) {
                    this.ta = obtainStyledAttributes.getFloat(index, this.ta);
                } else if (index == b.ConstraintSet_android_scaleY) {
                    this.ua = obtainStyledAttributes.getFloat(index, this.ua);
                } else if (index == b.ConstraintSet_android_transformPivotX) {
                    this.va = obtainStyledAttributes.getFloat(index, this.va);
                } else if (index == b.ConstraintSet_android_transformPivotY) {
                    this.wa = obtainStyledAttributes.getFloat(index, this.wa);
                } else if (index == b.ConstraintSet_android_translationX) {
                    this.xa = obtainStyledAttributes.getFloat(index, this.xa);
                } else if (index == b.ConstraintSet_android_translationY) {
                    this.ya = obtainStyledAttributes.getFloat(index, this.ya);
                } else if (index == b.ConstraintSet_android_translationZ) {
                    this.xa = obtainStyledAttributes.getFloat(index, this.za);
                }
            }
        }
    }

    public c getConstraintSet() {
        if (this.f2490a == null) {
            this.f2490a = new c();
        }
        this.f2490a.a(this);
        return this.f2490a;
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.a(layoutParams);
    }
}
