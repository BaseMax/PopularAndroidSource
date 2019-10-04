package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;

/* renamed from: c.c.a.f.ga  reason: case insensitive filesystem */
/* compiled from: ItemCinemaEpisodeSeeMoreBindingImpl */
public class C0424ga extends C0420fa implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final LinearLayout F;
    public final View.OnClickListener G;
    public long H;

    public C0424ga(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((SeriesEpisodeSeeMoreItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem = this.B;
        m mVar = this.C;
        if (mVar != null) {
            mVar.a(seriesEpisodeSeeMoreItem);
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
        SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem = this.B;
        String str = null;
        m mVar = this.C;
        long j3 = 5 & j2;
        if (!(j3 == 0 || seriesEpisodeSeeMoreItem == null)) {
            str = seriesEpisodeSeeMoreItem.getText();
        }
        if ((j2 & 4) != 0) {
            this.F.setOnClickListener(this.G);
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str);
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

    public C0424ga(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.H = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.A.setTag(null);
        b(view);
        this.G = new a(this, 1);
        l();
    }

    public void a(SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem) {
        this.B = seriesEpisodeSeeMoreItem;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.C = mVar;
        synchronized (this) {
            this.H |= 2;
        }
        a(41);
        super.k();
    }
}
