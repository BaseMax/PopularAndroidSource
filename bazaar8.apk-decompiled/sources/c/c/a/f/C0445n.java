package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;

/* renamed from: c.c.a.f.n  reason: case insensitive filesystem */
/* compiled from: FragmentMoreDescriptionDetailBindingImpl */
public class C0445n extends C0442m {
    public static final ViewDataBinding.b J = null;
    public static final SparseIntArray K = new SparseIntArray();
    public final LinearLayout L;
    public final AppCompatTextView M;
    public long N;

    static {
        K.put(R.id.appBarLayout, 5);
        K.put(R.id.toolbar, 6);
        K.put(R.id.backButton, 7);
        K.put(R.id.nestedScroll, 8);
    }

    public C0445n(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 9, J, K));
    }

    public boolean a(int i2, Object obj) {
        if (53 == i2) {
            a((ToolbarInfoModel) obj);
        } else if (42 != i2) {
            return false;
        } else {
            a((String) obj);
        }
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
            j2 = this.N;
            this.N = 0;
        }
        ToolbarInfoModel toolbarInfoModel = this.H;
        String str3 = this.I;
        long j3 = 5 & j2;
        String str4 = null;
        if (j3 == 0 || toolbarInfoModel == null) {
            str2 = null;
            str = null;
        } else {
            String b2 = toolbarInfoModel.b();
            String a2 = toolbarInfoModel.a();
            str2 = toolbarInfoModel.c();
            str = b2;
            str4 = a2;
        }
        long j4 = j2 & 6;
        if (j3 != 0) {
            AppCompatImageView appCompatImageView = this.B;
            b.a(appCompatImageView, str, null, null, null, null, Float.valueOf(appCompatImageView.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str4);
            f.a((TextView) this.F, (CharSequence) str2);
        }
        if (j4 != 0) {
            b.a((TextView) this.M, str3);
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

    public C0445n(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[1], objArr[3], objArr[7], objArr[8], objArr[2], objArr[6]);
        this.N = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.L = objArr[0];
        this.L.setTag(null);
        this.M = objArr[4];
        this.M.setTag(null);
        this.F.setTag(null);
        b(view);
        l();
    }

    public void a(ToolbarInfoModel toolbarInfoModel) {
        this.H = toolbarInfoModel;
        synchronized (this) {
            this.N |= 1;
        }
        a(53);
        super.k();
    }

    public void a(String str) {
        this.I = str;
        synchronized (this) {
            this.N |= 2;
        }
        a(42);
        super.k();
    }
}
