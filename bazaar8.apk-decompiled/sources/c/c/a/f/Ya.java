package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.common.model.page.PageDescriptionItem;

/* compiled from: ItemPageDescriptionBindingImpl */
public class Ya extends Xa {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = null;
    public final CardView D;
    public final AppCompatTextView E;
    public long F;

    public Ya(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, B, C));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((PageDescriptionItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.F;
            this.F = 0;
        }
        PageDescriptionItem pageDescriptionItem = this.A;
        String str = null;
        long j3 = j2 & 3;
        if (!(j3 == 0 || pageDescriptionItem == null)) {
            str = pageDescriptionItem.getText();
        }
        if (j3 != 0) {
            b.a((TextView) this.E, str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.F != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.F = 2;
        }
        k();
    }

    public Ya(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.F = -1;
        this.D = objArr[0];
        this.D.setTag(null);
        this.E = objArr[1];
        this.E.setTag(null);
        b(view);
        l();
    }

    public void a(PageDescriptionItem pageDescriptionItem) {
        this.A = pageDescriptionItem;
        synchronized (this) {
            this.F |= 1;
        }
        a(45);
        super.k();
    }
}
