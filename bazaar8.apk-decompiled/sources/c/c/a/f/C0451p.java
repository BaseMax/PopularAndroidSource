package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;

/* renamed from: c.c.a.f.p  reason: case insensitive filesystem */
/* compiled from: FragmentMoreReviewBindingImpl */
public class C0451p extends C0448o {
    public static final ViewDataBinding.b K = null;
    public static final SparseIntArray L = new SparseIntArray();
    public final CoordinatorLayout M;
    public long N;

    static {
        L.put(R.id.appBarLayout, 5);
        L.put(R.id.toolbar, 6);
        L.put(R.id.reviewToolbarBackButton, 7);
        L.put(R.id.recyclerView, 8);
    }

    public C0451p(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 9, K, L));
    }

    public boolean a(int i2, Object obj) {
        if (53 == i2) {
            a((ToolbarInfoModel) obj);
        } else if (12 != i2) {
            return false;
        } else {
            b((Boolean) obj);
        }
        return true;
    }

    public void b(Boolean bool) {
        this.I = bool;
        synchronized (this) {
            this.N |= 2;
        }
        a(12);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.N;
            this.N = 0;
        }
        ToolbarInfoModel toolbarInfoModel = this.J;
        Boolean bool = this.I;
        long j3 = 5 & j2;
        String str3 = null;
        if (j3 == 0 || toolbarInfoModel == null) {
            str2 = null;
            str = null;
        } else {
            String b2 = toolbarInfoModel.b();
            String a2 = toolbarInfoModel.a();
            str2 = toolbarInfoModel.c();
            str = b2;
            str3 = a2;
        }
        long j4 = j2 & 6;
        if (j3 != 0) {
            AppCompatImageView appCompatImageView = this.B;
            b.a(appCompatImageView, str, null, null, null, null, Float.valueOf(appCompatImageView.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str3);
            f.a((TextView) this.D, (CharSequence) str2);
        }
        if (j4 != 0) {
            b.a((View) this.F, bool);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.N != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.N = 4;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0451p(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[1], objArr[3], objArr[2], objArr[8], objArr[4], objArr[7], objArr[6]);
        this.N = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.M = objArr[0];
        this.M.setTag(null);
        this.D.setTag(null);
        this.F.setTag(null);
        View view2 = view;
        b(view);
        l();
    }

    public void a(ToolbarInfoModel toolbarInfoModel) {
        this.J = toolbarInfoModel;
        synchronized (this) {
            this.N |= 1;
        }
        a(53);
        super.k();
    }
}
