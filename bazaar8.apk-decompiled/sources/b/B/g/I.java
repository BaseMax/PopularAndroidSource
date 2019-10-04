package b.b.g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import b.b.c.a.e;
import b.i.l.f;
import java.lang.reflect.Field;

/* compiled from: DropDownListView */
public class I extends ListView {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f2055a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public int f2056b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f2057c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f2058d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f2059e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f2060f;

    /* renamed from: g  reason: collision with root package name */
    public Field f2061g;

    /* renamed from: h  reason: collision with root package name */
    public a f2062h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2063i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2064j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2065k;

    /* renamed from: l  reason: collision with root package name */
    public b.i.k.I f2066l;
    public f m;
    public b n;

    /* compiled from: DropDownListView */
    private static class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public boolean f2067b = true;

        public a(Drawable drawable) {
            super(drawable);
        }

        public void a(boolean z) {
            this.f2067b = z;
        }

        public void draw(Canvas canvas) {
            if (this.f2067b) {
                super.draw(canvas);
            }
        }

        public void setHotspot(float f2, float f3) {
            if (this.f2067b) {
                super.setHotspot(f2, f3);
            }
        }

        public void setHotspotBounds(int i2, int i3, int i4, int i5) {
            if (this.f2067b) {
                super.setHotspotBounds(i2, i3, i4, i5);
            }
        }

        public boolean setState(int[] iArr) {
            if (this.f2067b) {
                return super.setState(iArr);
            }
            return false;
        }

        public boolean setVisible(boolean z, boolean z2) {
            if (this.f2067b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* compiled from: DropDownListView */
    private class b implements Runnable {
        public b() {
        }

        public void a() {
            I i2 = I.this;
            i2.n = null;
            i2.removeCallbacks(this);
        }

        public void b() {
            I.this.post(this);
        }

        public void run() {
            I i2 = I.this;
            i2.n = null;
            i2.drawableStateChanged();
        }
    }

    public I(Context context, boolean z) {
        super(context, null, b.b.a.dropDownListViewStyle);
        this.f2064j = z;
        setCacheColorHint(0);
        try {
            this.f2061g = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f2061g.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f2062h;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i8 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i9 = i8;
        View view = null;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < count; i12++) {
            int itemViewType = adapter.getItemViewType(i12);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i12, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i13 = layoutParams.height;
            if (i13 > 0) {
                i7 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
            } else {
                i7 = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i2, i7);
            view.forceLayout();
            if (i12 > 0) {
                i9 += dividerHeight;
            }
            i9 += view.getMeasuredHeight();
            if (i9 >= i5) {
                if (i6 >= 0 && i12 > i6 && i11 > 0 && i9 != i5) {
                    i5 = i11;
                }
                return i5;
            }
            if (i6 >= 0 && i12 >= i6) {
                i11 = i9;
            }
        }
        return i9;
    }

    public final void b(int i2, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i2 == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        a(i2, view);
        if (z2) {
            Rect rect = this.f2055a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            b.i.c.a.a.a(selector, exactCenterX, exactCenterY);
        }
    }

    public final void c() {
        Drawable selector = getSelector();
        if (selector != null && b() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public void dispatchDraw(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    public void drawableStateChanged() {
        if (this.n == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            c();
        }
    }

    public boolean hasFocus() {
        return this.f2064j || super.hasFocus();
    }

    public boolean hasWindowFocus() {
        return this.f2064j || super.hasWindowFocus();
    }

    public boolean isFocused() {
        return this.f2064j || super.isFocused();
    }

    public boolean isInTouchMode() {
        return (this.f2064j && this.f2063i) || super.isInTouchMode();
    }

    public void onDetachedFromWindow() {
        this.n = null;
        super.onDetachedFromWindow();
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.n == null) {
            this.n = new b();
            this.n.b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f2060f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.n;
        if (bVar != null) {
            bVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f2063i = z;
    }

    public void setSelector(Drawable drawable) {
        this.f2062h = drawable != null ? new a(drawable) : null;
        super.setSelector(this.f2062h);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f2056b = rect.left;
        this.f2057c = rect.top;
        this.f2058d = rect.right;
        this.f2059e = rect.bottom;
    }

    public final boolean b() {
        return this.f2065k;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r0 != 3) goto L_0x000e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0065  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L_0x0016
            r3 = 2
            if (r0 == r3) goto L_0x0014
            r9 = 3
            if (r0 == r9) goto L_0x0011
        L_0x000e:
            r9 = 0
            r3 = 1
            goto L_0x0046
        L_0x0011:
            r9 = 0
            r3 = 0
            goto L_0x0046
        L_0x0014:
            r3 = 1
            goto L_0x0017
        L_0x0016:
            r3 = 0
        L_0x0017:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L_0x001e
            goto L_0x0011
        L_0x001e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L_0x0031
            r9 = 1
            goto L_0x0046
        L_0x0031:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.a((android.view.View) r3, (int) r5, (float) r4, (float) r9)
            if (r0 != r2) goto L_0x000e
            r7.a((android.view.View) r3, (int) r5)
            goto L_0x000e
        L_0x0046:
            if (r3 == 0) goto L_0x004a
            if (r9 == 0) goto L_0x004d
        L_0x004a:
            r7.a()
        L_0x004d:
            if (r3 == 0) goto L_0x0065
            b.i.l.f r9 = r7.m
            if (r9 != 0) goto L_0x005a
            b.i.l.f r9 = new b.i.l.f
            r9.<init>(r7)
            r7.m = r9
        L_0x005a:
            b.i.l.f r9 = r7.m
            r9.a((boolean) r2)
            b.i.l.f r9 = r7.m
            r9.onTouch(r7, r8)
            goto L_0x006c
        L_0x0065:
            b.i.l.f r8 = r7.m
            if (r8 == 0) goto L_0x006c
            r8.a((boolean) r1)
        L_0x006c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.I.a(android.view.MotionEvent, int):boolean");
    }

    public final void a(View view, int i2) {
        performItemClick(view, i2, getItemIdAtPosition(i2));
    }

    public final void a(Canvas canvas) {
        if (!this.f2055a.isEmpty()) {
            Drawable selector = getSelector();
            if (selector != null) {
                selector.setBounds(this.f2055a);
                selector.draw(canvas);
            }
        }
    }

    public final void a(int i2, View view, float f2, float f3) {
        b(i2, view);
        Drawable selector = getSelector();
        if (selector != null && i2 != -1) {
            b.i.c.a.a.a(selector, f2, f3);
        }
    }

    public final void a(int i2, View view) {
        Rect rect = this.f2055a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f2056b;
        rect.top -= this.f2057c;
        rect.right += this.f2058d;
        rect.bottom += this.f2059e;
        try {
            boolean z = this.f2061g.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f2061g.set(this, Boolean.valueOf(!z));
                if (i2 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    public final void a() {
        this.f2065k = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f2060f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        b.i.k.I i2 = this.f2066l;
        if (i2 != null) {
            i2.a();
            this.f2066l = null;
        }
    }

    public final void a(View view, int i2, float f2, float f3) {
        this.f2065k = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f2, f3);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f2060f;
        if (i3 != -1) {
            View childAt = getChildAt(i3 - getFirstVisiblePosition());
            if (!(childAt == null || childAt == view || !childAt.isPressed())) {
                childAt.setPressed(false);
            }
        }
        this.f2060f = i2;
        float left = f2 - ((float) view.getLeft());
        float top = f3 - ((float) view.getTop());
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        a(i2, view, f2, f3);
        setSelectorEnabled(false);
        refreshDrawableState();
    }
}
