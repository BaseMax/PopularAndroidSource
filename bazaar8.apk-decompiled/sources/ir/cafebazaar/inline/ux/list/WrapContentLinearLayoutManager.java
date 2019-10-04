package ir.cafebazaar.inline.ux.list;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class WrapContentLinearLayoutManager extends LinearLayoutManager {
    public int[] H;

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < j(); i6++) {
            a(pVar, i6, View.MeasureSpec.makeMeasureSpec(i6, 0), View.MeasureSpec.makeMeasureSpec(i6, 0), this.H);
            if (L() == 0) {
                int[] iArr = this.H;
                i5 += iArr[0];
                if (i6 == 0) {
                    i4 = iArr[1];
                }
            } else {
                int[] iArr2 = this.H;
                i4 += iArr2[1];
                if (i6 == 0) {
                    i5 = iArr2[0];
                }
            }
        }
        if (i4 >= size2 || i5 >= size) {
            super.a(pVar, tVar, i2, i3);
            return;
        }
        if (mode == 1073741824) {
            i5 = size;
        }
        if (mode2 == 1073741824) {
            i4 = size2;
        }
        c(i5, i4);
    }

    public final void a(RecyclerView.p pVar, int i2, int i3, int i4, int[] iArr) {
        View view;
        try {
            view = pVar.d(i2);
        } catch (Exception unused) {
            view = null;
        }
        if (view != null) {
            super.a(view, 0, 0);
            RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
            view.measure(ViewGroup.getChildMeasureSpec(i3, o() + p() + f(view) + i(view), jVar.width), ViewGroup.getChildMeasureSpec(i4, q() + n() + n() + e(view), jVar.height));
            iArr[0] = h(view) + jVar.leftMargin + jVar.rightMargin;
            iArr[1] = g(view) + jVar.bottomMargin + jVar.topMargin;
            pVar.b(view);
        }
    }
}
