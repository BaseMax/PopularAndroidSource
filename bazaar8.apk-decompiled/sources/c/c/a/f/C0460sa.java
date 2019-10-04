package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.sa  reason: case insensitive filesystem */
/* compiled from: ItemListCategoryBindingImpl */
public class C0460sa extends C0457ra implements a.C0085a {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = null;
    public final LinearLayout E;
    public final AppCompatImageView F;
    public final AppCompatTextView G;
    public final AppCompatTextView H;
    public final View.OnClickListener I;
    public long J;

    public C0460sa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, C, D));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ListItem.CategoryItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ListItem.CategoryItem categoryItem = this.B;
        m mVar = this.A;
        if (mVar != null) {
            mVar.a(categoryItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.J;
            this.J = 0;
        }
        ListItem.CategoryItem categoryItem = this.B;
        m mVar = this.A;
        long j3 = 5 & j2;
        String str3 = null;
        if (j3 == 0 || categoryItem == null) {
            str2 = null;
            str = null;
        } else {
            String icon = categoryItem.getIcon();
            String title = categoryItem.getTitle();
            str2 = categoryItem.getInfo();
            str = icon;
            str3 = title;
        }
        if ((j2 & 4) != 0) {
            this.E.setOnClickListener(this.I);
        }
        if (j3 != 0) {
            b.a(this.F, str, null, null, null, null, null);
            f.a((TextView) this.G, (CharSequence) str3);
            f.a((TextView) this.H, (CharSequence) str2);
            b.a((View) this.H, str2);
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

    public C0460sa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.J = -1;
        this.E = objArr[0];
        this.E.setTag(null);
        this.F = objArr[1];
        this.F.setTag(null);
        this.G = objArr[2];
        this.G.setTag(null);
        this.H = objArr[3];
        this.H.setTag(null);
        b(view);
        this.I = new a(this, 1);
        l();
    }

    public void a(ListItem.CategoryItem categoryItem) {
        this.B = categoryItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.A = mVar;
        synchronized (this) {
            this.J |= 2;
        }
        a(41);
        super.k();
    }
}
