package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityItem;

/* compiled from: ItemVideoDownloadNormalBindingImpl */
public class sc extends rc implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final ConstraintLayout G;
    public final View H;
    public final View I;
    public final View.OnClickListener J;
    public long K;

    public sc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((VideoDownloadQualityItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        VideoDownloadQualityItem videoDownloadQualityItem = this.C;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(videoDownloadQualityItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        boolean z;
        String str2;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        VideoDownloadQualityItem videoDownloadQualityItem = this.C;
        m mVar = this.D;
        long j3 = 5 & j2;
        String str3 = null;
        boolean z2 = false;
        if (j3 != 0) {
            if (videoDownloadQualityItem != null) {
                str3 = videoDownloadQualityItem.d();
                str2 = videoDownloadQualityItem.c();
                z = videoDownloadQualityItem.a();
            } else {
                str2 = null;
                z = false;
            }
            if (!z) {
                z2 = true;
            }
            String str4 = str2;
            str = str3;
            str3 = str4;
        } else {
            str = null;
            z = false;
        }
        if ((j2 & 4) != 0) {
            this.H.setOnClickListener(this.J);
        }
        if (j3 != 0) {
            b.a(this.H, Boolean.valueOf(z));
            b.a(this.I, Boolean.valueOf(z2));
            f.a((TextView) this.A, (CharSequence) str3);
            f.a((TextView) this.B, (CharSequence) str);
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

    public sc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[4]);
        this.K = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        this.H = objArr[1];
        this.H.setTag(null);
        this.I = objArr[2];
        this.I.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        b(view);
        this.J = new a(this, 1);
        l();
    }

    public void a(VideoDownloadQualityItem videoDownloadQualityItem) {
        this.C = videoDownloadQualityItem;
        synchronized (this) {
            this.K |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.K |= 2;
        }
        a(41);
        super.k();
    }
}
