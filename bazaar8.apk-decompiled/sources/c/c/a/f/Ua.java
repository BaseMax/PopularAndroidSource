package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarHeaderItem;

/* compiled from: ItemMyBazaarHeaderBindingImpl */
public class Ua extends Ta {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = null;
    public final ConstraintLayout D;
    public final AppCompatTextView E;
    public long F;

    public Ua(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, B, C));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((MyBazaarHeaderItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.F;
            this.F = 0;
        }
        MyBazaarHeaderItem myBazaarHeaderItem = this.A;
        int i2 = 0;
        long j3 = j2 & 3;
        if (!(j3 == 0 || myBazaarHeaderItem == null)) {
            i2 = myBazaarHeaderItem.a();
        }
        if (j3 != 0) {
            this.E.setText(i2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.F != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.F = 2;
        }
        k();
    }

    public Ua(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.F = -1;
        this.D = objArr[0];
        this.D.setTag(null);
        this.E = objArr[1];
        this.E.setTag(null);
        b(view);
        l();
    }

    public void a(MyBazaarHeaderItem myBazaarHeaderItem) {
        this.A = myBazaarHeaderItem;
        synchronized (this) {
            this.F |= 1;
        }
        a(45);
        super.k();
    }
}
