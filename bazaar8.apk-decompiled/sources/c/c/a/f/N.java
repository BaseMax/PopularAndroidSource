package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.appdetail.EditorChoiceItem;

/* compiled from: ItemAppdetailEditorChoiseBindingImpl */
public class N extends M implements a.C0085a {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = null;
    public final LinearLayout E;
    public final AppCompatTextView F;
    public final View.OnClickListener G;
    public long H;

    public N(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, C, D));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((EditorChoiceItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        EditorChoiceItem editorChoiceItem = this.A;
        m mVar = this.B;
        if (mVar != null) {
            mVar.a(editorChoiceItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        EditorChoiceItem editorChoiceItem = this.A;
        String str = null;
        m mVar = this.B;
        long j3 = 5 & j2;
        if (!(j3 == 0 || editorChoiceItem == null)) {
            str = editorChoiceItem.getTitle();
        }
        if ((j2 & 4) != 0) {
            this.E.setOnClickListener(this.G);
        }
        if (j3 != 0) {
            f.a((TextView) this.F, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.H != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.H = 4;
        }
        k();
    }

    public N(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.H = -1;
        this.E = objArr[0];
        this.E.setTag(null);
        this.F = objArr[1];
        this.F.setTag(null);
        b(view);
        this.G = new a(this, 1);
        l();
    }

    public void a(EditorChoiceItem editorChoiceItem) {
        this.A = editorChoiceItem;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.B = mVar;
        synchronized (this) {
            this.H |= 2;
        }
        a(41);
        super.k();
    }
}
