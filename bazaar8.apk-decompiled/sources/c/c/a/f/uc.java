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
import c.c.a.n.j.c.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;

/* compiled from: ItemVideoDownloadedBindingImpl */
public class uc extends tc implements a.C0085a {
    public static final ViewDataBinding.b O = null;
    public static final SparseIntArray P = new SparseIntArray();
    public final ConstraintLayout Q;
    public final View.OnClickListener R;
    public final View.OnClickListener S;
    public final View.OnClickListener T;
    public final View.OnClickListener U;
    public long V;

    static {
        P.put(R.id.bottomDivider, 11);
        P.put(R.id.rightOfActionButton, 12);
    }

    public uc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 13, O, P));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((DownloadedVideoItem) obj);
        } else if (16 != i2) {
            return false;
        } else {
            a((p) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            DownloadedVideoItem downloadedVideoItem = this.M;
            p pVar = this.N;
            if (pVar != null) {
                z = true;
            }
            if (z) {
                pVar.c(downloadedVideoItem);
            }
        } else if (i2 == 2) {
            DownloadedVideoItem downloadedVideoItem2 = this.M;
            p pVar2 = this.N;
            if (pVar2 != null) {
                z = true;
            }
            if (z) {
                pVar2.b(downloadedVideoItem2);
            }
        } else if (i2 == 3) {
            DownloadedVideoItem downloadedVideoItem3 = this.M;
            p pVar3 = this.N;
            if (pVar3 != null) {
                z = true;
            }
            if (z) {
                pVar3.a(downloadedVideoItem3);
            }
        } else if (i2 == 4) {
            DownloadedVideoItem downloadedVideoItem4 = this.M;
            p pVar4 = this.N;
            if (pVar4 != null) {
                z = true;
            }
            if (z) {
                pVar4.a(view, downloadedVideoItem4);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str;
        String str2;
        String str3;
        boolean z5;
        String str4;
        String str5;
        String str6;
        String str7;
        DownloaderProgressInfo downloaderProgressInfo;
        String str8;
        String str9;
        String str10;
        boolean z6;
        boolean z7;
        String str11;
        synchronized (this) {
            j2 = this.V;
            this.V = 0;
        }
        DownloadedVideoItem downloadedVideoItem = this.M;
        p pVar = this.N;
        long j3 = 5 & j2;
        int i2 = 0;
        String str12 = null;
        if (j3 != 0) {
            if (downloadedVideoItem != null) {
                boolean enablePlayButton = downloadedVideoItem.getEnablePlayButton();
                boolean visibleVideoInfo = downloadedVideoItem.getVisibleVideoInfo();
                String playButtonText = downloadedVideoItem.playButtonText(h().getContext());
                str10 = downloadedVideoItem.getVideoDownloadStateLabel(h().getContext());
                str9 = downloadedVideoItem.getCoverUrl();
                str8 = downloadedVideoItem.getVideoDesc();
                downloaderProgressInfo = downloadedVideoItem.getProgressInfo();
                str7 = downloadedVideoItem.getVideoName();
                z3 = downloadedVideoItem.getVisiblePlayButton();
                z2 = downloadedVideoItem.getVisibleDeleteIcon();
                z = downloadedVideoItem.getVisibleDownloadProgress();
                str11 = downloadedVideoItem.getVideoInfo();
                boolean z8 = visibleVideoInfo;
                z7 = enablePlayButton;
                str12 = playButtonText;
                z6 = z8;
            } else {
                str11 = null;
                str10 = null;
                str9 = null;
                str8 = null;
                downloaderProgressInfo = null;
                str7 = null;
                z7 = false;
                z6 = false;
                z3 = false;
                z2 = false;
                z = false;
            }
            if (downloaderProgressInfo != null) {
                i2 = downloaderProgressInfo.getProgress();
            }
            str = str8;
            str2 = str11;
            str6 = str10;
            z5 = z7;
            str5 = str9;
            str3 = str7;
            z4 = z6;
            str4 = str12;
        } else {
            str6 = null;
            str5 = null;
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
            z5 = false;
            z4 = false;
            z3 = false;
            z2 = false;
            z = false;
        }
        if ((j2 & 4) != 0) {
            this.B.setOnClickListener(this.R);
            this.Q.setOnClickListener(this.U);
            this.G.setOnClickListener(this.S);
            this.L.setOnClickListener(this.T);
        }
        if (j3 != 0) {
            b.a((View) this.C, Boolean.valueOf(z));
            this.D.setProgress(i2);
            AppCompatImageView appCompatImageView = this.F;
            b.a(appCompatImageView, str5, null, null, null, null, Float.valueOf(appCompatImageView.getResources().getDimension(R.dimen.cover_image_rounded_corner)));
            b.a((View) this.G, Boolean.valueOf(z2));
            f.a((TextView) this.H, (CharSequence) str6);
            f.a((TextView) this.I, (CharSequence) str);
            f.a((TextView) this.J, (CharSequence) str2);
            b.a((View) this.J, Boolean.valueOf(z4));
            f.a((TextView) this.K, (CharSequence) str3);
            this.L.setEnabled(z5);
            f.a((TextView) this.L, (CharSequence) str4);
            b.a((View) this.L, Boolean.valueOf(z3));
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.V != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.V = 4;
        }
        k();
    }

    public uc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[11], objArr[6], objArr[10], objArr[8], objArr[12], objArr[1], objArr[9], objArr[7], objArr[3], objArr[4], objArr[2], objArr[5]);
        this.V = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.Q = objArr[0];
        this.Q.setTag(null);
        this.D.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.L.setTag(null);
        b(view);
        this.R = new a(this, 3);
        this.S = new a(this, 4);
        this.T = new a(this, 2);
        this.U = new a(this, 1);
        l();
    }

    public void a(DownloadedVideoItem downloadedVideoItem) {
        this.M = downloadedVideoItem;
        synchronized (this) {
            this.V |= 1;
        }
        a(45);
        super.k();
    }

    public void a(p pVar) {
        this.N = pVar;
        synchronized (this) {
            this.V |= 2;
        }
        a(16);
        super.k();
    }
}
