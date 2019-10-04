package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import b.b.a.C0190a;
import b.b.f.a.A;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.t;
import b.b.f.g;
import b.b.g.Da;
import b.b.g.G;
import b.b.g.T;
import b.b.g.pa;
import b.b.g.wa;
import b.b.j;
import b.i.k.C0260c;
import b.i.k.C0263f;
import b.i.k.z;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList<View> D;
    public final ArrayList<View> E;
    public final int[] F;
    public c G;
    public final ActionMenuView.e H;
    public wa I;
    public ActionMenuPresenter J;
    public a K;
    public t.a L;
    public k.a M;
    public boolean N;
    public final Runnable O;

    /* renamed from: a  reason: collision with root package name */
    public ActionMenuView f453a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f454b;

    /* renamed from: c  reason: collision with root package name */
    public TextView f455c;

    /* renamed from: d  reason: collision with root package name */
    public ImageButton f456d;

    /* renamed from: e  reason: collision with root package name */
    public ImageView f457e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f458f;

    /* renamed from: g  reason: collision with root package name */
    public CharSequence f459g;

    /* renamed from: h  reason: collision with root package name */
    public ImageButton f460h;

    /* renamed from: i  reason: collision with root package name */
    public View f461i;

    /* renamed from: j  reason: collision with root package name */
    public Context f462j;

    /* renamed from: k  reason: collision with root package name */
    public int f463k;

    /* renamed from: l  reason: collision with root package name */
    public int f464l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public T t;
    public int u;
    public int v;
    public int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new ta();

        /* renamed from: c  reason: collision with root package name */
        public int f465c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f466d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f465c = parcel.readInt();
            this.f466d = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f465c);
            parcel.writeInt(this.f466d ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private class a implements t {

        /* renamed from: a  reason: collision with root package name */
        public k f467a;

        /* renamed from: b  reason: collision with root package name */
        public o f468b;

        public a() {
        }

        public void a(Context context, k kVar) {
            k kVar2 = this.f467a;
            if (kVar2 != null) {
                o oVar = this.f468b;
                if (oVar != null) {
                    kVar2.a(oVar);
                }
            }
            this.f467a = kVar;
        }

        public void a(Parcelable parcelable) {
        }

        public void a(k kVar, boolean z) {
        }

        public boolean a() {
            return false;
        }

        public boolean a(A a2) {
            return false;
        }

        public Parcelable b() {
            return null;
        }

        public boolean b(k kVar, o oVar) {
            Toolbar.this.e();
            ViewParent parent = Toolbar.this.f460h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f460h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f460h);
            }
            Toolbar.this.f461i = oVar.getActionView();
            this.f468b = oVar;
            ViewParent parent2 = Toolbar.this.f461i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f461i);
                }
                b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f1730a = 8388611 | (toolbar4.n & 112);
                generateDefaultLayoutParams.f470b = 2;
                toolbar4.f461i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f461i);
            }
            Toolbar.this.p();
            Toolbar.this.requestLayout();
            oVar.a(true);
            View view = Toolbar.this.f461i;
            if (view instanceof b.b.f.c) {
                ((b.b.f.c) view).onActionViewExpanded();
            }
            return true;
        }

        public int getId() {
            return 0;
        }

        public void a(boolean z) {
            if (this.f468b != null) {
                k kVar = this.f467a;
                boolean z2 = false;
                if (kVar != null) {
                    int size = kVar.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        } else if (this.f467a.getItem(i2) == this.f468b) {
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (!z2) {
                    a(this.f467a, this.f468b);
                }
            }
        }

        public boolean a(k kVar, o oVar) {
            View view = Toolbar.this.f461i;
            if (view instanceof b.b.f.c) {
                ((b.b.f.c) view).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f461i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f460h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f461i = null;
            toolbar3.a();
            this.f468b = null;
            Toolbar.this.requestLayout();
            oVar.a(false);
            return true;
        }
    }

    public static class b extends C0190a.C0020a {

        /* renamed from: b  reason: collision with root package name */
        public int f470b = 0;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }

        public b(int i2, int i3) {
            super(i2, i3);
            this.f1730a = 8388627;
        }

        public b(b bVar) {
            super((C0190a.C0020a) bVar);
            this.f470b = bVar.f470b;
        }

        public b(C0190a.C0020a aVar) {
            super(aVar);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super((ViewGroup.LayoutParams) marginLayoutParams);
            a(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface c {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        return new g(getContext());
    }

    public void a(k kVar, ActionMenuPresenter actionMenuPresenter) {
        if (kVar != null || this.f453a != null) {
            i();
            k h2 = this.f453a.h();
            if (h2 != kVar) {
                if (h2 != null) {
                    h2.b((t) this.J);
                    h2.b((t) this.K);
                }
                if (this.K == null) {
                    this.K = new a();
                }
                actionMenuPresenter.b(true);
                if (kVar != null) {
                    kVar.a((t) actionMenuPresenter, this.f462j);
                    kVar.a((t) this.K, this.f462j);
                } else {
                    actionMenuPresenter.a(this.f462j, (k) null);
                    this.K.a(this.f462j, (k) null);
                    actionMenuPresenter.a(true);
                    this.K.a(true);
                }
                this.f453a.setPopupTheme(this.f463k);
                this.f453a.setPresenter(actionMenuPresenter);
                this.J = actionMenuPresenter;
            }
        }
    }

    public boolean b() {
        if (getVisibility() == 0) {
            ActionMenuView actionMenuView = this.f453a;
            if (actionMenuView != null && actionMenuView.g()) {
                return true;
            }
        }
        return false;
    }

    public void c() {
        a aVar = this.K;
        o oVar = aVar == null ? null : aVar.f468b;
        if (oVar != null) {
            oVar.collapseActionView();
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    public void d() {
        ActionMenuView actionMenuView = this.f453a;
        if (actionMenuView != null) {
            actionMenuView.b();
        }
    }

    public void e() {
        if (this.f460h == null) {
            this.f460h = new AppCompatImageButton(getContext(), null, b.b.a.toolbarNavigationButtonStyle);
            this.f460h.setImageDrawable(this.f458f);
            this.f460h.setContentDescription(this.f459g);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f1730a = 8388611 | (this.n & 112);
            generateDefaultLayoutParams.f470b = 2;
            this.f460h.setLayoutParams(generateDefaultLayoutParams);
            this.f460h.setOnClickListener(new sa(this));
        }
    }

    public final void f() {
        if (this.t == null) {
            this.t = new T();
        }
    }

    public final void g() {
        if (this.f457e == null) {
            this.f457e = new AppCompatImageView(getContext());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f460h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f460h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        T t2 = this.t;
        if (t2 != null) {
            return t2.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        T t2 = this.t;
        if (t2 != null) {
            return t2.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        T t2 = this.t;
        if (t2 != null) {
            return t2.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        T t2 = this.t;
        if (t2 != null) {
            return t2.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.u;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getCurrentContentInsetEnd() {
        /*
            r3 = this;
            androidx.appcompat.widget.ActionMenuView r0 = r3.f453a
            r1 = 0
            if (r0 == 0) goto L_0x0013
            b.b.f.a.k r0 = r0.h()
            if (r0 == 0) goto L_0x0013
            boolean r0 = r0.hasVisibleItems()
            if (r0 == 0) goto L_0x0013
            r0 = 1
            goto L_0x0014
        L_0x0013:
            r0 = 0
        L_0x0014:
            if (r0 == 0) goto L_0x0025
            int r0 = r3.getContentInsetEnd()
            int r2 = r3.v
            int r1 = java.lang.Math.max(r2, r1)
            int r0 = java.lang.Math.max(r0, r1)
            goto L_0x0029
        L_0x0025:
            int r0 = r3.getContentInsetEnd()
        L_0x0029:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.getCurrentContentInsetEnd():int");
    }

    public int getCurrentContentInsetLeft() {
        if (z.m(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (z.m(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.u, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f457e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f457e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        h();
        return this.f453a.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f456d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f456d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.J;
    }

    public Drawable getOverflowIcon() {
        h();
        return this.f453a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f462j;
    }

    public int getPopupTheme() {
        return this.f463k;
    }

    public CharSequence getSubtitle() {
        return this.y;
    }

    public final TextView getSubtitleTextView() {
        return this.f455c;
    }

    public CharSequence getTitle() {
        return this.x;
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public final TextView getTitleTextView() {
        return this.f454b;
    }

    public G getWrapper() {
        if (this.I == null) {
            this.I = new wa(this, true);
        }
        return this.I;
    }

    public final void h() {
        i();
        if (this.f453a.h() == null) {
            k kVar = (k) this.f453a.getMenu();
            if (this.K == null) {
                this.K = new a();
            }
            this.f453a.setExpandedActionViewsExclusive(true);
            kVar.a((t) this.K, this.f462j);
        }
    }

    public final void i() {
        if (this.f453a == null) {
            this.f453a = new ActionMenuView(getContext());
            this.f453a.setPopupTheme(this.f463k);
            this.f453a.setOnMenuItemClickListener(this.H);
            this.f453a.a(this.L, this.M);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f1730a = 8388613 | (this.n & 112);
            this.f453a.setLayoutParams(generateDefaultLayoutParams);
            a((View) this.f453a, false);
        }
    }

    public final void j() {
        if (this.f456d == null) {
            this.f456d = new AppCompatImageButton(getContext(), null, b.b.a.toolbarNavigationButtonStyle);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f1730a = 8388611 | (this.n & 112);
            this.f456d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    public boolean k() {
        a aVar = this.K;
        return (aVar == null || aVar.f468b == null) ? false : true;
    }

    public boolean l() {
        ActionMenuView actionMenuView = this.f453a;
        return actionMenuView != null && actionMenuView.d();
    }

    public boolean m() {
        ActionMenuView actionMenuView = this.f453a;
        return actionMenuView != null && actionMenuView.e();
    }

    public boolean n() {
        ActionMenuView actionMenuView = this.f453a;
        return actionMenuView != null && actionMenuView.f();
    }

    public final void o() {
        removeCallbacks(this.O);
        post(this.O);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.O);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x02a6 A[LOOP:0: B:101:0x02a4->B:102:0x02a6, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x02c8 A[LOOP:1: B:104:0x02c6->B:105:0x02c8, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x02f3  */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x0302 A[LOOP:2: B:112:0x0300->B:113:0x0302, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0130  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0134  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0137  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x016a  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x01a8  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01b9  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x022c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            r19 = this;
            r0 = r19
            int r1 = b.i.k.z.m(r19)
            r2 = 1
            r3 = 0
            if (r1 != r2) goto L_0x000c
            r1 = 1
            goto L_0x000d
        L_0x000c:
            r1 = 0
        L_0x000d:
            int r4 = r19.getWidth()
            int r5 = r19.getHeight()
            int r6 = r19.getPaddingLeft()
            int r7 = r19.getPaddingRight()
            int r8 = r19.getPaddingTop()
            int r9 = r19.getPaddingBottom()
            int r10 = r4 - r7
            int[] r11 = r0.F
            r11[r2] = r3
            r11[r3] = r3
            int r12 = b.i.k.z.n(r19)
            if (r12 < 0) goto L_0x003a
            int r13 = r24 - r22
            int r12 = java.lang.Math.min(r12, r13)
            goto L_0x003b
        L_0x003a:
            r12 = 0
        L_0x003b:
            android.widget.ImageButton r13 = r0.f456d
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x0055
            if (r1 == 0) goto L_0x004e
            android.widget.ImageButton r13 = r0.f456d
            int r13 = r0.b(r13, r10, r11, r12)
            r14 = r13
            r13 = r6
            goto L_0x0057
        L_0x004e:
            android.widget.ImageButton r13 = r0.f456d
            int r13 = r0.a(r13, r6, r11, r12)
            goto L_0x0056
        L_0x0055:
            r13 = r6
        L_0x0056:
            r14 = r10
        L_0x0057:
            android.widget.ImageButton r15 = r0.f460h
            boolean r15 = r0.d(r15)
            if (r15 == 0) goto L_0x006e
            if (r1 == 0) goto L_0x0068
            android.widget.ImageButton r15 = r0.f460h
            int r14 = r0.b(r15, r14, r11, r12)
            goto L_0x006e
        L_0x0068:
            android.widget.ImageButton r15 = r0.f460h
            int r13 = r0.a(r15, r13, r11, r12)
        L_0x006e:
            androidx.appcompat.widget.ActionMenuView r15 = r0.f453a
            boolean r15 = r0.d(r15)
            if (r15 == 0) goto L_0x0085
            if (r1 == 0) goto L_0x007f
            androidx.appcompat.widget.ActionMenuView r15 = r0.f453a
            int r13 = r0.a(r15, r13, r11, r12)
            goto L_0x0085
        L_0x007f:
            androidx.appcompat.widget.ActionMenuView r15 = r0.f453a
            int r14 = r0.b(r15, r14, r11, r12)
        L_0x0085:
            int r15 = r19.getCurrentContentInsetLeft()
            int r16 = r19.getCurrentContentInsetRight()
            int r2 = r15 - r13
            int r2 = java.lang.Math.max(r3, r2)
            r11[r3] = r2
            int r2 = r10 - r14
            int r2 = r16 - r2
            int r2 = java.lang.Math.max(r3, r2)
            r17 = 1
            r11[r17] = r2
            int r2 = java.lang.Math.max(r13, r15)
            int r10 = r10 - r16
            int r10 = java.lang.Math.min(r14, r10)
            android.view.View r13 = r0.f461i
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x00c2
            if (r1 == 0) goto L_0x00bc
            android.view.View r13 = r0.f461i
            int r10 = r0.b(r13, r10, r11, r12)
            goto L_0x00c2
        L_0x00bc:
            android.view.View r13 = r0.f461i
            int r2 = r0.a(r13, r2, r11, r12)
        L_0x00c2:
            android.widget.ImageView r13 = r0.f457e
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x00d9
            if (r1 == 0) goto L_0x00d3
            android.widget.ImageView r13 = r0.f457e
            int r10 = r0.b(r13, r10, r11, r12)
            goto L_0x00d9
        L_0x00d3:
            android.widget.ImageView r13 = r0.f457e
            int r2 = r0.a(r13, r2, r11, r12)
        L_0x00d9:
            android.widget.TextView r13 = r0.f454b
            boolean r13 = r0.d(r13)
            android.widget.TextView r14 = r0.f455c
            boolean r14 = r0.d(r14)
            if (r13 == 0) goto L_0x0100
            android.widget.TextView r15 = r0.f454b
            android.view.ViewGroup$LayoutParams r15 = r15.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r15 = (androidx.appcompat.widget.Toolbar.b) r15
            int r3 = r15.topMargin
            r23 = r7
            android.widget.TextView r7 = r0.f454b
            int r7 = r7.getMeasuredHeight()
            int r3 = r3 + r7
            int r7 = r15.bottomMargin
            int r3 = r3 + r7
            r7 = 0
            int r3 = r3 + r7
            goto L_0x0103
        L_0x0100:
            r23 = r7
            r3 = 0
        L_0x0103:
            if (r14 == 0) goto L_0x011d
            android.widget.TextView r7 = r0.f455c
            android.view.ViewGroup$LayoutParams r7 = r7.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r7 = (androidx.appcompat.widget.Toolbar.b) r7
            int r15 = r7.topMargin
            r16 = r4
            android.widget.TextView r4 = r0.f455c
            int r4 = r4.getMeasuredHeight()
            int r15 = r15 + r4
            int r4 = r7.bottomMargin
            int r15 = r15 + r4
            int r3 = r3 + r15
            goto L_0x011f
        L_0x011d:
            r16 = r4
        L_0x011f:
            if (r13 != 0) goto L_0x012b
            if (r14 == 0) goto L_0x0124
            goto L_0x012b
        L_0x0124:
            r17 = r6
            r22 = r12
        L_0x0128:
            r7 = 0
            goto L_0x0296
        L_0x012b:
            if (r13 == 0) goto L_0x0130
            android.widget.TextView r4 = r0.f454b
            goto L_0x0132
        L_0x0130:
            android.widget.TextView r4 = r0.f455c
        L_0x0132:
            if (r14 == 0) goto L_0x0137
            android.widget.TextView r7 = r0.f455c
            goto L_0x0139
        L_0x0137:
            android.widget.TextView r7 = r0.f454b
        L_0x0139:
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r4 = (androidx.appcompat.widget.Toolbar.b) r4
            android.view.ViewGroup$LayoutParams r7 = r7.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r7 = (androidx.appcompat.widget.Toolbar.b) r7
            if (r13 == 0) goto L_0x014f
            android.widget.TextView r15 = r0.f454b
            int r15 = r15.getMeasuredWidth()
            if (r15 > 0) goto L_0x0159
        L_0x014f:
            if (r14 == 0) goto L_0x015d
            android.widget.TextView r15 = r0.f455c
            int r15 = r15.getMeasuredWidth()
            if (r15 <= 0) goto L_0x015d
        L_0x0159:
            r17 = r6
            r15 = 1
            goto L_0x0160
        L_0x015d:
            r17 = r6
            r15 = 0
        L_0x0160:
            int r6 = r0.w
            r6 = r6 & 112(0x70, float:1.57E-43)
            r22 = r12
            r12 = 48
            if (r6 == r12) goto L_0x01a8
            r12 = 80
            if (r6 == r12) goto L_0x019a
            int r6 = r5 - r8
            int r6 = r6 - r9
            int r6 = r6 - r3
            int r6 = r6 / 2
            int r12 = r4.topMargin
            r24 = r2
            int r2 = r0.r
            r18 = r14
            int r14 = r12 + r2
            if (r6 >= r14) goto L_0x0183
            int r6 = r12 + r2
            goto L_0x0198
        L_0x0183:
            int r5 = r5 - r9
            int r5 = r5 - r3
            int r5 = r5 - r6
            int r5 = r5 - r8
            int r2 = r4.bottomMargin
            int r3 = r0.s
            int r2 = r2 + r3
            if (r5 >= r2) goto L_0x0198
            int r2 = r7.bottomMargin
            int r2 = r2 + r3
            int r2 = r2 - r5
            int r6 = r6 - r2
            r2 = 0
            int r6 = java.lang.Math.max(r2, r6)
        L_0x0198:
            int r8 = r8 + r6
            goto L_0x01b7
        L_0x019a:
            r24 = r2
            r18 = r14
            int r5 = r5 - r9
            int r2 = r7.bottomMargin
            int r5 = r5 - r2
            int r2 = r0.s
            int r5 = r5 - r2
            int r8 = r5 - r3
            goto L_0x01b7
        L_0x01a8:
            r24 = r2
            r18 = r14
            int r2 = r19.getPaddingTop()
            int r3 = r4.topMargin
            int r2 = r2 + r3
            int r3 = r0.r
            int r8 = r2 + r3
        L_0x01b7:
            if (r1 == 0) goto L_0x022c
            if (r15 == 0) goto L_0x01bf
            int r3 = r0.p
            r1 = 1
            goto L_0x01c1
        L_0x01bf:
            r1 = 1
            r3 = 0
        L_0x01c1:
            r2 = r11[r1]
            int r3 = r3 - r2
            r2 = 0
            int r4 = java.lang.Math.max(r2, r3)
            int r10 = r10 - r4
            int r3 = -r3
            int r3 = java.lang.Math.max(r2, r3)
            r11[r1] = r3
            if (r13 == 0) goto L_0x01f7
            android.widget.TextView r1 = r0.f454b
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r1 = (androidx.appcompat.widget.Toolbar.b) r1
            android.widget.TextView r2 = r0.f454b
            int r2 = r2.getMeasuredWidth()
            int r2 = r10 - r2
            android.widget.TextView r3 = r0.f454b
            int r3 = r3.getMeasuredHeight()
            int r3 = r3 + r8
            android.widget.TextView r4 = r0.f454b
            r4.layout(r2, r8, r10, r3)
            int r4 = r0.q
            int r2 = r2 - r4
            int r1 = r1.bottomMargin
            int r8 = r3 + r1
            goto L_0x01f8
        L_0x01f7:
            r2 = r10
        L_0x01f8:
            if (r18 == 0) goto L_0x0220
            android.widget.TextView r1 = r0.f455c
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r1 = (androidx.appcompat.widget.Toolbar.b) r1
            int r3 = r1.topMargin
            int r8 = r8 + r3
            android.widget.TextView r3 = r0.f455c
            int r3 = r3.getMeasuredWidth()
            int r3 = r10 - r3
            android.widget.TextView r4 = r0.f455c
            int r4 = r4.getMeasuredHeight()
            int r4 = r4 + r8
            android.widget.TextView r5 = r0.f455c
            r5.layout(r3, r8, r10, r4)
            int r3 = r0.q
            int r3 = r10 - r3
            int r1 = r1.bottomMargin
            goto L_0x0221
        L_0x0220:
            r3 = r10
        L_0x0221:
            if (r15 == 0) goto L_0x0228
            int r1 = java.lang.Math.min(r2, r3)
            r10 = r1
        L_0x0228:
            r2 = r24
            goto L_0x0128
        L_0x022c:
            if (r15 == 0) goto L_0x0231
            int r3 = r0.p
            goto L_0x0232
        L_0x0231:
            r3 = 0
        L_0x0232:
            r7 = 0
            r1 = r11[r7]
            int r3 = r3 - r1
            int r1 = java.lang.Math.max(r7, r3)
            int r2 = r24 + r1
            int r1 = -r3
            int r1 = java.lang.Math.max(r7, r1)
            r11[r7] = r1
            if (r13 == 0) goto L_0x0268
            android.widget.TextView r1 = r0.f454b
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r1 = (androidx.appcompat.widget.Toolbar.b) r1
            android.widget.TextView r3 = r0.f454b
            int r3 = r3.getMeasuredWidth()
            int r3 = r3 + r2
            android.widget.TextView r4 = r0.f454b
            int r4 = r4.getMeasuredHeight()
            int r4 = r4 + r8
            android.widget.TextView r5 = r0.f454b
            r5.layout(r2, r8, r3, r4)
            int r5 = r0.q
            int r3 = r3 + r5
            int r1 = r1.bottomMargin
            int r8 = r4 + r1
            goto L_0x0269
        L_0x0268:
            r3 = r2
        L_0x0269:
            if (r18 == 0) goto L_0x028f
            android.widget.TextView r1 = r0.f455c
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$b r1 = (androidx.appcompat.widget.Toolbar.b) r1
            int r4 = r1.topMargin
            int r8 = r8 + r4
            android.widget.TextView r4 = r0.f455c
            int r4 = r4.getMeasuredWidth()
            int r4 = r4 + r2
            android.widget.TextView r5 = r0.f455c
            int r5 = r5.getMeasuredHeight()
            int r5 = r5 + r8
            android.widget.TextView r6 = r0.f455c
            r6.layout(r2, r8, r4, r5)
            int r5 = r0.q
            int r4 = r4 + r5
            int r1 = r1.bottomMargin
            goto L_0x0290
        L_0x028f:
            r4 = r2
        L_0x0290:
            if (r15 == 0) goto L_0x0296
            int r2 = java.lang.Math.max(r3, r4)
        L_0x0296:
            java.util.ArrayList<android.view.View> r1 = r0.D
            r3 = 3
            r0.a((java.util.List<android.view.View>) r1, (int) r3)
            java.util.ArrayList<android.view.View> r1 = r0.D
            int r1 = r1.size()
            r3 = r2
            r2 = 0
        L_0x02a4:
            if (r2 >= r1) goto L_0x02b7
            java.util.ArrayList<android.view.View> r4 = r0.D
            java.lang.Object r4 = r4.get(r2)
            android.view.View r4 = (android.view.View) r4
            r12 = r22
            int r3 = r0.a(r4, r3, r11, r12)
            int r2 = r2 + 1
            goto L_0x02a4
        L_0x02b7:
            r12 = r22
            java.util.ArrayList<android.view.View> r1 = r0.D
            r2 = 5
            r0.a((java.util.List<android.view.View>) r1, (int) r2)
            java.util.ArrayList<android.view.View> r1 = r0.D
            int r1 = r1.size()
            r2 = 0
        L_0x02c6:
            if (r2 >= r1) goto L_0x02d7
            java.util.ArrayList<android.view.View> r4 = r0.D
            java.lang.Object r4 = r4.get(r2)
            android.view.View r4 = (android.view.View) r4
            int r10 = r0.b(r4, r10, r11, r12)
            int r2 = r2 + 1
            goto L_0x02c6
        L_0x02d7:
            java.util.ArrayList<android.view.View> r1 = r0.D
            r2 = 1
            r0.a((java.util.List<android.view.View>) r1, (int) r2)
            java.util.ArrayList<android.view.View> r1 = r0.D
            int r1 = r0.a((java.util.List<android.view.View>) r1, (int[]) r11)
            int r4 = r16 - r17
            int r4 = r4 - r23
            int r4 = r4 / 2
            int r6 = r17 + r4
            int r2 = r1 / 2
            int r2 = r6 - r2
            int r1 = r1 + r2
            if (r2 >= r3) goto L_0x02f3
            goto L_0x02fa
        L_0x02f3:
            if (r1 <= r10) goto L_0x02f9
            int r1 = r1 - r10
            int r3 = r2 - r1
            goto L_0x02fa
        L_0x02f9:
            r3 = r2
        L_0x02fa:
            java.util.ArrayList<android.view.View> r1 = r0.D
            int r1 = r1.size()
        L_0x0300:
            if (r7 >= r1) goto L_0x0311
            java.util.ArrayList<android.view.View> r2 = r0.D
            java.lang.Object r2 = r2.get(r7)
            android.view.View r2 = (android.view.View) r2
            int r3 = r0.a(r2, r3, r11, r12)
            int r7 = r7 + 1
            goto L_0x0300
        L_0x0311:
            java.util.ArrayList<android.view.View> r1 = r0.D
            r1.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    public void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.F;
        if (Da.a(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c3 = 0;
            c2 = 1;
        }
        if (d(this.f456d)) {
            a((View) this.f456d, i2, 0, i3, 0, this.o);
            i6 = this.f456d.getMeasuredWidth() + a((View) this.f456d);
            i5 = Math.max(0, this.f456d.getMeasuredHeight() + b((View) this.f456d));
            i4 = View.combineMeasuredStates(0, this.f456d.getMeasuredState());
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (d(this.f460h)) {
            a((View) this.f460h, i2, 0, i3, 0, this.o);
            i6 = this.f460h.getMeasuredWidth() + a((View) this.f460h);
            i5 = Math.max(i5, this.f460h.getMeasuredHeight() + b((View) this.f460h));
            i4 = View.combineMeasuredStates(i4, this.f460h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i6);
        iArr[c3] = Math.max(0, currentContentInsetStart - i6);
        if (d(this.f453a)) {
            a((View) this.f453a, i2, max, i3, 0, this.o);
            i7 = this.f453a.getMeasuredWidth() + a((View) this.f453a);
            i5 = Math.max(i5, this.f453a.getMeasuredHeight() + b((View) this.f453a));
            i4 = View.combineMeasuredStates(i4, this.f453a.getMeasuredState());
        } else {
            i7 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i7);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i7);
        if (d(this.f461i)) {
            max2 += a(this.f461i, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.f461i.getMeasuredHeight() + b(this.f461i));
            i4 = View.combineMeasuredStates(i4, this.f461i.getMeasuredState());
        }
        if (d(this.f457e)) {
            max2 += a((View) this.f457e, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.f457e.getMeasuredHeight() + b((View) this.f457e));
            i4 = View.combineMeasuredStates(i4, this.f457e.getMeasuredState());
        }
        int childCount = getChildCount();
        int i11 = i5;
        int i12 = max2;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((b) childAt.getLayoutParams()).f470b == 0 && d(childAt)) {
                i12 += a(childAt, i2, i12, i3, 0, iArr);
                i11 = Math.max(i11, childAt.getMeasuredHeight() + b(childAt));
                i4 = View.combineMeasuredStates(i4, childAt.getMeasuredState());
            }
        }
        int i14 = this.r + this.s;
        int i15 = this.p + this.q;
        if (d(this.f454b)) {
            a((View) this.f454b, i2, i12 + i15, i3, i14, iArr);
            int measuredWidth = this.f454b.getMeasuredWidth() + a((View) this.f454b);
            i8 = this.f454b.getMeasuredHeight() + b((View) this.f454b);
            i10 = View.combineMeasuredStates(i4, this.f454b.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i10 = i4;
            i9 = 0;
            i8 = 0;
        }
        if (d(this.f455c)) {
            int i16 = i8 + i14;
            i9 = Math.max(i9, a((View) this.f455c, i2, i12 + i15, i3, i16, iArr));
            i8 += this.f455c.getMeasuredHeight() + b((View) this.f455c);
            i10 = View.combineMeasuredStates(i10, this.f455c.getMeasuredState());
        } else {
            int i17 = i10;
        }
        int max3 = Math.max(i11, i8);
        int paddingLeft = i12 + i9 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, -16777216 & i10);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, i10 << 16);
        if (q()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        ActionMenuView actionMenuView = this.f453a;
        k h2 = actionMenuView != null ? actionMenuView.h() : null;
        int i2 = savedState.f465c;
        if (!(i2 == 0 || this.K == null || h2 == null)) {
            MenuItem findItem = h2.findItem(i2);
            if (findItem != null) {
                findItem.expandActionView();
            }
        }
        if (savedState.f466d) {
            o();
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        f();
        T t2 = this.t;
        boolean z2 = true;
        if (i2 != 1) {
            z2 = false;
        }
        t2.a(z2);
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        a aVar = this.K;
        if (aVar != null) {
            o oVar = aVar.f468b;
            if (oVar != null) {
                savedState.f465c = oVar.getItemId();
            }
        }
        savedState.f466d = n();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public void p() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((b) childAt.getLayoutParams()).f470b == 2 || childAt == this.f453a)) {
                removeViewAt(childCount);
                this.E.add(childAt);
            }
        }
    }

    public final boolean q() {
        if (!this.N) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    public boolean r() {
        ActionMenuView actionMenuView = this.f453a;
        return actionMenuView != null && actionMenuView.i();
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(b.b.b.a.a.c(getContext(), i2));
    }

    public void setCollapsible(boolean z2) {
        this.N = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.v) {
            this.v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.u) {
            this.u = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i2) {
        setLogo(b.b.b.a.a.c(getContext(), i2));
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(b.b.b.a.a.c(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        j();
        this.f456d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(c cVar) {
        this.G = cVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        h();
        this.f453a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.f463k != i2) {
            this.f463k = i2;
            if (i2 == 0) {
                this.f462j = getContext();
            } else {
                this.f462j = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMarginBottom(int i2) {
        this.s = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.p = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.r = i2;
        requestLayout();
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.b.a.toolbarStyle);
    }

    public void b(Context context, int i2) {
        this.f464l = i2;
        TextView textView = this.f454b;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        ImageButton imageButton = this.f460h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            e();
            this.f460h.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f460h;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.f458f);
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!c((View) this.f457e)) {
                a((View) this.f457e, true);
            }
        } else {
            ImageView imageView = this.f457e;
            if (imageView != null && c((View) imageView)) {
                removeView(this.f457e);
                this.E.remove(this.f457e);
            }
        }
        ImageView imageView2 = this.f457e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageView imageView = this.f457e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            j();
        }
        ImageButton imageButton = this.f456d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            j();
            if (!c((View) this.f456d)) {
                a((View) this.f456d, true);
            }
        } else {
            ImageButton imageButton = this.f456d;
            if (imageButton != null && c((View) imageButton)) {
                removeView(this.f456d);
                this.E.remove(this.f456d);
            }
        }
        ImageButton imageButton2 = this.f456d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f455c == null) {
                Context context = getContext();
                this.f455c = new AppCompatTextView(context);
                this.f455c.setSingleLine();
                this.f455c.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.m;
                if (i2 != 0) {
                    this.f455c.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f455c.setTextColor(colorStateList);
                }
            }
            if (!c((View) this.f455c)) {
                a((View) this.f455c, true);
            }
        } else {
            TextView textView = this.f455c;
            if (textView != null && c((View) textView)) {
                removeView(this.f455c);
                this.E.remove(this.f455c);
            }
        }
        TextView textView2 = this.f455c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f455c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f454b == null) {
                Context context = getContext();
                this.f454b = new AppCompatTextView(context);
                this.f454b.setSingleLine();
                this.f454b.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.f464l;
                if (i2 != 0) {
                    this.f454b.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.f454b.setTextColor(colorStateList);
                }
            }
            if (!c((View) this.f454b)) {
                a((View) this.f454b, true);
            }
        } else {
            TextView textView = this.f454b;
            if (textView != null && c((View) textView)) {
                removeView(this.f454b);
                this.E.remove(this.f454b);
            }
        }
        TextView textView2 = this.f454b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.z = colorStateList;
        TextView textView = this.f454b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.w = 8388627;
        this.D = new ArrayList<>();
        this.E = new ArrayList<>();
        this.F = new int[2];
        this.H = new qa(this);
        this.O = new ra(this);
        pa a2 = pa.a(getContext(), attributeSet, j.Toolbar, i2, 0);
        this.f464l = a2.g(j.Toolbar_titleTextAppearance, 0);
        this.m = a2.g(j.Toolbar_subtitleTextAppearance, 0);
        this.w = a2.e(j.Toolbar_android_gravity, this.w);
        this.n = a2.e(j.Toolbar_buttonGravity, 48);
        int b2 = a2.b(j.Toolbar_titleMargin, 0);
        b2 = a2.g(j.Toolbar_titleMargins) ? a2.b(j.Toolbar_titleMargins, b2) : b2;
        this.s = b2;
        this.r = b2;
        this.q = b2;
        this.p = b2;
        int b3 = a2.b(j.Toolbar_titleMarginStart, -1);
        if (b3 >= 0) {
            this.p = b3;
        }
        int b4 = a2.b(j.Toolbar_titleMarginEnd, -1);
        if (b4 >= 0) {
            this.q = b4;
        }
        int b5 = a2.b(j.Toolbar_titleMarginTop, -1);
        if (b5 >= 0) {
            this.r = b5;
        }
        int b6 = a2.b(j.Toolbar_titleMarginBottom, -1);
        if (b6 >= 0) {
            this.s = b6;
        }
        this.o = a2.c(j.Toolbar_maxButtonHeight, -1);
        int b7 = a2.b(j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int b8 = a2.b(j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int c2 = a2.c(j.Toolbar_contentInsetLeft, 0);
        int c3 = a2.c(j.Toolbar_contentInsetRight, 0);
        f();
        this.t.a(c2, c3);
        if (!(b7 == Integer.MIN_VALUE && b8 == Integer.MIN_VALUE)) {
            this.t.b(b7, b8);
        }
        this.u = a2.b(j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.v = a2.b(j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f458f = a2.b(j.Toolbar_collapseIcon);
        this.f459g = a2.e(j.Toolbar_collapseContentDescription);
        CharSequence e2 = a2.e(j.Toolbar_title);
        if (!TextUtils.isEmpty(e2)) {
            setTitle(e2);
        }
        CharSequence e3 = a2.e(j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(e3)) {
            setSubtitle(e3);
        }
        this.f462j = getContext();
        setPopupTheme(a2.g(j.Toolbar_popupTheme, 0));
        Drawable b9 = a2.b(j.Toolbar_navigationIcon);
        if (b9 != null) {
            setNavigationIcon(b9);
        }
        CharSequence e4 = a2.e(j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(e4)) {
            setNavigationContentDescription(e4);
        }
        Drawable b10 = a2.b(j.Toolbar_logo);
        if (b10 != null) {
            setLogo(b10);
        }
        CharSequence e5 = a2.e(j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(e5)) {
            setLogoDescription(e5);
        }
        if (a2.g(j.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.a(j.Toolbar_titleTextColor));
        }
        if (a2.g(j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.a(j.Toolbar_subtitleTextColor));
        }
        if (a2.g(j.Toolbar_menu)) {
            c(a2.g(j.Toolbar_menu, 0));
        }
        a2.a();
    }

    public void c(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public final boolean d(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public final boolean c(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof b) {
            return new b((b) layoutParams);
        }
        if (layoutParams instanceof C0190a.C0020a) {
            return new b((C0190a.C0020a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public final int b(View view, int i2, int[] iArr, int i3) {
        b bVar = (b) view.getLayoutParams();
        int i4 = bVar.rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + bVar.leftMargin);
    }

    public final int b(int i2) {
        int i3 = i2 & 112;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.w & 112;
    }

    public final int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public void a(Context context, int i2) {
        this.m = i2;
        TextView textView = this.f455c;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void a(int i2, int i3) {
        f();
        this.t.b(i2, i3);
    }

    public final void a(View view, boolean z2) {
        b bVar;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            bVar = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            bVar = generateLayoutParams(layoutParams);
        } else {
            bVar = (b) layoutParams;
        }
        bVar.f470b = 1;
        if (!z2 || this.f461i == null) {
            addView(view, bVar);
            return;
        }
        view.setLayoutParams(bVar);
        this.E.add(view);
    }

    public final void a(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final int a(List<View> list, int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int size = list.size();
        int i4 = i3;
        int i5 = i2;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            View view = list.get(i6);
            b bVar = (b) view.getLayoutParams();
            int i8 = bVar.leftMargin - i5;
            int i9 = bVar.rightMargin - i4;
            int max = Math.max(0, i8);
            int max2 = Math.max(0, i9);
            int max3 = Math.max(0, -i8);
            int max4 = Math.max(0, -i9);
            i7 += max + view.getMeasuredWidth() + max2;
            i6++;
            i4 = max4;
            i5 = max3;
        }
        return i7;
    }

    public final int a(View view, int i2, int[] iArr, int i3) {
        b bVar = (b) view.getLayoutParams();
        int i4 = bVar.leftMargin - iArr[0];
        int max = i2 + Math.max(0, i4);
        iArr[0] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + bVar.rightMargin;
    }

    public final int a(View view, int i2) {
        b bVar = (b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int b2 = b(bVar.f1730a);
        if (b2 == 48) {
            return getPaddingTop() - i3;
        }
        if (b2 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - bVar.bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = bVar.topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = bVar.bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    public final void a(List<View> list, int i2) {
        boolean z2 = z.m(this) == 1;
        int childCount = getChildCount();
        int a2 = C0260c.a(i2, z.m(this));
        list.clear();
        if (z2) {
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt = getChildAt(i3);
                b bVar = (b) childAt.getLayoutParams();
                if (bVar.f470b == 0 && d(childAt) && a(bVar.f1730a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            b bVar2 = (b) childAt2.getLayoutParams();
            if (bVar2.f470b == 0 && d(childAt2) && a(bVar2.f1730a) == a2) {
                list.add(childAt2);
            }
        }
    }

    public final int a(int i2) {
        int m2 = z.m(this);
        int a2 = C0260c.a(i2, m2) & 7;
        if (a2 != 1) {
            int i3 = 3;
            if (!(a2 == 3 || a2 == 5)) {
                if (m2 == 1) {
                    i3 = 5;
                }
                return i3;
            }
        }
        return a2;
    }

    public final int a(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0263f.b(marginLayoutParams) + C0263f.a(marginLayoutParams);
    }

    public void a() {
        for (int size = this.E.size() - 1; size >= 0; size--) {
            addView(this.E.get(size));
        }
        this.E.clear();
    }

    public void a(t.a aVar, k.a aVar2) {
        this.L = aVar;
        this.M = aVar2;
        ActionMenuView actionMenuView = this.f453a;
        if (actionMenuView != null) {
            actionMenuView.a(aVar, aVar2);
        }
    }
}
