package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.VideoAddReviewItem;

/* compiled from: ItemVideoAddReviewBindingImpl */
public class Hb extends Gb implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = new SparseIntArray();
    public final LinearLayout F;
    public final RelativeLayout G;
    public final View.OnClickListener H;
    public long I;

    static {
        E.put(R.id.videoCommentAddIcon, 2);
    }

    public Hb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((VideoAddReviewItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        VideoAddReviewItem videoAddReviewItem = this.B;
        m mVar = this.C;
        if (mVar != null) {
            mVar.a(videoAddReviewItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.I;
            this.I = 0;
        }
        VideoAddReviewItem videoAddReviewItem = this.B;
        m mVar = this.C;
        if ((j2 & 4) != 0) {
            this.G.setOnClickListener(this.H);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.I != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.I = 4;
        }
        k();
    }

    public Hb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2]);
        this.I = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.G = objArr[1];
        this.G.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(VideoAddReviewItem videoAddReviewItem) {
        this.B = videoAddReviewItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.C = mVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(41);
        super.k();
    }
}
