package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.b.G;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;

/* renamed from: c.c.a.f.l  reason: case insensitive filesystem */
/* compiled from: FragmentMoreDescriptionBindingImpl */
public class C0439l extends C0436k implements a.C0085a {
    public static final ViewDataBinding.b ua = null;
    public static final SparseIntArray va = new SparseIntArray();
    public final Group Aa;
    public final Group Ba;
    public final View Ca;
    public final View.OnClickListener Da;
    public final View.OnClickListener Ea;
    public final View.OnClickListener Fa;
    public final View.OnClickListener Ga;
    public final View.OnClickListener Ha;
    public final View.OnClickListener Ia;
    public long Ja;
    public final CoordinatorLayout wa;
    public final Group xa;
    public final Group ya;
    public final Group za;

    static {
        va.put(R.id.toolbar, 23);
        va.put(R.id.pageDesc, 24);
        va.put(R.id.nestedScroll, 25);
        va.put(R.id.descriptionDivider, 26);
        va.put(R.id.moreDescriptionInformation, 27);
        va.put(R.id.moreDescriptionCategory, 28);
        va.put(R.id.categoryDivider, 29);
        va.put(R.id.moreDescriptionInstalled, 30);
        va.put(R.id.installedDivider, 31);
        va.put(R.id.moreDescriptionSize, 32);
        va.put(R.id.sizeDivider, 33);
        va.put(R.id.moreDescriptionVersion, 34);
        va.put(R.id.versionDivider, 35);
        va.put(R.id.moreDescriptionUpdatedTo, 36);
        va.put(R.id.updateToDivider, 37);
        va.put(R.id.moreDescriptionUpdatedAt, 38);
        va.put(R.id.updateAtDivider, 39);
        va.put(R.id.moreDescriptionWhatsNew, 40);
        va.put(R.id.whatsNewDivider, 41);
        va.put(R.id.moreDescriptionPermissions, 42);
        va.put(R.id.moreDescriptionEsra, 43);
        va.put(R.id.descriptionEsraDivider, 44);
        va.put(R.id.moreDescriptionShamed, 45);
        va.put(R.id.shamedDivider, 46);
        va.put(R.id.informationVersionValue, 47);
        va.put(R.id.informationWhatsNewValue, 48);
        va.put(R.id.permissionBottomSpace, 49);
        va.put(R.id.informationUpdateToGroup, 50);
    }

