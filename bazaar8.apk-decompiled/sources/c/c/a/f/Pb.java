package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoDetailCrewsBindingImpl */
public class Pb extends Ob {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = new SparseIntArray();
    public final LinearLayout E;
    public long F;

    static {
        D.put(R.id.crewItemTitle, 1);
        D.put(R.id.crewItemRecyclerView, 2);
    }

    public Pb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, C, D));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.F;
            this.F = 0;
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
            this.F = 1;
        }
        k();
    }

    public Pb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.F = -1;
        this.E = objArr[0];
        this.E.setTag(null);
        b(view);
        l();
    }
}
