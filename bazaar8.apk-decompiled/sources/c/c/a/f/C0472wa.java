package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;

/* renamed from: c.c.a.f.wa  reason: case insensitive filesystem */
/* compiled from: ItemListEpisodeBindingImpl */
public class C0472wa extends C0469va implements a.C0085a {
    public static final ViewDataBinding.b M = null;
    public static final SparseIntArray N = new SparseIntArray();
    public final FrameLayout O;
    public final View.OnClickListener P;
    public final View.OnClickListener Q;
    public long R;

    static {
        N.put(R.id.bottomDivider, 6);
    }

    public C0472wa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 7, M, N));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ListItem) obj);
        } else if (11 == i2) {
            a((i) obj);
        } else if (39 == i2) {
            b((Integer) obj);
        } else if (47 == i2) {
            a((ListItem.Episode) obj);
        } else if (21 == i2) {
            b((PageViewConfigItem) obj);
        } else if (20 != i2) {
            return false;
        } else {
            a((PageViewConfigItem) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.I = num;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        boolean z;
        String str2;
        String str3;
        String str4;
        MovieItem.EpisodeItem episodeItem;
        boolean z2;
        String str5;
        ShortInfo shortInfo;
        synchronized (this) {
            j2 = this.R;
            this.R = 0;
        }
        i iVar = this.L;
        ListItem.Episode episode = this.G;
        long j3 = 72 & j2;
        boolean z3 = false;
        String str6 = null;
        if (j3 != 0) {
            if (episode != null) {
                episodeItem = episode.getEpisode();
                z2 = episode.getShowActionButton();
            } else {
                episodeItem = null;
                z2 = false;
            }
            if (episodeItem != null) {
                z3 = episodeItem.isLoading();
                str2 = episodeItem.getPrimaryButtonText(h().getContext());
                shortInfo = episodeItem.getShortInfo();
                str5 = episodeItem.getCoverUrl();
                str3 = episodeItem.getName();
            } else {
                str3 = null;
                str2 = null;
                shortInfo = null;
                str5 = null;
            }
            if (shortInfo != null) {
                str = str5;
                boolean z4 = z3;
                z3 = z2;
                str4 = shortInfo.getMoreInfo();
                str6 = shortInfo.getInfo();
                z = z4;
            } else {
                z = z3;
                str = str5;
                z3 = z2;
                str4 = null;
            }
        } else {
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
            z = false;
        }
        if ((j2 & 64) != 0) {
            this.O.setOnClickListener(this.Q);
            this.F.setOnClickListener(this.P);
        }
        if (j3 != 0) {
            AppCompatImageView appCompatImageView = this.B;
            b.a(appCompatImageView, str, ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_video), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.cover_image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str6);
            f.a((TextView) this.D, (CharSequence) str4);
            b.a((View) this.D, str4);
            f.a((TextView) this.E, (CharSequence) str3);
            this.F.setText(str2);
            b.a((View) this.F, Boolean.valueOf(z3));
            this.F.setShowLoading(z);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.R != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.R = 64;
        }
        k();
    }

    public C0472wa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[6], objArr[1], objArr[3], objArr[4], objArr[2], objArr[5]);
        this.R = -1;
        this.O = objArr[0];
        this.O.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        b(view);
        this.P = new a(this, 2);
        this.Q = new a(this, 1);
        l();
    }

    public void b(PageViewConfigItem pageViewConfigItem) {
        this.K = pageViewConfigItem;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            ListItem.Episode episode = this.G;
            i iVar = this.L;
            if (iVar != null) {
                z = true;
            }
            if (z) {
                iVar.b(episode);
            }
        } else if (i2 == 2) {
            ListItem.Episode episode2 = this.G;
            i iVar2 = this.L;
            if (iVar2 != null) {
                z = true;
            }
            if (z) {
                iVar2.a(episode2);
            }
        }
    }

    public void a(ListItem listItem) {
        this.H = listItem;
    }

    public void a(i iVar) {
        this.L = iVar;
        synchronized (this) {
            this.R |= 2;
        }
        a(11);
        super.k();
    }

    public void a(ListItem.Episode episode) {
        this.G = episode;
        synchronized (this) {
            this.R |= 8;
        }
        a(47);
        super.k();
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        this.J = pageViewConfigItem;
    }
}
