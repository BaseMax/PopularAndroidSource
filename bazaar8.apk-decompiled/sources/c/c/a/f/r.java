package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.r.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.user.User;

/* compiled from: FragmentMyBazaarBindingImpl */
public class r extends C0454q implements a.C0085a {
    public static final ViewDataBinding.b P = null;
    public static final SparseIntArray Q = new SparseIntArray();
    public final ConstraintLayout R;
    public final View.OnClickListener S;
    public final View.OnClickListener T;
    public final View.OnClickListener U;
    public final View.OnClickListener V;
    public long W;

    static {
        Q.put(R.id.toolbarSetting, 5);
        Q.put(R.id.toolbarHelp, 6);
        Q.put(R.id.toolbarLogo, 7);
        Q.put(R.id.divider, 8);
        Q.put(R.id.barrier2, 9);
        Q.put(R.id.divider2, 10);
        Q.put(R.id.tabLayout, 11);
        Q.put(R.id.tabLayoutDivider, 12);
        Q.put(R.id.viewPager, 13);
    }

    public r(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 14, P, Q));
    }

    public boolean a(int i2, Object obj) {
        if (51 == i2) {
            a((LiveData<User>) (LiveData) obj);
        } else if (46 != i2) {
            return false;
        } else {
            a((p) obj);
        }
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        if (i2 != 0) {
            return false;
        }
        return a((LiveData<User>) (LiveData) obj, i3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0060, code lost:
        if (r0 == false) goto L_0x0065;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r17 = this;
            r1 = r17
            monitor-enter(r17)
            long r2 = r1.W     // Catch:{ all -> 0x00b2 }
            r4 = 0
            r1.W = r4     // Catch:{ all -> 0x00b2 }
            monitor-exit(r17)     // Catch:{ all -> 0x00b2 }
            androidx.lifecycle.LiveData<com.farsitel.bazaar.common.model.user.User> r0 = r1.N
            c.c.a.n.r.p r6 = r1.O
            r6 = 5
            long r8 = r2 & r6
            r10 = 1
            r11 = 16
            r13 = 0
            r14 = 0
            int r15 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r15 == 0) goto L_0x0049
            if (r0 == 0) goto L_0x0024
            java.lang.Object r0 = r0.a()
            com.farsitel.bazaar.common.model.user.User r0 = (com.farsitel.bazaar.common.model.user.User) r0
            goto L_0x0025
        L_0x0024:
            r0 = r13
        L_0x0025:
            if (r0 == 0) goto L_0x0029
            r15 = 1
            goto L_0x002a
        L_0x0029:
            r15 = 0
        L_0x002a:
            int r16 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r16 == 0) goto L_0x003a
            if (r15 == 0) goto L_0x0034
            long r2 = r2 | r11
            r8 = 64
            goto L_0x0039
        L_0x0034:
            r8 = 8
            long r2 = r2 | r8
            r8 = 32
        L_0x0039:
            long r2 = r2 | r8
        L_0x003a:
            if (r0 == 0) goto L_0x004b
            android.view.View r8 = r17.h()
            android.content.Context r8 = r8.getContext()
            java.lang.String r13 = r0.accountName(r8)
            goto L_0x004b
        L_0x0049:
            r0 = r13
            r15 = 0
        L_0x004b:
            r8 = 80
            long r8 = r8 & r2
            int r16 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r16 == 0) goto L_0x0063
            if (r0 == 0) goto L_0x0059
            boolean r0 = r0.isLoggedIn()
            goto L_0x005a
        L_0x0059:
            r0 = 0
        L_0x005a:
            long r8 = r2 & r11
            int r11 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r11 == 0) goto L_0x0064
            if (r0 != 0) goto L_0x0064
            goto L_0x0065
        L_0x0063:
            r0 = 0
        L_0x0064:
            r10 = 0
        L_0x0065:
            long r6 = r6 & r2
            int r8 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r8 == 0) goto L_0x0072
            if (r15 == 0) goto L_0x006d
            goto L_0x006e
        L_0x006d:
            r10 = 0
        L_0x006e:
            if (r15 == 0) goto L_0x0073
            r14 = r0
            goto L_0x0073
        L_0x0072:
            r10 = 0
        L_0x0073:
            r8 = 4
            long r2 = r2 & r8
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x0096
            com.google.android.material.button.MaterialButton r0 = r1.D
            android.view.View$OnClickListener r2 = r1.U
            r0.setOnClickListener(r2)
            com.google.android.material.button.MaterialButton r0 = r1.E
            android.view.View$OnClickListener r2 = r1.S
            r0.setOnClickListener(r2)
            com.farsitel.bazaar.widget.LocalAwareTextView r0 = r1.F
            android.view.View$OnClickListener r2 = r1.V
            r0.setOnClickListener(r2)
            androidx.appcompat.widget.AppCompatImageView r0 = r1.G
            android.view.View$OnClickListener r2 = r1.T
            r0.setOnClickListener(r2)
        L_0x0096:
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x00b1
            com.google.android.material.button.MaterialButton r0 = r1.D
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r14)
            c.c.a.d.a.b.a((android.view.View) r0, r2)
            com.google.android.material.button.MaterialButton r0 = r1.E
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r10)
            c.c.a.d.a.b.a((android.view.View) r0, r2)
            com.farsitel.bazaar.widget.LocalAwareTextView r0 = r1.F
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r13)
        L_0x00b1:
            return
        L_0x00b2:
            r0 = move-exception
            monitor-exit(r17)     // Catch:{ all -> 0x00b2 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.f.r.e():void");
    }

    public boolean i() {
        synchronized (this) {
            if (this.W != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.W = 4;
        }
        k();
    }

    public r(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, objArr[9], objArr[8], objArr[10], objArr[4], objArr[3], objArr[2], objArr[1], objArr[11], objArr[12], objArr[6], objArr[7], objArr[5], objArr[13]);
        this.W = -1;
        this.D.setTag(null);
        this.E.setTag(null);
        this.R = objArr[0];
        this.R.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        b(view);
        this.S = new a(this, 3);
        this.T = new a(this, 1);
        this.U = new a(this, 4);
        this.V = new a(this, 2);
        l();
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            p pVar = this.O;
            if (pVar != null) {
                z = true;
            }
            if (z) {
                pVar.q();
            }
        } else if (i2 == 2) {
            p pVar2 = this.O;
            if (pVar2 != null) {
                z = true;
            }
            if (z) {
                pVar2.q();
            }
        } else if (i2 == 3) {
            p pVar3 = this.O;
            if (pVar3 != null) {
                z = true;
            }
            if (z) {
                pVar3.p();
            }
        } else if (i2 == 4) {
            p pVar4 = this.O;
            if (pVar4 != null) {
                z = true;
            }
            if (z) {
                pVar4.n();
            }
        }
    }

    public void a(LiveData<User> liveData) {
        a(0, (LiveData<?>) liveData);
        this.N = liveData;
        synchronized (this) {
            this.W |= 1;
        }
        a(51);
        super.k();
    }

    public void a(p pVar) {
        this.O = pVar;
        synchronized (this) {
            this.W |= 2;
        }
        a(46);
        super.k();
    }

    public final boolean a(LiveData<User> liveData, int i2) {
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.W |= 1;
        }
        return true;
    }
}
