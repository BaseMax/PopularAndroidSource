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

/* renamed from: c.c.a.f.t  reason: case insensitive filesystem */
/* compiled from: FragmentPostCommentBindingImpl */
public class C0462t extends C0459s {
    public static final ViewDataBinding.b M = null;
    public static final SparseIntArray N = new SparseIntArray();
    public final ConstraintLayout O;
    public long P;

    static {
        N.put(R.id.appBarLayout, 4);
        N.put(R.id.toolbar, 5);
        N.put(R.id.toolbarBackButton, 6);
        N.put(R.id.rbPostComment, 7);
        N.put(R.id.etUserComment, 8);
        N.put(R.id.tvCommentCounter, 9);
        N.put(R.id.btSubmitPostComment, 10);
    }

    public C0462t(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 11, M, N));
    }

    public boolean a(int i2, Object obj) {
        if (49 == i2) {
            b((Integer) obj);
        } else if (53 != i2) {
            return false;
        } else {
            a((ToolbarInfoModel) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.K = num;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.P;
            this.P = 0;
        }
        ToolbarInfoModel toolbarInfoModel = this.L;
        long j3 = j2 & 6;
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
            f.a((TextView) this.F, (CharSequence) str2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.P != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.P = 4;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0462t(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[4], objArr[1], objArr[3], objArr[10], objArr[8], objArr[2], objArr[7], objArr[5], objArr[6], objArr[9]);
        this.P = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.O = objArr[0];
        this.O.setTag(null);
        this.F.setTag(null);
        b(view);
        l();
    }

    public void a(ToolbarInfoModel toolbarInfoModel) {
        this.L = toolbarInfoModel;
        synchronized (this) {
            this.P |= 2;
        }
        a(53);
        super.k();
    }
}
