package com.farsitel.bazaar.ui.base.recycler;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.D;
import h.f.b.j;

/* compiled from: PreloadLinearLayoutManager.kt */
public final class PreloadLinearLayoutManager extends LinearLayoutManager {
    public final D H;
    public int I;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PreloadLinearLayoutManager(Context context, int i2, boolean z) {
        super(context, i2, z);
        j.b(context, "context");
        D a2 = D.a(this, i2);
        j.a((Object) a2, "OrientationHelper.create…Helper(this, orientation)");
        this.H = a2;
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        j.b(tVar, "state");
        j.b(aVar, "layoutPrefetchRegistry");
        super.a(i2, i3, tVar, aVar);
        if (L() != 0) {
            i2 = i3;
        }
        if (e() != 0 && i2 != 0) {
            int i4 = i2 > 0 ? 1 : -1;
            View m = m(i4);
            if (m != null) {
                int l2 = l(m) + i4;
                if (i4 == 1) {
                    int a2 = this.H.a(m) - this.H.b();
                    int i5 = l2 + this.I + 1;
                    for (int i6 = l2 + 1; i6 < i5; i6++) {
                        if (i6 >= 0 && i6 < tVar.a()) {
                            aVar.a(i6, Math.max(0, a2));
                        }
                    }
                }
            }
        }
    }

    public final View m(int i2) {
        return d(i2 == -1 ? 0 : e() - 1);
    }

    public final void n(int i2) {
        if (i2 >= 1) {
            this.I = i2 - 1;
            k(this.I);
            return;
        }
        throw new IllegalArgumentException("adjacentPrefetchItemCount must not smaller than 1!");
    }
}
