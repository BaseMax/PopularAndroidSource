package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.RetryItem;

/* renamed from: c.c.a.f.lb  reason: case insensitive filesystem */
/* compiled from: ItemRetryBindingImpl */
public class C0441lb extends C0438kb implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final LinearLayout G;
    public final View.OnClickListener H;
    public long I;

    public C0441lb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((RetryItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        RetryItem retryItem = this.C;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(retryItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        synchronized (this) {
            j2 = this.I;
            this.I = 0;
        }
        RetryItem retryItem = this.C;
        m mVar = this.D;
        long j3 = j2 & 5;
        String str2 = null;
        boolean z = false;
        if (j3 != 0) {
            str = retryItem != null ? retryItem.getMessage() : null;
            if (str != null) {
                z = true;
            }
            if (j3 != 0) {
                j2 |= z ? 16 : 8;
            }
        } else {
            str = null;
        }
        long j4 = 5 & j2;
        if (j4 != 0) {
            if (!z) {
                str = this.B.getResources().getString(R.string.failed_to_load_episodes);
            }
            str2 = str;
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.H);
        }
        if (j4 != 0) {
            f.a((TextView) this.B, (CharSequence) str2);
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
            this.I = 4;
        }
        k();
    }

    public C0441lb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.I = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(RetryItem retryItem) {
        this.C = retryItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(41);
        super.k();
    }
}
