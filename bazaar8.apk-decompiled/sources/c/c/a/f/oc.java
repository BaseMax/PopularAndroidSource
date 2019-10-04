package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.b.c;
import c.c.a.j.a.a;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;

/* compiled from: ItemVideoDetailVideoTrailerCoverItemBindingImpl */
public class oc extends nc implements a.C0085a {
    public static final ViewDataBinding.b G = null;
    public static final SparseIntArray H = new SparseIntArray();
    public final CardView I;
    public final View.OnClickListener J;
    public long K;

    static {
        H.put(R.id.dark_shade, 2);
        H.put(R.id.play_button, 3);
        H.put(R.id.preview, 4);
    }

    public oc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, G, H));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((TrailerCoverItem) obj);
        } else if (5 != i2) {
            return false;
        } else {
            a((d.a) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        TrailerCoverItem trailerCoverItem = this.E;
        d.a aVar = this.F;
        if (aVar != null) {
            aVar.a(trailerCoverItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        TrailerCoverItem trailerCoverItem = this.E;
        String str = null;
        d.a aVar = this.F;
        long j3 = 5 & j2;
        if (!(j3 == 0 || trailerCoverItem == null)) {
            str = trailerCoverItem.getPreviewUrl();
        }
        if (j3 != 0) {
            c.a((ImageView) this.B, str);
        }
        if ((j2 & 4) != 0) {
            this.I.setOnClickListener(this.J);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.K != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.K = 4;
        }
        k();
    }

    public oc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1], objArr[3], objArr[4]);
        this.K = -1;
        this.B.setTag(null);
        this.I = objArr[0];
        this.I.setTag(null);
        b(view);
        this.J = new a(this, 1);
        l();
    }

    public void a(TrailerCoverItem trailerCoverItem) {
        this.E = trailerCoverItem;
        synchronized (this) {
            this.K |= 1;
        }
        a(45);
        super.k();
    }

    public void a(d.a aVar) {
        this.F = aVar;
        synchronized (this) {
            this.K |= 2;
        }
        a(5);
        super.k();
    }
}
