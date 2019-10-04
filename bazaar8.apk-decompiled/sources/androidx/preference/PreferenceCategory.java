package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import b.i.b.a.i;
import b.i.k.a.d;
import b.x.B;
import b.x.C;

public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public boolean I() {
        return !super.w();
    }

    public void a(B b2) {
        super.a(b2);
        if (Build.VERSION.SDK_INT >= 28) {
            b2.f891b.setAccessibilityHeading(true);
        }
    }

    public boolean w() {
        return false;
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.preferenceCategoryStyle, 16842892));
    }

    public void a(d dVar) {
        super.a(dVar);
        if (Build.VERSION.SDK_INT < 28) {
            d.c e2 = dVar.e();
            if (e2 != null) {
                dVar.b((Object) d.c.a(e2.c(), e2.d(), e2.a(), e2.b(), true, e2.e()));
            }
        }
    }
}
