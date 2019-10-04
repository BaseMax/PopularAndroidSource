package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ScrollbarHelper */
public class O {
    public static int a(RecyclerView.t tVar, D d2, View view, View view2, RecyclerView.i iVar, boolean z, boolean z2) {
        int i2;
        if (iVar.e() == 0 || tVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(iVar.l(view), iVar.l(view2));
        int max = Math.max(iVar.l(view), iVar.l(view2));
        if (z2) {
            i2 = Math.max(0, (tVar.a() - max) - 1);
        } else {
            i2 = Math.max(0, min);
        }
        if (!z) {
            return i2;
        }
        return Math.round((((float) i2) * (((float) Math.abs(d2.a(view2) - d2.d(view))) / ((float) (Math.abs(iVar.l(view) - iVar.l(view2)) + 1)))) + ((float) (d2.f() - d2.d(view))));
    }

    public static int b(RecyclerView.t tVar, D d2, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.e() == 0 || tVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return tVar.a();
        }
        return (int) ((((float) (d2.a(view2) - d2.d(view))) / ((float) (Math.abs(iVar.l(view) - iVar.l(view2)) + 1))) * ((float) tVar.a()));
    }

    public static int a(RecyclerView.t tVar, D d2, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.e() == 0 || tVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(iVar.l(view) - iVar.l(view2)) + 1;
        }
        return Math.min(d2.g(), d2.a(view2) - d2.d(view));
    }
}
