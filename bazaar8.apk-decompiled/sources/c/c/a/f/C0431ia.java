package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.ia  reason: case insensitive filesystem */
/* compiled from: ItemCinemaSeasonEpisodeBindingImpl */
public class C0431ia extends C0428ha implements a.C0085a {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = new SparseIntArray();
    public final ConstraintLayout K;
    public final View.OnClickListener L;
    public final View.OnClickListener M;
    public long N;

    static {
        J.put(R.id.actionBarrier, 5);
        J.put(R.id.bottomDivider, 6);
    }

    public C0431ia(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 7, I, J));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ListItem.Episode) obj);
        } else if (11 != i2) {
            return false;
        } else {
            a((i) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            ListItem.Episode episode = this.G;
            i iVar = this.H;
            if (iVar != null) {
                z = true;
            }
            if (z) {
                iVar.b(episode);
            }
        } else if (i2 == 2) {
            ListItem.Episode episode2 = this.G;
            i iVar2 = this.H;
            if (iVar2 != null) {
                z = true;
            }
            if (z) {
                iVar2.a(episode2);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r17 = this;
            r1 = r17
            monitor-enter(r17)
            long r2 = r1.N     // Catch:{ all -> 0x009a }
            r4 = 0
            r1.N = r4     // Catch:{ all -> 0x009a }
            monitor-exit(r17)     // Catch:{ all -> 0x009a }
            com.farsitel.bazaar.common.model.page.ListItem$Episode r0 = r1.G
            c.c.a.n.c.c.a.a.a.i r6 = r1.H
            r6 = 0
            r7 = 5
            long r7 = r7 & r2
            r9 = 0
            int r10 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r10 == 0) goto L_0x0041
            if (r0 == 0) goto L_0x001e
            com.farsitel.bazaar.common.model.page.MovieItem$EpisodeItem r0 = r0.getEpisode()
            goto L_0x001f
        L_0x001e:
            r0 = r9
        L_0x001f:
            if (r0 == 0) goto L_0x0041
            java.lang.String r9 = r0.getCoverUrl()
            java.lang.String r6 = r0.getPriceBeforeDiscountString()
            java.lang.String r10 = r0.getName()
            boolean r11 = r0.getShowLoadingButton()
            android.view.View r12 = r17.h()
            android.content.Context r12 = r12.getContext()
            java.lang.String r0 = r0.getPrimaryButtonText(r12)
            r15 = r11
            r11 = r9
            r9 = r10
            goto L_0x0045
        L_0x0041:
            r0 = r9
            r6 = r0
            r11 = r6
            r15 = 0
        L_0x0045:
            r12 = 4
            long r2 = r2 & r12
            int r10 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r10 == 0) goto L_0x005a
            androidx.constraintlayout.widget.ConstraintLayout r2 = r1.K
            android.view.View$OnClickListener r3 = r1.L
            r2.setOnClickListener(r3)
            com.farsitel.bazaar.widget.LoadingButton r2 = r1.F
            android.view.View$OnClickListener r3 = r1.M
            r2.setOnClickListener(r3)
        L_0x005a:
            int r2 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r2 == 0) goto L_0x0099
            androidx.appcompat.widget.AppCompatTextView r2 = r1.C
            b.l.a.f.a((android.widget.TextView) r2, (java.lang.CharSequence) r9)
            com.farsitel.bazaar.widget.NoDiscountTextView r2 = r1.D
            b.l.a.f.a((android.widget.TextView) r2, (java.lang.CharSequence) r6)
            com.farsitel.bazaar.widget.NoDiscountTextView r2 = r1.D
            c.c.a.d.a.b.a((android.view.View) r2, r6)
            androidx.appcompat.widget.AppCompatImageView r10 = r1.E
            r2 = 2131230836(0x7f080074, float:1.8077736E38)
            android.graphics.drawable.Drawable r12 = androidx.databinding.ViewDataBinding.b((android.view.View) r10, (int) r2)
            r13 = 0
            r14 = 0
            r2 = 0
            androidx.appcompat.widget.AppCompatImageView r3 = r1.E
            android.content.res.Resources r3 = r3.getResources()
            r4 = 2131165388(0x7f0700cc, float:1.7944992E38)
            float r3 = r3.getDimension(r4)
            java.lang.Float r16 = java.lang.Float.valueOf(r3)
            r6 = r15
            r15 = r2
            c.c.a.d.a.b.a(r10, r11, r12, r13, r14, r15, r16)
            com.farsitel.bazaar.widget.LoadingButton r2 = r1.F
            r2.setText(r0)
            com.farsitel.bazaar.widget.LoadingButton r0 = r1.F
            r0.setShowLoading(r6)
        L_0x0099:
            return
        L_0x009a:
            r0 = move-exception
            monitor-exit(r17)     // Catch:{ all -> 0x009a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.f.C0431ia.e():void");
    }

    public boolean i() {
        synchronized (this) {
            if (this.N != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.N = 4;
        }
        k();
    }

    public C0431ia(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[6], objArr[3], objArr[2], objArr[1], objArr[4]);
        this.N = -1;
        this.K = objArr[0];
        this.K.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        b(view);
        this.L = new a(this, 1);
        this.M = new a(this, 2);
        l();
    }

    public void a(ListItem.Episode episode) {
        this.G = episode;
        synchronized (this) {
            this.N |= 1;
        }
        a(45);
        super.k();
    }

    public void a(i iVar) {
        this.H = iVar;
        synchronized (this) {
            this.N |= 2;
        }
        a(11);
        super.k();
    }
}
