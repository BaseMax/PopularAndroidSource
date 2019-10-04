package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.d  reason: case insensitive filesystem */
/* compiled from: ActivitySplashBindingImpl */
public class C0411d extends C0407c {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = new SparseIntArray();
    public final ConstraintLayout H;
    public long I;

    static {
        G.put(R.id.middleGuideLine, 1);
        G.put(R.id.progressBar, 2);
        G.put(R.id.errorText, 3);
        G.put(R.id.errorActionButton, 4);
        G.put(R.id.errorGroup, 5);
    }

    public C0411d(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, F, G));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.I;
            this.I = 0;
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.I != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.I = 1;
        }
        k();
    }

    public C0411d(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[4], objArr[5], objArr[3], objArr[1], objArr[2]);
        this.I = -1;
        this.H = objArr[0];
        this.H.setTag(null);
        b(view);
        l();
    }
}
