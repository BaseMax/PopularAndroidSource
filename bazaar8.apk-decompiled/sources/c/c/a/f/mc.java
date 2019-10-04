package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;

/* compiled from: ItemVideoDetailVideoScreenshotsBindingImpl */
public class mc extends lc {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = null;
    public long E;

    public mc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 1, C, D));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((ScreenshotsItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.E;
            this.E = 0;
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.E != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.E = 2;
        }
        k();
    }

    public mc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[0]);
        this.E = -1;
        this.A.setTag(null);
        b(view);
        l();
    }

    public void a(ScreenshotsItem screenshotsItem) {
        this.B = screenshotsItem;
    }
}
