package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarItem;
import com.farsitel.bazaar.widget.RTLImageView;

/* compiled from: ItemMyBazaarBindingImpl */
public class Sa extends Ra implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final ConstraintLayout G;
    public final AppCompatTextView H;
    public final RTLImageView I;
    public final View.OnClickListener J;
    public long K;

    public Sa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((MyBazaarItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        MyBazaarItem myBazaarItem = this.C;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(myBazaarItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        int i2;
        boolean z;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        MyBazaarItem myBazaarItem = this.C;
        String str = null;
        m mVar = this.D;
        long j3 = 5 & j2;
        int i3 = 0;
        if (j3 == 0 || myBazaarItem == null) {
            z = false;
            i2 = 0;
        } else {
            str = myBazaarItem.c();
            i3 = myBazaarItem.e();
            i2 = myBazaarItem.g();
            z = myBazaarItem.d();
        }
        if (j3 != 0) {
            b.a(this.A, null, null, null, Integer.valueOf(i3), null, null);
            f.a((TextView) this.H, (CharSequence) str);
            b.a((View) this.H, str);
            b.a((View) this.I, Boolean.valueOf(z));
            this.B.setText(i2);
        }
        if ((j2 & 4) != 0) {
            this.G.setOnClickListener(this.J);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.K != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.K = 4;
        }
        k();
    }

    public Sa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.K = -1;
        this.A.setTag(null);
        this.G = objArr[0];
        this.G.setTag(null);
        this.H = objArr[3];
        this.H.setTag(null);
        this.I = objArr[4];
        this.I.setTag(null);
        this.B.setTag(null);
        b(view);
        this.J = new a(this, 1);
        l();
    }

    public void a(MyBazaarItem myBazaarItem) {
        this.C = myBazaarItem;
        synchronized (this) {
            this.K |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.K |= 2;
        }
        a(41);
        super.k();
    }
}
