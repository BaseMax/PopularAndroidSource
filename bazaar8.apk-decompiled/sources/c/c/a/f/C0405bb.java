package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import b.l.a.g;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.ui.profile.ProfileItem;

/* renamed from: c.c.a.f.bb  reason: case insensitive filesystem */
/* compiled from: ItemProfileBindingImpl */
public class C0405bb extends C0401ab implements a.C0085a {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = null;
    public final ConstraintLayout H;
    public final View.OnClickListener I;
    public long J;

    public C0405bb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, F, G));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ProfileItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ProfileItem profileItem = this.D;
        m mVar = this.E;
        if (mVar != null) {
            mVar.a(profileItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        boolean z;
        synchronized (this) {
            j2 = this.J;
            this.J = 0;
        }
        ProfileItem profileItem = this.D;
        m mVar = this.E;
        long j3 = j2 & 5;
        String str2 = null;
        boolean z2 = false;
        if (j3 == 0 || profileItem == null) {
            str = null;
            z = false;
        } else {
            z2 = profileItem.e();
            str2 = profileItem.c();
            str = profileItem.d();
            z = profileItem.b();
        }
        if (j3 != 0) {
            this.A.setEnabled(z2);
            b.a((View) this.A, Boolean.valueOf(z));
            g.a(this.H, this.I, z2);
            f.a((TextView) this.B, (CharSequence) str2);
            this.C.setEnabled(z2);
            f.a((TextView) this.C, (CharSequence) str);
            b.a((View) this.C, str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.J != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.J = 4;
        }
        k();
    }

    public C0405bb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[1], objArr[2]);
        this.J = -1;
        this.A.setTag(null);
        this.H = objArr[0];
        this.H.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        b(view);
        this.I = new a(this, 1);
        l();
    }

    public void a(ProfileItem profileItem) {
        this.D = profileItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.E = mVar;
        synchronized (this) {
            this.J |= 2;
        }
        a(41);
        super.k();
    }
}
