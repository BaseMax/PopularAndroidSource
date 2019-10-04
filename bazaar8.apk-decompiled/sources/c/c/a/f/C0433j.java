package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;

/* renamed from: c.c.a.f.j  reason: case insensitive filesystem */
/* compiled from: FragmentMoreArticleBindingImpl */
public class C0433j extends C0430i {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = new SparseIntArray();
    public final ConstraintLayout K;
    public long L;

    static {
        J.put(R.id.appBarLayout, 4);
        J.put(R.id.toolbar, 5);
        J.put(R.id.toolbarBackButton, 6);
        J.put(R.id.recyclerView, 7);
    }

    public C0433j(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 8, I, J));
    }

    public boolean a(int i2, Object obj) {
        if (53 != i2) {
            return false;
        }
        a((ToolbarInfoModel) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.L;
            this.L = 0;
        }
        ToolbarInfoModel toolbarInfoModel = this.H;
        long j3 = j2 & 3;
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
        if (j3 != 0) {
            b.a(this.B, str, null, null, null, null, null);
            f.a((TextView) this.C, (CharSequence) str3);
            f.a((TextView) this.D, (CharSequence) str2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.L != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.L = 2;
        }
        k();
    }

    public C0433j(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[4], objArr[1], objArr[3], objArr[2], objArr[7], objArr[5], objArr[6]);
        this.L = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.K = objArr[0];
        this.K.setTag(null);
        this.D.setTag(null);
        b(view);
        l();
    }

    public void a(ToolbarInfoModel toolbarInfoModel) {
        this.H = toolbarInfoModel;
        synchronized (this) {
            this.L |= 1;
        }
        a(53);
        super.k();
    }
}
