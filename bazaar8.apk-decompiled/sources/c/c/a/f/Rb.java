package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import com.farsitel.bazaar.common.model.cinema.TextTitleItem;

/* compiled from: ItemVideoDetailOtherInfoItemBindingImpl */
public class Rb extends Qb {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final LinearLayout F;
    public long G;

    public Rb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((TextTitleItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        synchronized (this) {
            j2 = this.G;
            this.G = 0;
        }
        TextTitleItem textTitleItem = this.C;
        long j3 = j2 & 3;
        String str2 = null;
        if (j3 == 0 || textTitleItem == null) {
            str = null;
        } else {
            str2 = textTitleItem.getText();
            str = textTitleItem.getTitle();
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str2);
            f.a((TextView) this.B, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.G != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.G = 2;
        }
        k();
    }

    public Rb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.G = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        b(view);
        l();
    }

    public void a(TextTitleItem textTitleItem) {
        this.C = textTitleItem;
        synchronized (this) {
            this.G |= 1;
        }
        a(45);
        super.k();
    }
}
