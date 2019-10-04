package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;

/* renamed from: c.c.a.f.ac  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailSeriesSingleSeasonItemBindingImpl */
public class C0402ac extends _b {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = null;
    public long D;

    public C0402ac(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 1, B, C));
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

    public C0402ac(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[0]);
        this.D = -1;
        this.A.setTag(null);
        b(view);
        l();
    }
}
