package b.l;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;

/* compiled from: DataBindingUtil */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static C0274d f2943a = new C0275e();

    /* renamed from: b  reason: collision with root package name */
    public static C0276f f2944b = null;

    public static C0276f a() {
        return f2944b;
    }

    public static <T extends ViewDataBinding> T a(LayoutInflater layoutInflater, int i2, ViewGroup viewGroup, boolean z, C0276f fVar) {
        int i3 = 0;
        boolean z2 = viewGroup != null && z;
        if (z2) {
            i3 = viewGroup.getChildCount();
        }
        View inflate = layoutInflater.inflate(i2, viewGroup, z);
        if (z2) {
            return a(fVar, viewGroup, i3, i2);
        }
        return a(fVar, inflate, i2);
    }

    public static <T extends ViewDataBinding> T a(C0276f fVar, View[] viewArr, int i2) {
        return f2943a.a(fVar, viewArr, i2);
    }

    public static <T extends ViewDataBinding> T a(C0276f fVar, View view, int i2) {
        return f2943a.a(fVar, view, i2);
    }

    public static <T extends ViewDataBinding> T a(Activity activity, int i2) {
        return a(activity, i2, f2944b);
    }

    public static <T extends ViewDataBinding> T a(Activity activity, int i2, C0276f fVar) {
        activity.setContentView(i2);
        return a(fVar, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i2);
    }

    public static <T extends ViewDataBinding> T a(C0276f fVar, ViewGroup viewGroup, int i2, int i3) {
        int childCount = viewGroup.getChildCount();
        int i4 = childCount - i2;
        if (i4 == 1) {
            return a(fVar, viewGroup.getChildAt(childCount - 1), i3);
        }
        View[] viewArr = new View[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            viewArr[i5] = viewGroup.getChildAt(i5 + i2);
        }
        return a(fVar, viewArr, i3);
    }
}
