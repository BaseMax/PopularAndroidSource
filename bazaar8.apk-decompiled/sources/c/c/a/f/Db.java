package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;

/* compiled from: ItemTransactionHeaderBindingImpl */
public class Db extends Cb {
    public static final ViewDataBinding.b A = null;
    public static final SparseIntArray B = null;
    public final LinearLayout C;
    public long D;

    public Db(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 1, A, B));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.D;
            this.D = 0;
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.D != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.D = 1;
        }
        k();
    }

    public Db(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.D = -1;
        this.C = objArr[0];
        this.C.setTag(null);
        b(view);
        l();
    }
}
