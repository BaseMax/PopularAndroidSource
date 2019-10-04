package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;

/* compiled from: ItemArticleBindingImpl */
public class Y extends X implements a.C0085a {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = null;
    public final LinearLayout H;
    public final View.OnClickListener I;
    public long J;

    public Y(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, F, G));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ArticleItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ArticleItem articleItem = this.E;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(articleItem);
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
        ArticleItem articleItem = this.E;
        m mVar = this.D;
        long j3 = 5 & j2;
        String str3 = null;
        if (j3 == 0 || articleItem == null) {
            str2 = null;
            str = null;
        } else {
            str3 = articleItem.getTitle();
            str2 = articleItem.getSummery();
            str = articleItem.getIconUrl();
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str3);
            b.a((View) this.A, str2);
            b.a(this.B, str, null, null, null, null, null);
            f.a((TextView) this.C, (CharSequence) str3);
        }
        if ((j2 & 4) != 0) {
            this.H.setOnClickListener(this.I);
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

    public Y(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[1], objArr[2]);
        this.J = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.H = objArr[0];
        this.H.setTag(null);
        b(view);
        this.I = new a(this, 1);
        l();
    }

    public void a(ArticleItem articleItem) {
        this.E = articleItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.J |= 2;
        }
        a(41);
        super.k();
    }
}
