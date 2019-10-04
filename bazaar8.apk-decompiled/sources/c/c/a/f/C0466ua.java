package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.ua  reason: case insensitive filesystem */
/* compiled from: ItemListCategoryHeaderBindingImpl */
public class C0466ua extends C0463ta implements a.C0085a {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = null;
    public final LinearLayout E;
    public final AppCompatTextView F;
    public final AppCompatTextView G;
    public final View.OnClickListener H;
    public long I;

    public C0466ua(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, C, D));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ListItem.CategoryHeaderItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ListItem.CategoryHeaderItem categoryHeaderItem = this.A;
        m mVar = this.B;
        if (mVar != null) {
            mVar.a(categoryHeaderItem);
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
        ListItem.CategoryHeaderItem categoryHeaderItem = this.A;
        m mVar = this.B;
        long j3 = 5 & j2;
        String str2 = null;
        if (j3 == 0 || categoryHeaderItem == null) {
            str = null;
        } else {
            str2 = categoryHeaderItem.getTitle();
            str = categoryHeaderItem.getSlug();
        }
        if ((j2 & 4) != 0) {
            this.E.setOnClickListener(this.H);
        }
        if (j3 != 0) {
            f.a((TextView) this.F, (CharSequence) str2);
            b.a((View) this.G, str);
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

    public C0466ua(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.I = -1;
        this.E = objArr[0];
        this.E.setTag(null);
        this.F = objArr[1];
        this.F.setTag(null);
        this.G = objArr[2];
        this.G.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(ListItem.CategoryHeaderItem categoryHeaderItem) {
        this.A = categoryHeaderItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.B = mVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(41);
        super.k();
    }
}
