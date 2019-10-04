package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem;

/* compiled from: ItemMyBazaarSwitchBindingImpl */
public class Wa extends Va implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final ConstraintLayout G;
    public final SwitchCompat H;
    public final View.OnClickListener I;
    public final View.OnClickListener J;
    public long K;

    public Wa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((MyBazaarSwitchItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            MyBazaarSwitchItem myBazaarSwitchItem = this.C;
            m mVar = this.D;
            if (mVar != null) {
                z = true;
            }
            if (z) {
                mVar.a(myBazaarSwitchItem);
            }
        } else if (i2 == 2) {
            MyBazaarSwitchItem myBazaarSwitchItem2 = this.C;
            m mVar2 = this.D;
            if (mVar2 != null) {
                z = true;
            }
            if (z) {
                mVar2.a(myBazaarSwitchItem2);
            }
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
        MyBazaarSwitchItem myBazaarSwitchItem = this.C;
        m mVar = this.D;
        long j3 = 5 & j2;
        int i3 = 0;
        if (j3 == 0 || myBazaarSwitchItem == null) {
            z = false;
            i2 = 0;
        } else {
            i3 = myBazaarSwitchItem.c();
            i2 = myBazaarSwitchItem.e();
            z = myBazaarSwitchItem.d();
        }
        if (j3 != 0) {
            b.a(this.A, null, null, null, Integer.valueOf(i3), null, null);
            b.l.a.a.a(this.H, z);
            this.B.setText(i2);
        }
        if ((j2 & 4) != 0) {
            this.G.setOnClickListener(this.I);
            this.H.setOnClickListener(this.J);
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

    public Wa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.K = -1;
        this.A.setTag(null);
        this.G = objArr[0];
        this.G.setTag(null);
        this.H = objArr[3];
        this.H.setTag(null);
        this.B.setTag(null);
        b(view);
        this.I = new a(this, 1);
        this.J = new a(this, 2);
        l();
    }

    public void a(MyBazaarSwitchItem myBazaarSwitchItem) {
        this.C = myBazaarSwitchItem;
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