    public C0439l(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 51, ua, va));
    }

    public boolean a(int i2, Object obj) {
        if (4 == i2) {
            a((AppMoreDescriptionItem) obj);
        } else if (37 != i2) {
            return false;
        } else {
            a((G) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = true;
        switch (i2) {
            case 1:
                G g2 = this.sa;
                if (g2 == null) {
                    z = false;
                }
                if (z) {
                    g2.r();
                    return;
                }
                return;
            case 2:
                G g3 = this.sa;
                if (g3 == null) {
                    z = false;
                }
                if (z) {
                    g3.t();
                    return;
                }
                return;
            case 3:
                G g4 = this.sa;
                if (g4 == null) {
                    z = false;
                }
                if (z) {
                    g4.u();
                    return;
                }
                return;
            case 4:
                G g5 = this.sa;
                if (g5 == null) {
                    z = false;
                }
                if (z) {
                    g5.s();
                    return;
                }
                return;
            case 5:
                G g6 = this.sa;
                if (g6 == null) {
                    z = false;
                }
                if (z) {
                    g6.s();
                    return;
                }
                return;
            case 6:
                G g7 = this.sa;
                if (g7 == null) {
                    z = false;
                }
                if (z) {
                    g7.o();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v6, resolved type: java.lang.Long} */
    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r8v1, types: [java.lang.CharSequence] */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r8v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r34 = this;
            r1 = r34
            monitor-enter(r34)
            long r2 = r1.Ja     // Catch:{ all -> 0x0164 }
            r4 = 0
            r1.Ja = r4     // Catch:{ all -> 0x0164 }
            monitor-exit(r34)     // Catch:{ all -> 0x0164 }
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r0 = r1.ta
            c.c.a.n.b.G r6 = r1.sa
            r6 = 5
            long r6 = r6 & r2
            r8 = 0
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L_0x008e
            if (r0 == 0) goto L_0x0059
            java.lang.Long r8 = r0.getPackageDiffs()
            java.lang.String r9 = r0.getContentRating()
            java.lang.String r10 = r0.getShamedId()
            java.lang.String r11 = r0.getIconUrl()
            java.lang.String r12 = r0.getLastUpdated()
            java.lang.String r13 = r0.getChangeLog()
            android.view.View r14 = r34.h()
            android.content.Context r14 = r14.getContext()
            java.lang.String r14 = r0.getAppSize(r14)
            android.text.Spanned r15 = r0.getSpannedDescription()
            java.lang.String r16 = r0.getShamedIconURL()
            java.util.List r17 = r0.getPermissions()
            java.lang.String r18 = r0.getInstallCountRange()
            java.lang.String r19 = r0.getAppName()
            java.lang.String r20 = r0.getCategoryName()
            java.lang.String r0 = r0.getAppVersion()
            goto L_0x006b
        L_0x0059:
            r0 = r8
            r9 = r0
            r10 = r9
            r11 = r10
            r12 = r11
            r13 = r12
            r14 = r13
            r15 = r14
            r16 = r15
            r17 = r16
            r18 = r17
            r19 = r18
            r20 = r19
        L_0x006b:
            long r21 = androidx.databinding.ViewDataBinding.a((java.lang.Long) r8)
            java.lang.String r21 = java.lang.String.valueOf(r21)
            r30 = r0
            r23 = r11
            r29 = r12
            r31 = r13
            r13 = r14
            r33 = r15
            r14 = r16
            r32 = r17
            r12 = r18
            r0 = r20
            r11 = r9
            r15 = r10
            r9 = r21
            r10 = r8
            r8 = r19
            goto L_0x00a2
        L_0x008e:
            r0 = r8
            r9 = r0
            r10 = r9
            r11 = r10
            r12 = r11
            r13 = r12
            r14 = r13
            r15 = r14
            r23 = r15
            r29 = r23
            r30 = r29
            r31 = r30
            r32 = r31
            r33 = r32
        L_0x00a2:
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L_0x0130
            androidx.appcompat.widget.AppCompatImageView r6 = r1.A
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            android.content.res.Resources r7 = r6.getResources()
            r4 = 2131165381(0x7f0700c5, float:1.7944978E38)
            float r4 = r7.getDimension(r4)
            java.lang.Float r28 = java.lang.Float.valueOf(r4)
            r22 = r6
            c.c.a.d.a.b.a(r22, r23, r24, r25, r26, r27, r28)
            androidx.appcompat.widget.AppCompatTextView r4 = r1.B
            b.l.a.f.a((android.widget.TextView) r4, (java.lang.CharSequence) r8)
            android.widget.TextView r4 = r1.F
            b.l.a.f.a((android.widget.TextView) r4, (java.lang.CharSequence) r0)
            android.widget.TextView r0 = r1.G
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r9)
            android.widget.TextView r0 = r1.G
            c.c.a.d.a.b.a((android.view.View) r0, r10)
            androidx.appcompat.widget.AppCompatTextView r0 = r1.H
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r11)
            android.widget.TextView r0 = r1.I
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r12)
            androidx.appcompat.widget.AppCompatImageView r0 = r1.K
            r4 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r8 = r13
            r13 = r0
            r10 = r15
            r15 = r4
            c.c.a.d.a.b.a(r13, r14, r15, r16, r17, r18, r19)
            androidx.appcompat.widget.AppCompatTextView r0 = r1.L
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r10)
            android.widget.TextView r0 = r1.M
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r8)
            android.widget.TextView r0 = r1.N
            r8 = r29
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r8)
            android.widget.TextView r0 = r1.P
            r4 = r30
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r4)
            androidx.constraintlayout.widget.Group r0 = r1.xa
            c.c.a.d.a.b.a((android.view.View) r0, r8)
            androidx.constraintlayout.widget.Group r0 = r1.ya
            r8 = r31
            c.c.a.d.a.b.a((android.view.View) r0, r8)
            androidx.constraintlayout.widget.Group r0 = r1.za
            r8 = r32
            c.c.a.d.a.b.a((android.view.View) r0, r8)
            androidx.constraintlayout.widget.Group r0 = r1.Aa
            c.c.a.d.a.b.a((android.view.View) r0, r11)
            androidx.constraintlayout.widget.Group r0 = r1.Ba
            c.c.a.d.a.b.a((android.view.View) r0, r10)
            android.widget.TextView r0 = r1.V
            r15 = r33
            b.l.a.f.a((android.widget.TextView) r0, (java.lang.CharSequence) r15)
        L_0x0130:
            r4 = 4
            long r2 = r2 & r4
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x0163
            com.farsitel.bazaar.widget.RTLImageView r0 = r1.J
            android.view.View$OnClickListener r2 = r1.Ia
            r0.setOnClickListener(r2)
            androidx.appcompat.widget.AppCompatImageView r0 = r1.K
            android.view.View$OnClickListener r2 = r1.Ea
            r0.setOnClickListener(r2)
            android.view.View r0 = r1.Ca
            android.view.View$OnClickListener r2 = r1.Fa
            r0.setOnClickListener(r2)
            com.farsitel.bazaar.widget.RTLImageView r0 = r1.T
            android.view.View$OnClickListener r2 = r1.Ha
            r0.setOnClickListener(r2)
            android.view.View r0 = r1.ja
            android.view.View$OnClickListener r2 = r1.Ga
            r0.setOnClickListener(r2)
            android.view.View r0 = r1.qa
            android.view.View$OnClickListener r2 = r1.Da
            r0.setOnClickListener(r2)
        L_0x0163:
            return
        L_0x0164:
            r0 = move-exception
            monitor-exit(r34)     // Catch:{ all -> 0x0164 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.f.C0439l.e():void");
    }

    public boolean i() {
        synchronized (this) {
            if (this.Ja != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Ja = 4;
        }
        k();
    }

    public C0439l(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[3], objArr[29], objArr[26], objArr[44], objArr[5], objArr[9], objArr[15], objArr[7], objArr[13], objArr[17], objArr[16], objArr[8], objArr[11], objArr[50], objArr[10], objArr[47], objArr[48], objArr[31], objArr[1], objArr[28], objArr[4], objArr[43], objArr[27], objArr[30], objArr[42], objArr[45], objArr[32], objArr[38], objArr[36], objArr[34], objArr[40], objArr[25], objArr[24], objArr[49], objArr[14], objArr[46], objArr[33], objArr[23], objArr[39], objArr[37], objArr[35], objArr[12], objArr[41]);
        this.Ja = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.L.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.P.setTag(null);
        this.wa = objArr[0];
        this.wa.setTag(null);
        this.xa = objArr[18];
        this.xa.setTag(null);
        this.ya = objArr[19];
        this.ya.setTag(null);
        this.za = objArr[20];
        this.za.setTag(null);
        this.Aa = objArr[21];
        this.Aa.setTag(null);
        this.Ba = objArr[22];
        this.Ba.setTag(null);
        this.Ca = objArr[6];
        this.Ca.setTag(null);
        this.T.setTag(null);
        this.V.setTag(null);
        this.ja.setTag(null);
        this.qa.setTag(null);
        b(view);
        this.Da = new a(this, 3);
        this.Ea = new a(this, 6);
        this.Fa = new a(this, 2);
        this.Ga = new a(this, 5);
        this.Ha = new a(this, 1);
        this.Ia = new a(this, 4);
        l();
    }

    public void a(AppMoreDescriptionItem appMoreDescriptionItem) {
        this.ta = appMoreDescriptionItem;
        synchronized (this) {
            this.Ja |= 1;
        }
        a(4);
        super.k();
    }

    public void a(G g2) {
        this.sa = g2;
        synchronized (this) {
            this.Ja |= 2;
        }
        a(37);
        super.k();
    }
}
