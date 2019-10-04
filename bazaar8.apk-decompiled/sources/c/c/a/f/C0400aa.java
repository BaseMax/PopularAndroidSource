package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.aa  reason: case insensitive filesystem */
/* compiled from: ItemArticleTitleBindingImpl */
public class C0400aa extends Z {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = new SparseIntArray();
    public final FrameLayout D;
    public long E;

    static {
        C.put(R.id.myRateTtile, 1);
    }

    public C0400aa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, B, C));
    }

    public boolean a(int i2, Object obj) {
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
            this.E = 1;
        }
        k();
    }

    public C0400aa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.E = -1;
        this.D = objArr[0];
        this.D.setTag(null);
        b(view);
        l();
    }
}
