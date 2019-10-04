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
import c.c.a.n.c.c.a.a.a.j;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;

/* compiled from: ItemListSerialBindingImpl */
public class Ia extends Ha implements a.C0085a {
    public static final ViewDataBinding.b L = null;
    public static final SparseIntArray M = new SparseIntArray();
    public final FrameLayout N;
    public final View.OnClickListener O;
    public long P;

    static {
        M.put(R.id.bottomDivider, 5);
    }

    public Ia(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, L, M));
    }

    public boolean a(int i2, Object obj) {
        if (44 == i2) {
            a((MovieItem.SerialItem) obj);
        } else if (45 == i2) {
            a((ListItem) obj);
        } else if (21 == i2) {
            b((PageViewConfigItem) obj);
        } else if (20 == i2) {
            a((PageViewConfigItem) obj);
        } else if (39 == i2) {
            b((Integer) obj);
        } else if (40 != i2) {
            return false;
        } else {
            a((j) obj);
        }
        return true;
    }

    public void b(PageViewConfigItem pageViewConfigItem) {
        this.J = pageViewConfigItem;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        String str4;
        ShortInfo shortInfo;
        synchronized (this) {
            j2 = this.P;
            this.P = 0;
        }
        MovieItem.SerialItem serialItem = this.F;
        ListItem listItem = this.G;
        j jVar = this.K;
        long j3 = 65 & j2;
        String str5 = null;
        if (j3 != 0) {
            if (serialItem != null) {
                str4 = serialItem.getCoverUrl();
                str2 = serialItem.getName();
                shortInfo = serialItem.getShortInfo();
            } else {
                shortInfo = null;
                str4 = null;
                str2 = null;
            }
            if (shortInfo != null) {
                str5 = shortInfo.getInfo();
                str3 = shortInfo.getMoreInfo();
            } else {
                str3 = null;
            }
            str = str4;
        } else {
            str3 = null;
            str2 = null;
            str = null;
        }
        if ((j2 & 64) != 0) {
            this.N.setOnClickListener(this.O);
        }
        if (j3 != 0) {
            AppCompatImageView appCompatImageView = this.B;
            b.a(appCompatImageView, str, ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_video), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.cover_image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str5);
            f.a((TextView) this.D, (CharSequence) str3);
            b.a((View) this.D, str3);
            f.a((TextView) this.E, (CharSequence) str2);
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
            this.P = 64;
        }
        k();
    }

    public Ia(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[1], objArr[3], objArr[4], objArr[2]);
        this.P = -1;
        this.N = objArr[0];
        this.N.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        b(view);
        this.O = new a(this, 1);
        l();
    }

    public void b(Integer num) {
        this.H = num;
    }

    public final void b(int i2, View view) {
        ListItem listItem = this.G;
        j jVar = this.K;
        if (jVar != null) {
            jVar.a(listItem);
        }
    }

    public void a(MovieItem.SerialItem serialItem) {
        this.F = serialItem;
        synchronized (this) {
            this.P |= 1;
        }
        a(44);
        super.k();
    }

    public void a(ListItem listItem) {
        this.G = listItem;
        synchronized (this) {
            this.P |= 2;
        }
        a(45);
        super.k();
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        this.I = pageViewConfigItem;
    }

    public void a(j jVar) {
        this.K = jVar;
        synchronized (this) {
            this.P |= 32;
        }
        a(40);
        super.k();
    }
}
