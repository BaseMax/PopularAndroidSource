package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.b.d.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;

/* renamed from: c.c.a.f.tb  reason: case insensitive filesystem */
/* compiled from: ItemScreenshotVideoBindingImpl */
public class C0464tb extends C0461sb implements a.C0085a {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = new SparseIntArray();
    public final FrameLayout H;
    public final View.OnClickListener I;
    public long J;

    static {
        G.put(R.id.darkShade, 3);
    }

    public C0464tb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, F, G));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AppScreenshotItem) obj);
        } else if (13 != i2) {
            return false;
        } else {
            a((e.a) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        AppScreenshotItem appScreenshotItem = this.D;
        e.a aVar = this.E;
        if (aVar != null) {
            aVar.a(appScreenshotItem);
        }
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
        String str = null;
        e.a aVar = this.E;
        long j3 = 5 & j2;
        if (!(j3 == 0 || appScreenshotItem == null)) {
            str = appScreenshotItem.getThumbnailUrl();
        }
        String str2 = str;
        if ((j2 & 4) != 0) {
            this.B.setOnClickListener(this.I);
        }
        if (j3 != 0) {
            b.a(this.C, str2, null, null, null, null, null);
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

    public C0464tb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[2], objArr[1]);
        this.J = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.H = objArr[0];
        this.H.setTag(null);
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

    public void a(e.a aVar) {
        this.E = aVar;
        synchronized (this) {
            this.J |= 2;
        }
        a(13);
        super.k();
    }
}
