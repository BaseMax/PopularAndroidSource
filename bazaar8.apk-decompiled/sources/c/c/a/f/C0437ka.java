package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Space;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.common.model.common.DividerItem;

/* renamed from: c.c.a.f.ka  reason: case insensitive filesystem */
/* compiled from: ItemDividerBindingImpl */
public class C0437ka extends C0434ja {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = null;
    public final FrameLayout D;
    public final View E;
    public final Space F;
    public long G;

    public C0437ka(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, B, C));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((DividerItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            j2 = this.G;
            this.G = 0;
        }
        DividerItem dividerItem = this.A;
        long j3 = j2 & 3;
        boolean z = false;
        if (j3 == 0 || dividerItem == null) {
            i4 = 0;
            i3 = 0;
            i2 = 0;
        } else {
            int startMargin = dividerItem.startMargin(h().getContext());
            boolean showDivide = dividerItem.getShowDivide();
            i2 = dividerItem.endMargin(h().getContext());
            boolean z2 = showDivide;
            i3 = dividerItem.spaceHeight(h().getContext());
            i4 = startMargin;
            z = z2;
        }
        if (j3 != 0) {
            b.a(this.E, Boolean.valueOf(z));
            b.a(this.E, i2);
            b.b(this.E, i4);
            b.a(this.F, i3);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.G != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.G = 2;
        }
        k();
    }

    public C0437ka(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.G = -1;
        this.D = objArr[0];
        this.D.setTag(null);
        this.E = objArr[1];
        this.E.setTag(null);
        this.F = objArr[2];
        this.F.setTag(null);
        b(view);
        l();
    }

    public void a(DividerItem dividerItem) {
        this.A = dividerItem;
        synchronized (this) {
            this.G |= 1;
        }
        a(45);
        super.k();
    }
}
