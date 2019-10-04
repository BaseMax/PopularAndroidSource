package c.c.a.f;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.c;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.w.o;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.ui.search.SearchHistoryType;
import com.farsitel.bazaar.widget.RTLImageView;

/* renamed from: c.c.a.f.xb  reason: case insensitive filesystem */
/* compiled from: ItemSearchHistoryBindingImpl */
public class C0476xb extends C0473wb implements a.C0085a {
    public static final ViewDataBinding.b J = null;
    public static final SparseIntArray K = new SparseIntArray();
    public final ConstraintLayout L;
    public final View.OnClickListener M;
    public final View.OnClickListener N;
    public long O;

    static {
        K.put(R.id.view, 4);
    }

    public C0476xb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, J, K));
    }

    public boolean a(int i2, Object obj) {
        if (36 == i2) {
            b((Integer) obj);
        } else if (45 == i2) {
            a((SearchHistoryItem) obj);
        } else if (52 == i2) {
            a((o) obj);
        } else if (41 == i2) {
            a((c.c.a.n.w.a) obj);
        } else if (3 != i2) {
            return false;
        } else {
            b((Boolean) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.G = num;
        synchronized (this) {
            this.O |= 1;
        }
        a(36);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        Drawable drawable;
        SearchHistoryType searchHistoryType;
        int i2;
        RTLImageView rTLImageView;
        synchronized (this) {
            j2 = this.O;
            this.O = 0;
        }
        Integer num = this.G;
        SearchHistoryItem searchHistoryItem = this.H;
        o oVar = this.F;
        c.c.a.n.w.a aVar = this.E;
        Boolean bool = this.I;
        long j3 = j2 & 34;
        String str = null;
        if (j3 != 0) {
            if (searchHistoryItem != null) {
                str = searchHistoryItem.a();
                searchHistoryType = searchHistoryItem.b();
            } else {
                searchHistoryType = null;
            }
            boolean z = searchHistoryType == SearchHistoryType.HISTORY;
            if (j3 != 0) {
                j2 |= z ? 128 : 64;
            }
            if (z) {
                rTLImageView = this.C;
                i2 = R.drawable.ic_round_history_24px;
            } else {
                rTLImageView = this.C;
                i2 = R.drawable.ic_round_search_24px;
            }
            drawable = ViewDataBinding.b((View) rTLImageView, i2);
        } else {
            drawable = null;
        }
        long j4 = 48 & j2;
        if ((32 & j2) != 0) {
            this.L.setOnClickListener(this.M);
            this.B.setOnClickListener(this.N);
        }
        if ((j2 & 34) != 0) {
            b.a((TextView) this.A, str);
            c.a(this.C, drawable);
        }
        if (j4 != 0) {
            b.a((View) this.B, bool);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.O != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.O = 32;
        }
        k();
    }

    public C0476xb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[3], objArr[1], objArr[4]);
        this.O = -1;
        this.L = objArr[0];
        this.L.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        b(view);
        this.M = new a(this, 1);
        this.N = new a(this, 2);
        l();
    }

    public void a(SearchHistoryItem searchHistoryItem) {
        this.H = searchHistoryItem;
        synchronized (this) {
            this.O |= 2;
        }
        a(45);
        super.k();
    }

    public void b(Boolean bool) {
        this.I = bool;
        synchronized (this) {
            this.O |= 16;
        }
        a(3);
        super.k();
    }

    public void a(o oVar) {
        this.F = oVar;
        synchronized (this) {
            this.O |= 4;
        }
        a(52);
        super.k();
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            SearchHistoryItem searchHistoryItem = this.H;
            Integer num = this.G;
            c.c.a.n.w.a aVar = this.E;
            if (aVar != null) {
                z = true;
            }
            if (z) {
                aVar.a(searchHistoryItem, num.intValue());
            }
        } else if (i2 == 2) {
            SearchHistoryItem searchHistoryItem2 = this.H;
            o oVar = this.F;
            if (oVar != null) {
                z = true;
            }
            if (z) {
                oVar.a(searchHistoryItem2);
            }
        }
    }

    public void a(c.c.a.n.w.a aVar) {
        this.E = aVar;
        synchronized (this) {
            this.O |= 8;
        }
        a(41);
        super.k();
    }
}
