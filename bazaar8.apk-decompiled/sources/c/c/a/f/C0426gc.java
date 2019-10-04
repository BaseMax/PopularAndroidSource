package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaDescriptionItem;

/* renamed from: c.c.a.f.gc  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoDescriptionBindingImpl */
public class C0426gc extends C0422fc {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = new SparseIntArray();
    public final FrameLayout G;
    public long H;

    static {
        F.put(R.id.expandTextView, 2);
    }

    public C0426gc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((CinemaDescriptionItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        CinemaDescriptionItem cinemaDescriptionItem = this.C;
        String str = null;
        long j3 = j2 & 5;
        if (!(j3 == 0 || cinemaDescriptionItem == null)) {
            str = cinemaDescriptionItem.getDescription();
        }
        if (j3 != 0) {
            f.a((TextView) this.B, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.H != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.H = 4;
        }
        k();
    }

    public C0426gc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.H = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        this.B.setTag(null);
        b(view);
        l();
    }

    public void a(CinemaDescriptionItem cinemaDescriptionItem) {
        this.C = cinemaDescriptionItem;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
    }
}
