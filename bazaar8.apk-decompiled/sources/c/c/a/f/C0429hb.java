package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteDescriptionItem;

/* renamed from: c.c.a.f.hb  reason: case insensitive filesystem */
/* compiled from: ItemReleaseNoteDescBindingImpl */
public class C0429hb extends C0425gb {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = new SparseIntArray();
    public final RelativeLayout F;
    public long G;

    static {
        E.put(R.id.changelogIcon, 2);
    }

    public C0429hb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((ReleaseNoteDescriptionItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.G;
            this.G = 0;
        }
        ReleaseNoteDescriptionItem releaseNoteDescriptionItem = this.C;
        String str = null;
        long j3 = j2 & 3;
        if (!(j3 == 0 || releaseNoteDescriptionItem == null)) {
            str = releaseNoteDescriptionItem.a();
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str);
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

    public C0429hb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.G = -1;
        this.A.setTag(null);
        this.F = objArr[0];
        this.F.setTag(null);
        b(view);
        l();
    }

    public void a(ReleaseNoteDescriptionItem releaseNoteDescriptionItem) {
        this.C = releaseNoteDescriptionItem;
        synchronized (this) {
            this.G |= 1;
        }
        a(45);
        super.k();
    }
}
