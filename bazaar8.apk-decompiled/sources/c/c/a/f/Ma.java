package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* compiled from: ItemLoadMoreBindingImpl */
public class Ma extends La {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = new SparseIntArray();
    public final ConstraintLayout F;
    public long G;

    static {
        E.put(R.id.loading, 1);
        E.put(R.id.errorText, 2);
        E.put(R.id.refresh, 3);
    }

    public Ma(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, D, E));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.G;
            this.G = 0;
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
            this.G = 1;
        }
        k();
    }

    public Ma(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1], objArr[3]);
        this.G = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        b(view);
        l();
    }
}
