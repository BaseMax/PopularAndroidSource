package c.c.a.n.j.k.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import c.c.a.c.b.c;
import c.c.a.d.b.i;
import c.c.a.d.b.l;
import c.c.a.f.C0406bc;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import h.h;

/* compiled from: VideoActionsViewHolder.kt */
public final class b extends n<RecyclerData> {
    public final int v = i.a(36);
    public final int w = i.a(16);
    public final C0406bc x;
    public final VideoInfoClickListener y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(C0406bc bcVar, VideoInfoClickListener videoInfoClickListener) {
        super(bcVar);
        j.b(bcVar, "viewBinding");
        j.b(videoInfoClickListener, "videoInfoClickListener");
        this.x = bcVar;
        this.y = videoInfoClickListener;
    }

    public final void a(CinemaActionsItem cinemaActionsItem, C0406bc bcVar) {
        h hVar;
        switch (a.f6619a[cinemaActionsItem.getVideoState().ordinal()]) {
            case 1:
                i(bcVar);
                hVar = h.f14579a;
                break;
            case 2:
                b(bcVar, cinemaActionsItem);
                hVar = h.f14579a;
                break;
            case 3:
                f(bcVar);
                hVar = h.f14579a;
                break;
            case 4:
                g(bcVar);
                hVar = h.f14579a;
                break;
            case 5:
                b(bcVar);
                hVar = h.f14579a;
                break;
            case 6:
                c(bcVar);
                hVar = h.f14579a;
                break;
            case 7:
                a(bcVar, cinemaActionsItem);
                hVar = h.f14579a;
                break;
            case 8:
                h(bcVar);
                hVar = h.f14579a;
                break;
            case 9:
                a(bcVar);
                hVar = h.f14579a;
                break;
            case 10:
                d(bcVar);
                hVar = h.f14579a;
                break;
            case 11:
                e(bcVar);
                break;
        }
        hVar = h.f14579a;
        c.a(hVar);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.x.a(48, (Object) this.y);
        if (recyclerData instanceof CinemaActionsItem) {
            a((CinemaActionsItem) recyclerData, this.x);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void c(C0406bc bcVar) {
        a(this, bcVar, true, true, false, false, 12, null);
        MaterialButton materialButton = bcVar.F;
        j.a((Object) materialButton, "videodetailDownloadButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(context.getResources().getString(R.string.failed_download));
    }

    public final void d(C0406bc bcVar) {
        a(this, bcVar, true, false, false, false, 14, null);
    }

    public final void e(C0406bc bcVar) {
        a(this, bcVar, false, false, false, true, 7, null);
        ProgressBar progressBar = bcVar.B;
        j.a((Object) progressBar, "videoDownloadProgressBar");
        progressBar.setProgress(0);
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_in_queue));
    }

    public final void f(C0406bc bcVar) {
        a(this, bcVar, false, false, false, true, 7, null);
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.waiting_for_network));
    }

    public final void g(C0406bc bcVar) {
        a(this, bcVar, false, false, false, true, 7, null);
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.pause));
    }

    public final void h(C0406bc bcVar) {
        a(this, bcVar, false, false, false, true, 7, null);
        ProgressBar progressBar = bcVar.B;
        j.a((Object) progressBar, "videoDownloadProgressBar");
        progressBar.setProgress(0);
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_preparing));
    }

    public final void i(C0406bc bcVar) {
        a(this, bcVar, false, false, false, false, 15, null);
    }

    public final void b(C0406bc bcVar, CinemaActionsItem cinemaActionsItem) {
        a(this, bcVar, cinemaActionsItem.isFree(), cinemaActionsItem.isFree() && cinemaActionsItem.getDownloadable(), !cinemaActionsItem.isFree(), false, 8, null);
        MaterialButton materialButton = bcVar.I;
        j.a((Object) materialButton, "videodetailPurchaseButton");
        View h2 = bcVar.h();
        j.a((Object) h2, "root");
        Context context = h2.getContext();
        j.a((Object) context, "root.context");
        Integer price = cinemaActionsItem.getPrice();
        materialButton.setText(c.c.a.c.g.b.a(context, price != null ? Long.valueOf((long) price.intValue()) : null, false, 4, null));
        MaterialButton materialButton2 = bcVar.F;
        j.a((Object) materialButton2, "videodetailDownloadButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context2 = view.getContext();
        j.a((Object) context2, "itemView.context");
        materialButton2.setText(context2.getResources().getString(R.string.download));
    }

    public final void b(C0406bc bcVar) {
        a(this, bcVar, true, false, false, false, 14, null);
    }

    @SuppressLint({"StringFormatMatches"})
    public final void a(C0406bc bcVar, CinemaActionsItem cinemaActionsItem) {
        a(this, bcVar, false, false, false, true, 7, null);
        DownloaderProgressInfo progressInfo = cinemaActionsItem.getProgressInfo();
        int progress = progressInfo != null ? progressInfo.getProgress() : 0;
        ProgressBar progressBar = bcVar.B;
        j.a((Object) progressBar, "videoDownloadProgressBar");
        progressBar.setProgress(progress == 0 ? progress : Math.max(progress, 4));
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.downloading_percentage, new Object[]{Integer.valueOf(progress)}));
    }

    public final void a(C0406bc bcVar) {
        a(this, bcVar, false, false, false, true, 7, null);
        LocalAwareTextView localAwareTextView = bcVar.C;
        j.a((Object) localAwareTextView, "videoDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_checking));
    }

    public static /* synthetic */ void a(b bVar, C0406bc bcVar, boolean z, boolean z2, boolean z3, boolean z4, int i2, Object obj) {
        bVar.a(bcVar, (i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4);
    }

    public final void a(C0406bc bcVar, boolean z, boolean z2, boolean z3, boolean z4) {
        if (z) {
            LoadingButton loadingButton = bcVar.H;
            j.a((Object) loadingButton, "videodetailPlayButton");
            l.c(loadingButton);
        } else {
            LoadingButton loadingButton2 = bcVar.H;
            j.a((Object) loadingButton2, "videodetailPlayButton");
            l.a(loadingButton2);
        }
        if (z2) {
            MaterialButton materialButton = bcVar.F;
            j.a((Object) materialButton, "videodetailDownloadButton");
            l.c(materialButton);
        } else {
            MaterialButton materialButton2 = bcVar.F;
            j.a((Object) materialButton2, "videodetailDownloadButton");
            l.a(materialButton2);
        }
        if (z4) {
            Group group = bcVar.G;
            j.a((Object) group, "videodetailDownloadGroup");
            l.c(group);
        } else {
            Group group2 = bcVar.G;
            j.a((Object) group2, "videodetailDownloadGroup");
            l.a(group2);
        }
        if (z3) {
            MaterialButton materialButton3 = bcVar.I;
            j.a((Object) materialButton3, "videodetailPurchaseButton");
            l.c(materialButton3);
        } else {
            MaterialButton materialButton4 = bcVar.I;
            j.a((Object) materialButton4, "videodetailPurchaseButton");
            l.a(materialButton4);
        }
        if (z && z2) {
            ConstraintLayout constraintLayout = bcVar.A;
            int i2 = this.w;
            constraintLayout.setPadding(i2, 0, i2, 0);
        } else if (!z4) {
            ConstraintLayout constraintLayout2 = bcVar.A;
            int i3 = this.v;
            constraintLayout2.setPadding(i3, 0, i3, 0);
        }
    }
}
