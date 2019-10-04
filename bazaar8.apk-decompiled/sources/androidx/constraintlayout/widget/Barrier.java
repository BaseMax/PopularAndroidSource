package androidx.constraintlayout.widget;

import a.a.a.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import b.g.b.a;

public class Barrier extends a {

    /* renamed from: g  reason: collision with root package name */
    public int f525g = 0;

    /* renamed from: h  reason: collision with root package name */
    public int f526h = 0;

    /* renamed from: i  reason: collision with root package name */
    public b.g.a.a.a f527i;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.f527i = new b.g.a.a.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == b.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == b.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f527i.c(obtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.f2472d = this.f527i;
        a();
    }

    public int getType() {
        return this.f525g;
    }

    public void setType(int i2) {
        this.f525g = i2;
        this.f526h = i2;
        if (Build.VERSION.SDK_INT < 17) {
            int i3 = this.f525g;
            if (i3 == 5) {
                this.f526h = 0;
            } else if (i3 == 6) {
                this.f526h = 1;
            }
        } else {
            if (1 == getResources().getConfiguration().getLayoutDirection()) {
                int i4 = this.f525g;
                if (i4 == 5) {
                    this.f526h = 1;
                } else if (i4 == 6) {
                    this.f526h = 0;
                }
            } else {
                int i5 = this.f525g;
                if (i5 == 5) {
                    this.f526h = 0;
                } else if (i5 == 6) {
                    this.f526h = 1;
                }
            }
        }
        this.f527i.p(this.f526h);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }
}
