package c.c.a.f;

import android.content.res.Resources;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem;

/* compiled from: ItemUpgradableHeaderBindingImpl */
public class Fb extends Eb implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final LinearLayout F;
    public final AppCompatTextView G;
    public final View.OnClickListener H;
    public long I;

    public Fb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((UpgradableAppsHeaderItem) obj);
        } else if (28 != i2) {
            return false;
        } else {
            a((c.c.a.n.A.a) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        UpgradableAppsHeaderItem upgradableAppsHeaderItem = this.B;
        c.c.a.n.A.a aVar = this.C;
        boolean z = true;
        if (aVar != null) {
            if (upgradableAppsHeaderItem == null) {
                z = false;
            }
            if (z) {
                aVar.a(upgradableAppsHeaderItem.a());
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        int i2;
        boolean z;
        int i3;
        Resources resources;
        synchronized (this) {
            j2 = this.I;
            this.I = 0;
        }
        UpgradableAppsHeaderItem upgradableAppsHeaderItem = this.B;
        c.c.a.n.A.a aVar = this.C;
        long j3 = j2 & 5;
        String str2 = null;
        if (j3 != 0) {
            if (upgradableAppsHeaderItem != null) {
                i2 = upgradableAppsHeaderItem.b();
                z = upgradableAppsHeaderItem.a();
            } else {
                z = false;
                i2 = 0;
            }
            if (j3 != 0) {
                j2 |= z ? 16 : 8;
            }
            str2 = this.G.getResources().getString(R.string.upgradable_apps_placeholder, new Object[]{Integer.valueOf(i2)});
            if (z) {
                resources = this.A.getResources();
                i3 = R.string.update_all;
            } else {
                resources = this.A.getResources();
                i3 = R.string.pause_all;
            }
            str = resources.getString(i3);
        } else {
            str = null;
        }
        if ((5 & j2) != 0) {
            f.a((TextView) this.G, (CharSequence) str2);
            f.a((TextView) this.A, (CharSequence) str);
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.H);
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

    public Fb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2]);
        this.I = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.G = objArr[1];
        this.G.setTag(null);
        this.A.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(UpgradableAppsHeaderItem upgradableAppsHeaderItem) {
        this.B = upgradableAppsHeaderItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(c.c.a.n.A.a aVar) {
        this.C = aVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(28);
        super.k();
    }
}
