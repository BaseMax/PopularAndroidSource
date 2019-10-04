package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.ma  reason: case insensitive filesystem */
/* compiled from: ItemEditorChoiceHeaderBindingImpl */
public class C0443ma extends C0440la {
    public static final ViewDataBinding.b G = null;
    public static final SparseIntArray H = new SparseIntArray();
    public final ConstraintLayout I;
    public long J;

    static {
        H.put(R.id.ivIcon, 2);
        H.put(R.id.ivForegroundCover, 3);
        H.put(R.id.iconSpace, 4);
        H.put(R.id.ivAppDetailAppIcon, 5);
    }

    public C0443ma(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, G, H));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((ListItem.EditorChoiceHeader) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.J;
            this.J = 0;
        }
        ListItem.EditorChoiceHeader editorChoiceHeader = this.F;
        String str = null;
        long j3 = j2 & 3;
        if (!(j3 == 0 || editorChoiceHeader == null)) {
            str = editorChoiceHeader.getTitle();
        }
        if (j3 != 0) {
            f.a((TextView) this.C, (CharSequence) str);
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
            this.J = 2;
        }
        k();
    }

    public C0443ma(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[4], objArr[5], objArr[1], objArr[3], objArr[2]);
        this.J = -1;
        this.C.setTag(null);
        this.I = objArr[0];
        this.I.setTag(null);
        b(view);
        l();
    }

    public void a(ListItem.EditorChoiceHeader editorChoiceHeader) {
        this.F = editorChoiceHeader;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }
}
