package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;

/* renamed from: c.c.a.f.cc  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoActionsBindingImpl */
public class C0410cc extends C0406bc implements a.C0085a {
    public static final ViewDataBinding.b L = null;
    public static final SparseIntArray M = new SparseIntArray();
    public final View.OnClickListener N;
    public final View.OnClickListener O;
    public final View.OnClickListener P;
    public final View.OnClickListener Q;
    public long R;

    static {
        M.put(R.id.videoDownloadProgressBar, 5);
        M.put(R.id.videoDownloadState, 6);
        M.put(R.id.videodetailCancelDownload, 7);
        M.put(R.id.videodetailDownloadGroup, 8);
    }

    public C0410cc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 9, L, M));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((CinemaActionsItem) obj);
        } else if (48 != i2) {
            return false;
        } else {
            a((VideoInfoClickListener) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            CinemaActionsItem cinemaActionsItem = this.J;
            VideoInfoClickListener videoInfoClickListener = this.K;
            if (videoInfoClickListener != null) {
                z = true;
            }
            if (z) {
                videoInfoClickListener.onPurchaseClicked(cinemaActionsItem);
            }
        } else if (i2 == 2) {
            CinemaActionsItem cinemaActionsItem2 = this.J;
            VideoInfoClickListener videoInfoClickListener2 = this.K;
            if (videoInfoClickListener2 != null) {
                z = true;
            }
            if (z) {
                videoInfoClickListener2.onPlayClicked(cinemaActionsItem2);
            }
        } else if (i2 == 3) {
            CinemaActionsItem cinemaActionsItem3 = this.J;
            VideoInfoClickListener videoInfoClickListener3 = this.K;
            if (videoInfoClickListener3 != null) {
                z = true;
            }
            if (z) {
                videoInfoClickListener3.onDownloadClicked(cinemaActionsItem3);
            }
        } else if (i2 == 4) {
            CinemaActionsItem cinemaActionsItem4 = this.J;
            VideoInfoClickListener videoInfoClickListener4 = this.K;
            if (videoInfoClickListener4 != null) {
                z = true;
            }
            if (z) {
                videoInfoClickListener4.onStopDownloadClicked(cinemaActionsItem4);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.R;
            this.R = 0;
        }
        boolean z = false;
        CinemaActionsItem cinemaActionsItem = this.J;
        VideoInfoClickListener videoInfoClickListener = this.K;
        long j3 = 5 & j2;
        if (!(j3 == 0 || cinemaActionsItem == null)) {
            z = cinemaActionsItem.getShowLoadingButton();
        }
        if ((j2 & 4) != 0) {
            this.E.setOnClickListener(this.Q);
            this.F.setOnClickListener(this.P);
            this.H.setOnClickListener(this.O);
            this.I.setOnClickListener(this.N);
        }
        if (j3 != 0) {
            this.H.setShowLoading(z);
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
            this.R = 4;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0410cc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[0], objArr[5], objArr[6], objArr[7], objArr[4], objArr[3], objArr[8], objArr[2], objArr[1]);
        this.R = -1;
        this.A.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        b(view);
        this.N = new a(this, 1);
        this.O = new a(this, 2);
        this.P = new a(this, 3);
        this.Q = new a(this, 4);
        l();
    }

    public void a(CinemaActionsItem cinemaActionsItem) {
        this.J = cinemaActionsItem;
        synchronized (this) {
            this.R |= 1;
        }
        a(45);
        super.k();
    }

    public void a(VideoInfoClickListener videoInfoClickListener) {
        this.K = videoInfoClickListener;
        synchronized (this) {
            this.R |= 2;
        }
        a(48);
        super.k();
    }
}
