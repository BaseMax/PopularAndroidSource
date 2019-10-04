package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;

/* compiled from: ItemVideoDetailVideoScreenshotCoverItemBindingImpl */
public class kc extends jc {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = new SparseIntArray();
    public long K;

    static {
        J.put(R.id.screenShotItemConstraintLayout, 4);
    }

    public kc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, I, J));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((CinemaScreenshotItem) obj);
        } else if (24 == i2) {
            a((String) obj);
        } else if (26 != i2) {
            return false;
        } else {
            b((Boolean) obj);
        }
        return true;
    }

    public void b(Boolean bool) {
        this.H = bool;
        synchronized (this) {
            this.K |= 4;
        }
        a(26);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        CinemaScreenshotItem cinemaScreenshotItem = this.F;
        String str = this.G;
        Boolean bool = this.H;
        String str2 = null;
        long j3 = 9 & j2;
        if (!(j3 == 0 || cinemaScreenshotItem == null)) {
            str2 = cinemaScreenshotItem.getThumbnailUrl();
        }
        String str3 = str2;
        long j4 = j2 & 10;
        if ((j2 & 12) != 0) {
            b.a(this.A, bool);
            b.a((View) this.E, bool);
        }
        if (j3 != 0) {
            b.a(this.D, str3, null, null, null, null, null);
        }
        if (j4 != 0) {
            f.a((TextView) this.E, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.K != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.K = 8;
        }
        k();
    }

    public kc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[0], objArr[4], objArr[1], objArr[3]);
        this.K = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        b(view);
        l();
    }

    public void a(CinemaScreenshotItem cinemaScreenshotItem) {
        this.F = cinemaScreenshotItem;
        synchronized (this) {
            this.K |= 1;
        }
        a(45);
        super.k();
    }

    public void a(String str) {
        this.G = str;
        synchronized (this) {
            this.K |= 2;
        }
        a(24);
        super.k();
    }
}
