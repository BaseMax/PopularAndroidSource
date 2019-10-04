package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import cab.snapp.snappuikit.a;
import com.github.ybq.android.spinkit.SpinKitView;
import com.github.ybq.android.spinkit.c.b;
import com.github.ybq.android.spinkit.c.c;
import com.github.ybq.android.spinkit.c.d;
import com.github.ybq.android.spinkit.c.e;
import com.github.ybq.android.spinkit.c.f;
import com.github.ybq.android.spinkit.c.i;
import com.github.ybq.android.spinkit.c.k;
import com.github.ybq.android.spinkit.c.l;
import com.github.ybq.android.spinkit.c.m;
import com.github.ybq.android.spinkit.c.n;
import com.github.ybq.android.spinkit.c.o;

public class SnappSpin extends LinearLayout {
    public static final int SIZE_LARGE = 3;
    public static final int SIZE_MEDIUM = 2;
    public static final int SIZE_SMALL = 1;
    public static final int TYPE_CHASING_DOTS = 106;
    public static final int TYPE_CIRCLE = 108;
    public static final int TYPE_CUBE_GRID = 109;
    public static final int TYPE_DOUBLE_BOUNCE = 102;
    public static final int TYPE_FADING_CIRCLE = 110;
    public static final int TYPE_FOLDING_CUBE = 111;
    public static final int TYPE_PULSE = 105;
    public static final int TYPE_ROTATING_CIRCLE = 112;
    public static final int TYPE_ROTATING_PLANE = 101;
    public static final int TYPE_THREE_BOUNCE = 107;
    public static final int TYPE_WANDERING_CUBES = 104;
    public static final int TYPE_WAVE = 103;

    /* renamed from: a  reason: collision with root package name */
    private int f1619a = -16777216;

    /* renamed from: b  reason: collision with root package name */
    private int f1620b = 2;
    private int c = 101;
    private SpinKitView d;

    public SnappSpin(Context context) {
        super(context);
        a(context, null);
    }

    public SnappSpin(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SnappSpin(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public SnappSpin(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        a(attributeSet);
        LayoutInflater.from(context).inflate(getLayoutBasedOnSize(), this, true);
        a();
    }

    private int getLayoutBasedOnSize() {
        int i = this.f1620b;
        if (i == 1) {
            return a.g.spin_layout_small;
        }
        if (i != 3) {
            return a.g.spin_layout;
        }
        return a.g.spin_layout_large;
    }

    private void a() {
        setGravity(17);
        this.d = (SpinKitView) findViewById(a.f.spin_layout_spin_view);
        this.d.setColor(this.f1619a);
        this.d.setIndeterminateDrawable(getDrawableBasedOnType());
    }

    private Drawable getDrawableBasedOnType() {
        switch (this.c) {
            case 102:
                return new d();
            case 103:
                return new o();
            case 104:
                return new n();
            case 105:
                return new i();
            case 106:
                return new com.github.ybq.android.spinkit.c.a();
            case 107:
                return new m();
            case 108:
                return new b();
            case 109:
                return new c();
            case 110:
                return new e();
            case 111:
                return new f();
            case 112:
                return new k();
            default:
                return new l();
        }
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.spinOptions, 0, 0);
        this.f1619a = obtainStyledAttributes.getColor(a.h.spinOptions_spinColor, 0);
        this.f1620b = obtainStyledAttributes.getInt(a.h.spinOptions_spinSize, 0);
        this.c = obtainStyledAttributes.getInt(a.h.spinOptions_spinType, 0);
        obtainStyledAttributes.recycle();
    }

    public void setSpinColor(int i) {
        this.f1619a = i;
        SpinKitView spinKitView = this.d;
        if (spinKitView != null) {
            spinKitView.setColor(this.f1619a);
        }
    }

    public void setSpinType(int i) {
        this.c = i;
        SpinKitView spinKitView = this.d;
        if (spinKitView != null) {
            spinKitView.setIndeterminateDrawable(getDrawableBasedOnType());
        }
    }

    public void setSpinSize(int i) {
        this.f1620b = i;
        if (getContext() != null) {
            removeAllViews();
            LayoutInflater.from(getContext()).inflate(getLayoutBasedOnSize(), this, true);
            a();
        }
    }
}
