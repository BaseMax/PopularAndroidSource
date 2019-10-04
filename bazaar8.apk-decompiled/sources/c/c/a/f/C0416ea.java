package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import com.farsitel.bazaar.common.model.cinema.EpisodeItemClickListener;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeItem;

/* renamed from: c.c.a.f.ea  reason: case insensitive filesystem */
/* compiled from: ItemCinemaEpisodeBindingImpl */
public class C0416ea extends C0412da implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final LinearLayout G;
    public final View.OnClickListener H;
    public final View.OnClickListener I;
    public long J;

    public C0416ea(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((SeriesEpisodeItem) obj);
        } else if (14 != i2) {
            return false;
        } else {
            a((EpisodeItemClickListener) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            SeriesEpisodeItem seriesEpisodeItem = this.C;
            EpisodeItemClickListener episodeItemClickListener = this.D;
            if (episodeItemClickListener != null) {
                z = true;
            }
            if (z) {
                episodeItemClickListener.onEpisodeItemClicked(seriesEpisodeItem);
            }
        } else if (i2 == 2) {
            SeriesEpisodeItem seriesEpisodeItem2 = this.C;
            EpisodeItemClickListener episodeItemClickListener2 = this.D;
            if (episodeItemClickListener2 != null) {
                z = true;
            }
            if (z) {
                episodeItemClickListener2.onPlayOrBuyClicked(seriesEpisodeItem2);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        synchronized (this) {
            j2 = this.J;
            this.J = 0;
        }
        boolean z = false;
        SeriesEpisodeItem seriesEpisodeItem = this.C;
        EpisodeItemClickListener episodeItemClickListener = this.D;
        long j3 = 5 & j2;
        String str2 = null;
        if (j3 == 0 || seriesEpisodeItem == null) {
            str = null;
        } else {
            z = seriesEpisodeItem.getShowLoadingButton();
            str2 = seriesEpisodeItem.getPrimaryButtonText(h().getContext());
            str = seriesEpisodeItem.getTitle();
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.H);
            this.G.setOnClickListener(this.I);
        }
        if (j3 != 0) {
            this.A.setText(str2);
            this.A.setShowLoading(z);
            f.a((TextView) this.B, (CharSequence) str);
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

    public C0416ea(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1]);
        this.J = -1;
        this.A.setTag(null);
        this.G = objArr[0];
        this.G.setTag(null);
        this.B.setTag(null);
        b(view);
        this.H = new a(this, 2);
        this.I = new a(this, 1);
        l();
    }

    public void a(SeriesEpisodeItem seriesEpisodeItem) {
        this.C = seriesEpisodeItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public void a(EpisodeItemClickListener episodeItemClickListener) {
        this.D = episodeItemClickListener;
        synchronized (this) {
            this.J |= 2;
        }
        a(14);
        super.k();
    }
}
