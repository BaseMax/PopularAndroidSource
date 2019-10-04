package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;

/* compiled from: ItemListInlineAppBindingImpl */
public class Ca extends Ba implements a.C0085a {
    public static final ViewDataBinding.b L = null;
    public static final SparseIntArray M = new SparseIntArray();
    public final View.OnClickListener N;
    public final View.OnClickListener O;
    public final View.OnClickListener P;
    public long Q;

    static {
        M.put(R.id.hamiCard, 7);
        M.put(R.id.progressBar, 8);
    }

    public Ca(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 9, L, M));
    }

    public boolean a(int i2, Object obj) {
        if (17 == i2) {
            a((c.c.a.n.c.c.a.a) obj);
        } else if (33 != i2) {
            return false;
        } else {
            a((HamiItem) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            c.c.a.n.c.c.a.a aVar = this.K;
            HamiItem hamiItem = this.J;
            if (aVar != null) {
                z = true;
            }
            if (z) {
                aVar.b(hamiItem);
            }
        } else if (i2 == 2) {
            c.c.a.n.c.c.a.a aVar2 = this.K;
            HamiItem hamiItem2 = this.J;
            if (aVar2 != null) {
                z = true;
            }
            if (z) {
                aVar2.a(hamiItem2);
            }
        } else if (i2 == 3) {
            c.c.a.n.c.c.a.a aVar3 = this.K;
            HamiItem hamiItem3 = this.J;
            if (aVar3 != null) {
                z = true;
            }
            if (z) {
                aVar3.a(hamiItem3);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        String str4;
        PageAppItem pageAppItem;
        synchronized (this) {
            j2 = this.Q;
            this.Q = 0;
        }
        c.c.a.n.c.c.a.a aVar = this.K;
        HamiItem hamiItem = this.J;
        long j3 = 6 & j2;
        String str5 = null;
        if (j3 != 0) {
            if (hamiItem != null) {
                str2 = hamiItem.getInlineXML();
                pageAppItem = hamiItem.getApp();
                str4 = hamiItem.getMediumIconUrl();
                str3 = hamiItem.getShortDescription();
            } else {
                str3 = null;
                str2 = null;
                pageAppItem = null;
                str4 = null;
            }
            if (pageAppItem != null) {
                str5 = pageAppItem.getAppName();
            }
            str = str4;
        } else {
            str3 = null;
            str2 = null;
            str = null;
        }
        if (j3 != 0) {
            b.a(this.A, str, null, null, null, null, null);
            f.a((TextView) this.B, (CharSequence) str5);
            b.a((View) this.F, str2);
            f.a((TextView) this.I, (CharSequence) str3);
            b.a((View) this.I, str3);
        }
        if ((j2 & 4) != 0) {
            this.C.setOnClickListener(this.P);
            this.D.setOnClickListener(this.O);
            this.G.setOnClickListener(this.N);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.Q != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Q = 4;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Ca(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[3], objArr[0], objArr[6], objArr[7], objArr[1], objArr[5], objArr[8], objArr[4]);
        this.Q = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.I.setTag(null);
        b(view);
        this.N = new a(this, 2);
        this.O = new a(this, 3);
        this.P = new a(this, 1);
        l();
    }

    public void a(c.c.a.n.c.c.a.a aVar) {
        this.K = aVar;
        synchronized (this) {
            this.Q |= 1;
        }
        a(17);
        super.k();
    }

    public void a(HamiItem hamiItem) {
        this.J = hamiItem;
        synchronized (this) {
            this.Q |= 2;
        }
        a(33);
        super.k();
    }
}
