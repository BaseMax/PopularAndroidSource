package androidx.constraintlayout.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import b.g.b.a;

public class Group extends a {
    public Group(Context context) {
        super(context);
    }

    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.f2473e = false;
    }

    public void c(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i2 = 0; i2 < this.f2470b; i2++) {
            View b2 = constraintLayout.b(this.f2469a[i2]);
            if (b2 != null) {
                b2.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    b2.setElevation(elevation);
                }
            }
        }
    }

    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Group(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public void a(ConstraintLayout constraintLayout) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        aVar.la.k(0);
        aVar.la.c(0);
    }
}
