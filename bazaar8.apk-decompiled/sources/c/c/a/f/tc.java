package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.j.c.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemVideoDownloadedBinding */
public abstract class tc extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final Group C;
    public final ProgressBar D;
    public final Barrier E;
    public final AppCompatImageView F;
    public final AppCompatImageView G;
    public final AppCompatTextView H;
    public final AppCompatTextView I;
    public final AppCompatTextView J;
    public final AppCompatTextView K;
    public final MaterialButton L;
    public DownloadedVideoItem M;
    public p N;

    public tc(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, Group group, ProgressBar progressBar, Barrier barrier, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, MaterialButton materialButton) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = group;
        this.D = progressBar;
        this.E = barrier;
        this.F = appCompatImageView2;
        this.G = appCompatImageView3;
        this.H = appCompatTextView;
        this.I = appCompatTextView2;
        this.J = appCompatTextView3;
        this.K = appCompatTextView4;
        this.L = materialButton;
    }

    public static tc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static tc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (tc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_downloaded, viewGroup, z, obj);
    }
}
