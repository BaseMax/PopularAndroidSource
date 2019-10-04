package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.c.a.a.a.k;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;

/* compiled from: ItemListVideoBindingImpl */
public class Ka extends Ja implements a.C0085a {
    public static final ViewDataBinding.b L = null;
    public static final SparseIntArray M = new SparseIntArray();
    public final FrameLayout N;
    public final View.OnClickListener O;
    public final View.OnClickListener P;
    public long Q;

    static {
        M.put(R.id.bottomDivider, 6);
    }

    public Ka(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 7, L, M));
    }

    public boolean a(int i2, Object obj) {
        if (23 == i2) {
            a((ListItem.Video) obj);
        } else if (22 == i2) {
            a((k) obj);
        } else if (39 == i2) {
            b((Integer) obj);
        } else if (21 == i2) {
            b((PageViewConfigItem) obj);
        } else if (20 != i2) {
            return false;
        } else {
            a((PageViewConfigItem) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.H = num;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r22 = this;
            r1 = r22
            monitor-enter(r22)
            long r2 = r1.Q     // Catch:{ all -> 0x00b9 }
            r4 = 0
            r1.Q = r4     // Catch:{ all -> 0x00b9 }
            monitor-exit(r22)     // Catch:{ all -> 0x00b9 }
            com.farsitel.bazaar.common.model.page.ListItem$Video r0 = r1.G
            c.c.a.n.c.c.a.a.a.k r6 = r1.K
            r6 = 33
            long r6 = r6 & r2
            r8 = 0
            r9 = 0
            int r10 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r10 == 0) goto L_0x0050
            if (r0 == 0) goto L_0x0022
            com.farsitel.bazaar.common.model.page.MovieItem$VideoItem r10 = r0.getVideo()
            boolean r0 = r0.getShowActionButton()
            goto L_0x0024
        L_0x0022:
            r10 = r9
            r0 = 0
        L_0x0024:
            if (r10 == 0) goto L_0x004f
            boolean r8 = r10.isLoading()
            java.lang.String r9 = r10.getVideoName()
            java.lang.String r11 = r10.getMoreInfo()
            java.lang.String r12 = r10.getInfo()
            java.lang.String r13 = r10.getCoverUrl()
            android.view.View r14 = r22.h()
            android.content.Context r14 = r14.getContext()
            java.lang.String r10 = r10.getPrimaryButtonText(r14)
            r15 = r13
            r21 = r8
            r8 = r0
            r0 = r9
            r9 = r12
            r12 = r21
            goto L_0x0055
        L_0x004f:
            r8 = r0
        L_0x0050:
            r0 = r9
            r10 = r0
            r11 = r10
            r15 = r11
            r12 = 0
        L_0x0055:
            r13 = 32
            long r2 = r2 & r13
            int r13 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r13 == 0) goto L_0x006a
            android.widget.FrameLayout r2 = r1.N
            android.view.View$OnClickListener r3 = r1.O
            r2.setOnClickListener(r3)
            com.farsitel.bazaar.widget.LoadingButton r2 = r1.F
            android.view.View$OnClickListener r3 = r1.P
            r2.setOnClickListener(r3)
        L_0x006a:
            int r2 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r2 == 0) goto L_0x00b8
            androidx.appcompat.widget.AppCompatImageView r14 = r1.B
            r2 = 2131230836(0x7f080074, float:1.8077736E38)
            android.graphics.drawable.Drawable r16 = androidx.databinding.ViewDataBinding.b((android.view.View) r14, (int) r2)
            r17 = 0
            r18 = 0
            r19 = 0
            androidx.appcompat.widget.AppCompatImageView r2 = r1.B
            android.content.res.Resources r2 = r2.getResources()
            r3 = 2131165289(0x7f070069, float:1.794479E38)
            float r2 = r2.getDimension(r3)
            java.lang.Float r20 = java.lang.Float.valueOf(r2)
            c.c.a.d.a.b.a(r14, r15, r16, r17, r18, r19, r20)
            com.farsitel.bazaar.widget.LocalAwareTextView r2 = r1.C
            b.l.a.f.a((android.widget.TextView) r2, (java.lang.CharSequence) r9)
            com.farsitel.bazaar.widget.LocalAwareTextView r2 = r1.D
            b.l.a.f.a((android.widget.TextView) r2, (java.lang.CharSequence) r11)
            com.farsitel.bazaar.widget.LocalAwareTextView r2 = r1.D
            c.c.a.d.a.b.a((android.view.View) r2, r11)
            com.farsitel.bazaar.widget.LocalAwareTextView r2 = r1.E
            b.l.a.f.a((android.widget.TextView) r2, (java.lang.CharSequence) r0)
            com.farsitel.bazaar.widget.LoadingButton r0 = r1.F
            r0.setText(r10)
            com.farsitel.bazaar.widget.LoadingButton r0 = r1.F
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r8)
            c.c.a.d.a.b.a((android.view.View) r0, r2)
            com.farsitel.bazaar.widget.LoadingButton r0 = r1.F
            r0.setShowLoading(r12)
        L_0x00b8:
            return
        L_0x00b9:
            r0 = move-exception
            monitor-exit(r22)     // Catch:{ all -> 0x00b9 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.f.Ka.e():void");
    }

    public boolean i() {
        synchronized (this) {
            if (this.Q != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Q = 32;
        }
        k();
    }

    public Ka(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[6], objArr[1], objArr[3], objArr[4], objArr[2], objArr[5]);
        this.Q = -1;
        this.N = objArr[0];
        this.N.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        b(view);
        this.O = new a(this, 1);
        this.P = new a(this, 2);
        l();
    }

    public void b(PageViewConfigItem pageViewConfigItem) {
        this.J = pageViewConfigItem;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            k kVar = this.K;
            ListItem.Video video = this.G;
            if (kVar != null) {
                z = true;
            }
            if (z) {
                kVar.b(video);
            }
        } else if (i2 == 2) {
            k kVar2 = this.K;
            ListItem.Video video2 = this.G;
            if (kVar2 != null) {
                z = true;
            }
            if (z) {
                kVar2.a(video2);
            }
        }
    }

    public void a(ListItem.Video video) {
        this.G = video;
        synchronized (this) {
            this.Q |= 1;
        }
        a(23);
        super.k();
    }

    public void a(k kVar) {
        this.K = kVar;
        synchronized (this) {
            this.Q |= 2;
        }
        a(22);
        super.k();
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        this.I = pageViewConfigItem;
    }
}
