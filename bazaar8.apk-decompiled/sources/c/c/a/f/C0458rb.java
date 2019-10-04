package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.b.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;

/* renamed from: c.c.a.f.rb  reason: case insensitive filesystem */
/* compiled from: ItemScreenshotImageBindingImpl */
public class C0458rb extends C0456qb implements a.C0085a {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = null;
    public final FrameLayout H;
    public final View.OnClickListener I;
    public long J;

    public C0458rb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, F, G));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AppScreenshotItem) obj);
        } else if (29 == i2) {
            b((Integer) obj);
        } else if (43 != i2) {
            return false;
        } else {
            a((c.a) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.C = num;
        synchronized (this) {
            this.J |= 2;
        }
        a(29);
        super.k();
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
        AppScreenshotItem appScreenshotItem = this.D;
        Integer num = this.C;
        String str = null;
        c.a aVar = this.E;
        long j3 = 9 & j2;
        if (!(j3 == 0 || appScreenshotItem == null)) {
            str = appScreenshotItem.getThumbnailUrl();
        }
        String str2 = str;
        if (j3 != 0) {
            b.a(this.A, str2, null, null, null, null, null);
        }
        if ((j2 & 8) != 0) {
            this.B.setOnClickListener(this.I);
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
            this.J = 8;
        }
        k();
    }

    public C0458rb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.J = -1;
        this.A.setTag(null);
        this.H = objArr[0];
        this.H.setTag(null);
        this.B.setTag(null);
        b(view);
        this.I = new a(this, 1);
        l();
    }

    public void a(AppScreenshotItem appScreenshotItem) {
        this.D = appScreenshotItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public final void b(int i2, View view) {
        Integer num = this.C;
        c.a aVar = this.E;
        if (aVar != null) {
            aVar.a(num.intValue());
        }
    }

    public void a(c.a aVar) {
        this.E = aVar;
        synchronized (this) {
            this.J |= 4;
        }
        a(43);
        super.k();
    }
}
