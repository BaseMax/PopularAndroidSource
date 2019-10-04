package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;

/* renamed from: c.c.a.f.oa  reason: case insensitive filesystem */
/* compiled from: ItemGenreBindingImpl */
public class C0449oa extends C0446na implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final FrameLayout F;
    public final View.OnClickListener G;
    public long H;

    public C0449oa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((GenreItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((VideoInfoClickListener) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        GenreItem genreItem = this.B;
        VideoInfoClickListener videoInfoClickListener = this.C;
        if (videoInfoClickListener != null) {
            videoInfoClickListener.onGenreClicked(genreItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        GenreItem genreItem = this.B;
        VideoInfoClickListener videoInfoClickListener = this.C;
        String str = null;
        long j3 = 5 & j2;
        if (!(j3 == 0 || genreItem == null)) {
            str = genreItem.getName();
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str);
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.G);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.H != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.H = 4;
        }
        k();
    }

    public C0449oa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.H = -1;
        this.A.setTag(null);
        this.F = objArr[0];
        this.F.setTag(null);
        b(view);
        this.G = new a(this, 1);
        l();
    }

    public void a(GenreItem genreItem) {
        this.B = genreItem;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }

    public void a(VideoInfoClickListener videoInfoClickListener) {
        this.C = videoInfoClickListener;
        synchronized (this) {
            this.H |= 2;
        }
        a(41);
        super.k();
    }
}
