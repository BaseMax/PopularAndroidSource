package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import com.farsitel.bazaar.ui.profile.ProfileHeaderItem;

/* renamed from: c.c.a.f.fb  reason: case insensitive filesystem */
/* compiled from: ItemProfileHeaderBindingImpl */
public class C0421fb extends C0417eb {
    public static final ViewDataBinding.b B = null;
    public static final SparseIntArray C = null;
    public final FrameLayout D;
    public final AppCompatTextView E;
    public long F;

    public C0421fb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, B, C));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((ProfileHeaderItem) obj);
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
        ProfileHeaderItem profileHeaderItem = this.A;
        String str = null;
        long j3 = j2 & 3;
        if (!(j3 == 0 || profileHeaderItem == null)) {
            str = profileHeaderItem.a();
        }
        if (j3 != 0) {
            f.a((TextView) this.E, (CharSequence) str);
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

    public C0421fb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.F = -1;
        this.D = objArr[0];
        this.D.setTag(null);
        this.E = objArr[1];
        this.E.setTag(null);
        b(view);
        l();
    }

    public void a(ProfileHeaderItem profileHeaderItem) {
        this.A = profileHeaderItem;
        synchronized (this) {
            this.F |= 1;
        }
        a(45);
        super.k();
    }
}
