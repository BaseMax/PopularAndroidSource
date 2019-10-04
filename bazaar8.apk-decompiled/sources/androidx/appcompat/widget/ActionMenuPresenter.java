package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import b.b.f.a.A;
import b.b.f.a.C0204b;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.s;
import b.b.f.a.t;
import b.b.f.a.u;
import b.b.f.a.w;
import b.b.g;
import b.b.g.xa;
import b.i.k.C0259b;
import java.util.ArrayList;

public class ActionMenuPresenter extends C0204b implements C0259b.a {
    public c A;
    public b B;
    public final f C = new f();
    public int D;

    /* renamed from: k  reason: collision with root package name */
    public d f345k;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f346l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public int w;
    public final SparseBooleanArray x = new SparseBooleanArray();
    public e y;
    public a z;

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0217h();

        /* renamed from: a  reason: collision with root package name */
        public int f347a;

        public SavedState() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f347a);
        }

        public SavedState(Parcel parcel) {
            this.f347a = parcel.readInt();
        }
    }

    private class a extends s {
        public a(Context context, A a2, View view) {
            super(context, a2, view, false, b.b.a.actionOverflowMenuStyle);
            if (!((o) a2.getItem()).h()) {
                a(ActionMenuPresenter.this.f345k == null ? (View) ActionMenuPresenter.this.f1834i : ActionMenuPresenter.this.f345k);
            }
            a((t.a) ActionMenuPresenter.this.C);
        }

        public void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.z = null;
            actionMenuPresenter.D = 0;
            super.e();
        }
    }

    private class b extends ActionMenuItemView.b {
        public b() {
        }

        public w a() {
            a aVar = ActionMenuPresenter.this.z;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    private class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public e f349a;

        public c(e eVar) {
            this.f349a = eVar;
        }

        public void run() {
            if (ActionMenuPresenter.this.f1828c != null) {
                ActionMenuPresenter.this.f1828c.a();
            }
            View view = (View) ActionMenuPresenter.this.f1834i;
            if (!(view == null || view.getWindowToken() == null || !this.f349a.g())) {
                ActionMenuPresenter.this.y = this.f349a;
            }
            ActionMenuPresenter.this.A = null;
        }
    }

    private class d extends AppCompatImageView implements ActionMenuView.a {

        /* renamed from: c  reason: collision with root package name */
        public final float[] f351c = new float[2];

        public d(Context context) {
            super(context, null, b.b.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            xa.a(this, getContentDescription());
            setOnTouchListener(new C0216g(this, this, ActionMenuPresenter.this));
        }

        public boolean b() {
            return false;
        }

        public boolean c() {
            return false;
        }

        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.j();
            return true;
        }

        public boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                b.i.c.a.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    private class e extends s {
        public e(Context context, k kVar, View view, boolean z) {
            super(context, kVar, view, z, b.b.a.actionOverflowMenuStyle);
            a(8388613);
            a((t.a) ActionMenuPresenter.this.C);
        }

        public void e() {
            if (ActionMenuPresenter.this.f1828c != null) {
                ActionMenuPresenter.this.f1828c.close();
            }
            ActionMenuPresenter.this.y = null;
            super.e();
        }
    }

    private class f implements t.a {
        public f() {
        }

        public boolean a(k kVar) {
            boolean z = false;
            if (kVar == null) {
                return false;
            }
            ActionMenuPresenter.this.D = ((A) kVar).getItem().getItemId();
            t.a c2 = ActionMenuPresenter.this.c();
            if (c2 != null) {
                z = c2.a(kVar);
            }
            return z;
        }

        public void a(k kVar, boolean z) {
            if (kVar instanceof A) {
                kVar.m().a(false);
            }
            t.a c2 = ActionMenuPresenter.this.c();
            if (c2 != null) {
                c2.a(kVar, z);
            }
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, g.abc_action_menu_layout, g.abc_action_menu_item_layout);
    }

    public boolean g() {
        a aVar = this.z;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    public boolean h() {
        return this.A != null || i();
    }

    public boolean i() {
        e eVar = this.y;
        return eVar != null && eVar.d();
    }

    public boolean j() {
        if (this.n && !i()) {
            k kVar = this.f1828c;
            if (kVar != null && this.f1834i != null && this.A == null && !kVar.j().isEmpty()) {
                e eVar = new e(this.f1827b, this.f1828c, this.f345k, true);
                this.A = new c(eVar);
                ((View) this.f1834i).post(this.A);
                super.a((A) null);
                return true;
            }
        }
        return false;
    }

    public void a(Context context, k kVar) {
        super.a(context, kVar);
        Resources resources = context.getResources();
        b.b.f.a a2 = b.b.f.a.a(context);
        if (!this.o) {
            this.n = a2.g();
        }
        if (!this.u) {
            this.p = a2.b();
        }
        if (!this.s) {
            this.r = a2.c();
        }
        int i2 = this.p;
        if (this.n) {
            if (this.f345k == null) {
                this.f345k = new d(this.f1826a);
                if (this.m) {
                    this.f345k.setImageDrawable(this.f346l);
                    this.f346l = null;
                    this.m = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f345k.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.f345k.getMeasuredWidth();
        } else {
            this.f345k = null;
        }
        this.q = i2;
        this.w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public void b(boolean z2) {
        this.v = z2;
    }

    public void c(boolean z2) {
        this.n = z2;
        this.o = true;
    }

    public boolean d() {
        return f() | g();
    }

    public Drawable e() {
        d dVar = this.f345k;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.m) {
            return this.f346l;
        }
        return null;
    }

    public boolean f() {
        c cVar = this.A;
        if (cVar != null) {
            u uVar = this.f1834i;
            if (uVar != null) {
                ((View) uVar).removeCallbacks(cVar);
                this.A = null;
                return true;
            }
        }
        e eVar = this.y;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }

    public u b(ViewGroup viewGroup) {
        u uVar = this.f1834i;
        u b2 = super.b(viewGroup);
        if (uVar != b2) {
            ((ActionMenuView) b2).setPresenter(this);
        }
        return b2;
    }

    public Parcelable b() {
        SavedState savedState = new SavedState();
        savedState.f347a = this.D;
        return savedState;
    }

    public void a(Configuration configuration) {
        if (!this.s) {
            this.r = b.b.f.a.a(this.f1827b).c();
        }
        k kVar = this.f1828c;
        if (kVar != null) {
            kVar.c(true);
        }
    }

    public void a(Drawable drawable) {
        d dVar = this.f345k;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
            return;
        }
        this.m = true;
        this.f346l = drawable;
    }

    public View a(o oVar, View view, ViewGroup viewGroup) {
        View actionView = oVar.getActionView();
        if (actionView == null || oVar.f()) {
            actionView = super.a(oVar, view, viewGroup);
        }
        actionView.setVisibility(oVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public void a(o oVar, u.a aVar) {
        aVar.a(oVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f1834i);
        if (this.B == null) {
            this.B = new b();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    public boolean a(int i2, o oVar) {
        return oVar.h();
    }

    public void a(boolean z2) {
        super.a(z2);
        ((View) this.f1834i).requestLayout();
        k kVar = this.f1828c;
        boolean z3 = false;
        if (kVar != null) {
            ArrayList<o> c2 = kVar.c();
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0259b a2 = c2.get(i2).a();
                if (a2 != null) {
                    a2.a((C0259b.a) this);
                }
            }
        }
        k kVar2 = this.f1828c;
        ArrayList<o> j2 = kVar2 != null ? kVar2.j() : null;
        if (this.n && j2 != null) {
            int size2 = j2.size();
            if (size2 == 1) {
                z3 = !j2.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.f345k == null) {
                this.f345k = new d(this.f1826a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f345k.getParent();
            if (viewGroup != this.f1834i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f345k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f1834i;
                actionMenuView.addView(this.f345k, actionMenuView.c());
            }
        } else {
            d dVar = this.f345k;
            if (dVar != null) {
                ViewParent parent = dVar.getParent();
                u uVar = this.f1834i;
                if (parent == uVar) {
                    ((ViewGroup) uVar).removeView(this.f345k);
                }
            }
        }
        ((ActionMenuView) this.f1834i).setOverflowReserved(this.n);
    }

    public boolean a(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f345k) {
            return false;
        }
        return super.a(viewGroup, i2);
    }

    public boolean a(A a2) {
        boolean z2 = false;
        if (!a2.hasVisibleItems()) {
            return false;
        }
        A a3 = a2;
        while (a3.t() != this.f1828c) {
            a3 = (A) a3.t();
        }
        View a4 = a(a3.getItem());
        if (a4 == null) {
            return false;
        }
        this.D = a2.getItem().getItemId();
        int size = a2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = a2.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z2 = true;
                break;
            }
            i2++;
        }
        this.z = new a(this.f1827b, a2, a4);
        this.z.a(z2);
        this.z.f();
        super.a(a2);
        return true;
    }

    public final View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f1834i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof u.a) && ((u.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean a() {
        int i2;
        ArrayList<o> arrayList;
        int i3;
        int i4;
        int i5;
        boolean z2;
        ActionMenuPresenter actionMenuPresenter = this;
        k kVar = actionMenuPresenter.f1828c;
        View view = null;
        int i6 = 0;
        if (kVar != null) {
            arrayList = kVar.n();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i7 = actionMenuPresenter.r;
        int i8 = actionMenuPresenter.q;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f1834i;
        int i9 = i7;
        boolean z3 = false;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i2; i12++) {
            o oVar = arrayList.get(i12);
            if (oVar.k()) {
                i10++;
            } else if (oVar.j()) {
                i11++;
            } else {
                z3 = true;
            }
            if (actionMenuPresenter.v && oVar.isActionViewExpanded()) {
                i9 = 0;
            }
        }
        if (actionMenuPresenter.n && (z3 || i11 + i10 > i9)) {
            i9--;
        }
        int i13 = i9 - i10;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.x;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.t) {
            int i14 = actionMenuPresenter.w;
            i3 = i8 / i14;
            i4 = i14 + ((i8 % i14) / i3);
        } else {
            i4 = 0;
            i3 = 0;
        }
        int i15 = i8;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i2) {
            o oVar2 = arrayList.get(i16);
            if (oVar2.k()) {
                View a2 = actionMenuPresenter.a(oVar2, view, viewGroup);
                if (actionMenuPresenter.t) {
                    i3 -= ActionMenuView.b(a2, i4, i3, makeMeasureSpec, i6);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = a2.getMeasuredWidth();
                i15 -= measuredWidth;
                if (i17 != 0) {
                    measuredWidth = i17;
                }
                int groupId = oVar2.getGroupId();
                if (groupId != 0) {
                    z2 = true;
                    sparseBooleanArray.put(groupId, true);
                } else {
                    z2 = true;
                }
                oVar2.d(z2);
                i17 = measuredWidth;
                i5 = i2;
            } else if (oVar2.j()) {
                int groupId2 = oVar2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i13 > 0 || z4) && i15 > 0 && (!actionMenuPresenter.t || i3 > 0);
                if (z5) {
                    boolean z6 = z5;
                    i5 = i2;
                    View a3 = actionMenuPresenter.a(oVar2, null, viewGroup);
                    if (actionMenuPresenter.t) {
                        int b2 = ActionMenuView.b(a3, i4, i3, makeMeasureSpec, 0);
                        i3 -= b2;
                        z6 = b2 == 0 ? false : z6;
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    int measuredWidth2 = a3.getMeasuredWidth();
                    i15 -= measuredWidth2;
                    if (i17 == 0) {
                        i17 = measuredWidth2;
                    }
                    z5 = z6 & (!actionMenuPresenter.t ? i15 + i17 > 0 : i15 >= 0);
                } else {
                    boolean z7 = z5;
                    i5 = i2;
                }
                if (z5 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    int i18 = 0;
                    while (i18 < i16) {
                        o oVar3 = arrayList.get(i18);
                        if (oVar3.getGroupId() == groupId2) {
                            if (oVar3.h()) {
                                i13++;
                            }
                            oVar3.d(false);
                        }
                        i18++;
                    }
                }
                if (z5) {
                    i13--;
                }
                oVar2.d(z5);
            } else {
                i5 = i2;
                oVar2.d(false);
                i16++;
                i2 = i5;
                view = null;
                i6 = 0;
                actionMenuPresenter = this;
            }
            i16++;
            i2 = i5;
            view = null;
            i6 = 0;
            actionMenuPresenter = this;
        }
        return true;
    }

    public void a(k kVar, boolean z2) {
        d();
        super.a(kVar, z2);
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).f347a;
            if (i2 > 0) {
                MenuItem findItem = this.f1828c.findItem(i2);
                if (findItem != null) {
                    a((A) findItem.getSubMenu());
                }
            }
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f1834i = actionMenuView;
        actionMenuView.a(this.f1828c);
    }
}
