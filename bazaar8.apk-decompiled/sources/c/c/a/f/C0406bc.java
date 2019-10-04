package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.bc  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoActionsBinding */
public abstract class C0406bc extends ViewDataBinding {
    public final ConstraintLayout A;
    public final ProgressBar B;
    public final LocalAwareTextView C;
    public final AppCompatImageView D;
    public final View E;
    public final MaterialButton F;
    public final Group G;
    public final LoadingButton H;
    public final MaterialButton I;
    public CinemaActionsItem J;
    public VideoInfoClickListener K;

    public C0406bc(Object obj, View view, int i2, ConstraintLayout constraintLayout, ProgressBar progressBar, LocalAwareTextView localAwareTextView, AppCompatImageView appCompatImageView, View view2, MaterialButton materialButton, Group group, LoadingButton loadingButton, MaterialButton materialButton2) {
        super(obj, view, i2);
        this.A = constraintLayout;
        this.B = progressBar;
        this.C = localAwareTextView;
        this.D = appCompatImageView;
        this.E = view2;
        this.F = materialButton;
        this.G = group;
        this.H = loadingButton;
        this.I = materialButton2;
    }

    public static C0406bc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0406bc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0406bc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_actions, viewGroup, z, obj);
    }
}
