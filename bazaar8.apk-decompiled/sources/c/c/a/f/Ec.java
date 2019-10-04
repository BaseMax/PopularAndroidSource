package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.core.widget.AspectRatioRoundImageView;

/* compiled from: ItemVitrinSerialBindingImpl */
public class Ec extends Dc implements a.C0085a {
    public static final ViewDataBinding.b H = null;
    public static final SparseIntArray I = null;
    public final View.OnClickListener J;
    public long K;

    public Ec(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, H, I));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((MovieItem.SerialItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        MovieItem.SerialItem serialItem = this.F;
        m mVar = this.G;
        if (mVar != null) {
            mVar.a(serialItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        ShortInfo shortInfo;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        boolean z = false;
        MovieItem.SerialItem serialItem = this.F;
        m mVar = this.G;
        long j3 = 5 & j2;
        String str4 = null;
        if (j3 != 0) {
            if (serialItem != null) {
                z = serialItem.isFree();
                shortInfo = serialItem.getShortInfo();
                str3 = serialItem.getCoverUrl();
                str2 = serialItem.getName();
            } else {
                str2 = null;
                shortInfo = null;
                str3 = null;
            }
            if (shortInfo != null) {
                str4 = shortInfo.getInfo();
            }
            str = str3;
        } else {
            str2 = null;
            str = null;
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.J);
        }
        if (j3 != 0) {
            AspectRatioRoundImageView aspectRatioRoundImageView = this.B;
            b.a(aspectRatioRoundImageView, str, ViewDataBinding.b((View) aspectRatioRoundImageView, (int) R.drawable.bg_sample_video), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.cover_image_rounded_corner)));
            b.a((View) this.C, Boolean.valueOf(z));
            f.a((TextView) this.D, (CharSequence) str4);
            f.a((TextView) this.E, (CharSequence) str2);
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
            this.K = 4;
        }
        k();
    }

    public Ec(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[0], objArr[1], objArr[2], objArr[4], objArr[3]);
        this.K = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        b(view);
        this.J = new a(this, 1);
        l();
    }

    public void a(MovieItem.SerialItem serialItem) {
        this.F = serialItem;
        synchronized (this) {
            this.K |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.G = mVar;
        synchronized (this) {
            this.K |= 2;
        }
        a(41);
        super.k();
    }
}
