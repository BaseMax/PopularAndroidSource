package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;

/* compiled from: ItemVideoDetailVideoInfoBindingImpl */
public class ic extends hc implements a.C0085a {
    public static final ViewDataBinding.b J = null;
    public static final SparseIntArray K = new SparseIntArray();
    public final ConstraintLayout L;
    public final View.OnClickListener M;
    public final View.OnClickListener N;
    public final View.OnClickListener O;
    public long P;

    static {
        K.put(R.id.ivForegroundCover, 5);
        K.put(R.id.videoCoverCenterGuide, 6);
        K.put(R.id.genres, 7);
    }

    public ic(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 8, J, K));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((CinemaInfoItem) obj);
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
            CinemaInfoItem cinemaInfoItem = this.H;
            VideoInfoClickListener videoInfoClickListener = this.I;
            if (videoInfoClickListener != null) {
                if (cinemaInfoItem != null) {
                    z = true;
                }
                if (z) {
                    videoInfoClickListener.onCoverImageClicked(cinemaInfoItem.getCover());
                }
            }
        } else if (i2 == 2) {
            CinemaInfoItem cinemaInfoItem2 = this.H;
            VideoInfoClickListener videoInfoClickListener2 = this.I;
            if (videoInfoClickListener2 != null) {
                z = true;
            }
            if (z) {
                videoInfoClickListener2.onVideoNameClicked(cinemaInfoItem2);
            }
        } else if (i2 == 3) {
            CinemaInfoItem cinemaInfoItem3 = this.H;
            VideoInfoClickListener videoInfoClickListener3 = this.I;
            if (videoInfoClickListener3 != null) {
                if (cinemaInfoItem3 != null) {
                    z = true;
                }
                if (z) {
                    videoInfoClickListener3.onPublisherClicked(cinemaInfoItem3.getPublisher());
                }
            }
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
        PublisherModel publisherModel;
        String str4;
        CinemaScreenshotItem cinemaScreenshotItem;
        synchronized (this) {
            j2 = this.P;
            this.P = 0;
        }
        CinemaInfoItem cinemaInfoItem = this.H;
        VideoInfoClickListener videoInfoClickListener = this.I;
        long j3 = 5 & j2;
        String str5 = null;
        if (j3 != 0) {
            if (cinemaInfoItem != null) {
                cinemaScreenshotItem = cinemaInfoItem.getCover();
                str4 = cinemaInfoItem.getHeaderImage();
                publisherModel = cinemaInfoItem.getPublisher();
                str3 = cinemaInfoItem.getName();
            } else {
                str3 = null;
                cinemaScreenshotItem = null;
                str4 = null;
                publisherModel = null;
            }
            str2 = cinemaScreenshotItem != null ? cinemaScreenshotItem.getThumbnailUrl() : null;
            if (publisherModel != null) {
                str5 = publisherModel.getName();
            }
            str = str4;
        } else {
            str3 = null;
            str2 = null;
            str = null;
        }
        if (j3 != 0) {
            b.a(this.C, str, null, null, null, null, null);
            f.a((TextView) this.D, (CharSequence) str5);
            AppCompatImageView appCompatImageView = this.F;
            b.a(appCompatImageView, str2, ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_video), null, null, null, Float.valueOf(this.F.getResources().getDimension(R.dimen.cover_image_rounded_corner)));
            f.a((TextView) this.G, (CharSequence) str3);
        }
        if ((j2 & 4) != 0) {
            this.D.setOnClickListener(this.M);
            this.F.setOnClickListener(this.N);
            this.G.setOnClickListener(this.O);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.P != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.P = 4;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ic(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[7], objArr[5], objArr[1], objArr[4], objArr[6], objArr[2], objArr[3]);
        this.P = -1;
        this.C.setTag(null);
        this.L = objArr[0];
        this.L.setTag(null);
        this.D.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        b(view);
        this.M = new a(this, 3);
        this.N = new a(this, 1);
        this.O = new a(this, 2);
        l();
    }

    public void a(CinemaInfoItem cinemaInfoItem) {
        this.H = cinemaInfoItem;
        synchronized (this) {
            this.P |= 1;
        }
        a(45);
        super.k();
    }

    public void a(VideoInfoClickListener videoInfoClickListener) {
        this.I = videoInfoClickListener;
        synchronized (this) {
            this.P |= 2;
        }
        a(48);
        super.k();
    }
}
