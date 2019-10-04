package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.j;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.x  reason: case insensitive filesystem */
/* compiled from: FragmentScreenshotBindingImpl */
public class C0474x extends C0471w {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = new SparseIntArray();
    public final CoordinatorLayout K;
    public long L;

    static {
        J.put(R.id.screenshotViewPager, 3);
        J.put(R.id.appBarLayout, 4);
        J.put(R.id.toolbar, 5);
        J.put(R.id.screenshotToolbarBackButton, 6);
    }

    public C0474x(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 7, I, J));
    }

    public boolean a(int i2, Object obj) {
        if (25 == i2) {
            a((ObservableField) obj);
        } else if (6 != i2) {
            return false;
        } else {
            b((ObservableField) obj);
        }
        return true;
    }

    public void b(ObservableField observableField) {
        a(1, (j) observableField);
        this.H = observableField;
        synchronized (this) {
            this.L |= 2;
        }
        a(6);
        super.k();
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.L;
            this.L = 0;
        }
        ObservableField observableField = this.G;
        ObservableField observableField2 = this.H;
        long j3 = 5 & j2;
        Object obj = null;
        Object b2 = (j3 == 0 || observableField == null) ? null : observableField.b();
        long j4 = j2 & 6;
        if (!(j4 == 0 || observableField2 == null)) {
            obj = observableField2.b();
        }
        if (j3 != 0) {
            b.a((View) this.B, b2);
        }
        if (j4 != 0) {
            b.a((View) this.C, obj);
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
            this.L = 4;
        }
        k();
    }

    public C0474x(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 2, objArr[4], objArr[2], objArr[1], objArr[6], objArr[3], objArr[5]);
        this.L = -1;
        this.B.setTag(null);
        this.K = objArr[0];
        this.K.setTag(null);
        this.C.setTag(null);
        b(view);
        l();
    }

    public void a(ObservableField observableField) {
        a(0, (j) observableField);
        this.G = observableField;
        synchronized (this) {
            this.L |= 1;
        }
        a(25);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        if (i2 == 0) {
            return a((ObservableField) obj, i3);
        }
        if (i2 != 1) {
            return false;
        }
        return b((ObservableField) obj, i3);
    }

    public final boolean a(ObservableField observableField, int i2) {
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.L |= 1;
        }
        return true;
    }

    public final boolean b(ObservableField observableField, int i2) {
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.L |= 2;
        }
        return true;
    }
}
