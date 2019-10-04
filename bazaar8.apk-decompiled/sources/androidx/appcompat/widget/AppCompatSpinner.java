package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import b.b.a.C0201l;
import b.b.g.C0218i;
import b.b.g.Da;
import b.b.g.K;
import b.b.g.N;
import b.b.g.la;
import b.i.k.u;
import b.i.k.z;

public class AppCompatSpinner extends Spinner implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f380a = {16843505};

    /* renamed from: b  reason: collision with root package name */
    public final C0218i f381b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f382c;

    /* renamed from: d  reason: collision with root package name */
    public K f383d;

    /* renamed from: e  reason: collision with root package name */
    public SpinnerAdapter f384e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f385f;

    /* renamed from: g  reason: collision with root package name */
    public d f386g;

    /* renamed from: h  reason: collision with root package name */
    public int f387h;

    /* renamed from: i  reason: collision with root package name */
    public final Rect f388i;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new A();

        /* renamed from: a  reason: collision with root package name */
        public boolean f389a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.f389a ? (byte) 1 : 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f389a = parcel.readByte() != 0;
        }
    }

    class a implements d, DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        public C0201l f390a;

        /* renamed from: b  reason: collision with root package name */
        public ListAdapter f391b;

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f392c;

        public a() {
        }

        public int a() {
            return 0;
        }

        public void a(ListAdapter listAdapter) {
            this.f391b = listAdapter;
        }

        public CharSequence b() {
            return this.f392c;
        }

        public boolean c() {
            C0201l lVar = this.f390a;
            if (lVar != null) {
                return lVar.isShowing();
            }
            return false;
        }

        public void dismiss() {
            C0201l lVar = this.f390a;
            if (lVar != null) {
                lVar.dismiss();
                this.f390a = null;
            }
        }

        public Drawable e() {
            return null;
        }

        public int g() {
            return 0;
        }

        public void onClick(DialogInterface dialogInterface, int i2) {
            AppCompatSpinner.this.setSelection(i2);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i2, this.f391b.getItemId(i2));
            }
            dismiss();
        }

        public void a(CharSequence charSequence) {
            this.f392c = charSequence;
        }

        public void b(int i2) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        public void c(int i2) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        public void a(int i2, int i3) {
            if (this.f391b != null) {
                C0201l.a aVar = new C0201l.a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.f392c;
                if (charSequence != null) {
                    aVar.b(charSequence);
                }
                aVar.a(this.f391b, AppCompatSpinner.this.getSelectedItemPosition(), (DialogInterface.OnClickListener) this);
                this.f390a = aVar.a();
                ListView b2 = this.f390a.b();
                if (Build.VERSION.SDK_INT >= 17) {
                    b2.setTextDirection(i2);
                    b2.setTextAlignment(i3);
                }
                this.f390a.show();
            }
        }

        public void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        public void a(int i2) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }
    }

    private static class b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public SpinnerAdapter f394a;

        /* renamed from: b  reason: collision with root package name */
        public ListAdapter f395b;

        public b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f394a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f395b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof la) {
                la laVar = (la) spinnerAdapter;
                if (laVar.getDropDownViewTheme() == null) {
                    laVar.setDropDownViewTheme(theme);
                }
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f395b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter == null) {
                return -1;
            }
            return spinnerAdapter.getItemId(i2);
        }

        public int getItemViewType(int i2) {
            return 0;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            return getDropDownView(i2, view, viewGroup);
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f394a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.f395b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f394a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class c extends N implements d {
        public CharSequence K;
        public ListAdapter L;
        public final Rect M = new Rect();
        public int N;

        public c(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            a((View) AppCompatSpinner.this);
            a(true);
            h(0);
            a((AdapterView.OnItemClickListener) new C0232x(this, AppCompatSpinner.this));
        }

        public CharSequence b() {
            return this.K;
        }

        public void c(int i2) {
            this.N = i2;
        }

        public void o() {
            int i2;
            Drawable e2 = e();
            int i3 = 0;
            if (e2 != null) {
                e2.getPadding(AppCompatSpinner.this.f388i);
                i3 = Da.a(AppCompatSpinner.this) ? AppCompatSpinner.this.f388i.right : -AppCompatSpinner.this.f388i.left;
            } else {
                Rect rect = AppCompatSpinner.this.f388i;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i4 = appCompatSpinner.f387h;
            if (i4 == -2) {
                int a2 = appCompatSpinner.a((SpinnerAdapter) this.L, e());
                int i5 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f388i;
                int i6 = (i5 - rect2.left) - rect2.right;
                if (a2 > i6) {
                    a2 = i6;
                }
                e(Math.max(a2, (width - paddingLeft) - paddingRight));
            } else if (i4 == -1) {
                e((width - paddingLeft) - paddingRight);
            } else {
                e(i4);
            }
            if (Da.a(AppCompatSpinner.this)) {
                i2 = i3 + (((width - paddingRight) - k()) - p());
            } else {
                i2 = i3 + paddingLeft + p();
            }
            a(i2);
        }

        public int p() {
            return this.N;
        }

        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.L = listAdapter;
        }

        public boolean b(View view) {
            return z.A(view) && view.getGlobalVisibleRect(this.M);
        }

        public void a(CharSequence charSequence) {
            this.K = charSequence;
        }

        public void a(int i2, int i3) {
            boolean c2 = c();
            o();
            g(2);
            super.d();
            ListView f2 = f();
            f2.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                f2.setTextDirection(i2);
                f2.setTextAlignment(i3);
            }
            i(AppCompatSpinner.this.getSelectedItemPosition());
            if (!c2) {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    C0233y yVar = new C0233y(this);
                    viewTreeObserver.addOnGlobalLayoutListener(yVar);
                    a((PopupWindow.OnDismissListener) new C0234z(this, yVar));
                }
            }
        }
    }

    interface d {
        int a();

        void a(int i2);

        void a(int i2, int i3);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        CharSequence b();

        void b(int i2);

        void c(int i2);

        boolean c();

        void dismiss();

        Drawable e();

        int g();
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.b.a.spinnerStyle);
    }

    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.f388i);
            Rect rect = this.f388i;
            i3 += rect.left + rect.right;
        }
        return i3;
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f381b;
        if (iVar != null) {
            iVar.a();
        }
    }

    public int getDropDownHorizontalOffset() {
        d dVar = this.f386g;
        if (dVar != null) {
            return dVar.a();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    public int getDropDownVerticalOffset() {
        d dVar = this.f386g;
        if (dVar != null) {
            return dVar.g();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    public int getDropDownWidth() {
        if (this.f386g != null) {
            return this.f387h;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    public final d getInternalPopup() {
        return this.f386g;
    }

    public Drawable getPopupBackground() {
        d dVar = this.f386g;
        if (dVar != null) {
            return dVar.e();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    public Context getPopupContext() {
        return this.f382c;
    }

    public CharSequence getPrompt() {
        d dVar = this.f386g;
        return dVar != null ? dVar.b() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f381b;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f381b;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d dVar = this.f386g;
        if (dVar != null && dVar.c()) {
            this.f386g.dismiss();
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f386g != null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f389a) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(new C0231w(this));
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.f386g;
        savedState.f389a = dVar != null && dVar.c();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        K k2 = this.f383d;
        if (k2 == null || !k2.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean performClick() {
        d dVar = this.f386g;
        if (dVar == null) {
            return super.performClick();
        }
        if (!dVar.c()) {
            a();
        }
        return true;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f381b;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f381b;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setDropDownHorizontalOffset(int i2) {
        d dVar = this.f386g;
        if (dVar != null) {
            dVar.c(i2);
            this.f386g.a(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    public void setDropDownVerticalOffset(int i2) {
        d dVar = this.f386g;
        if (dVar != null) {
            dVar.b(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    public void setDropDownWidth(int i2) {
        if (this.f386g != null) {
            this.f387h = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        d dVar = this.f386g;
        if (dVar != null) {
            dVar.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(b.b.b.a.a.c(getPopupContext(), i2));
    }

    public void setPrompt(CharSequence charSequence) {
        d dVar = this.f386g;
        if (dVar != null) {
            dVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f381b;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f381b;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f385f) {
            this.f384e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f386g != null) {
            Context context = this.f382c;
            if (context == null) {
                context = getContext();
            }
            this.f386g.a((ListAdapter) new b(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0048, code lost:
        if (r11 != null) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004a, code lost:
        r11.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005c, code lost:
        if (r11 != null) goto L_0x004a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0062  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AppCompatSpinner(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            r6 = this;
            r6.<init>(r7, r8, r9)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r6.f388i = r0
            int[] r0 = b.b.j.Spinner
            r1 = 0
            b.b.g.pa r0 = b.b.g.pa.a(r7, r8, r0, r9, r1)
            b.b.g.i r2 = new b.b.g.i
            r2.<init>(r6)
            r6.f381b = r2
            if (r11 == 0) goto L_0x0022
            b.b.f.d r2 = new b.b.f.d
            r2.<init>((android.content.Context) r7, (android.content.res.Resources.Theme) r11)
            r6.f382c = r2
            goto L_0x0034
        L_0x0022:
            int r11 = b.b.j.Spinner_popupTheme
            int r11 = r0.g(r11, r1)
            if (r11 == 0) goto L_0x0032
            b.b.f.d r2 = new b.b.f.d
            r2.<init>((android.content.Context) r7, (int) r11)
            r6.f382c = r2
            goto L_0x0034
        L_0x0032:
            r6.f382c = r7
        L_0x0034:
            r11 = -1
            r2 = 0
            if (r10 != r11) goto L_0x0066
            int[] r11 = f380a     // Catch:{ Exception -> 0x0053, all -> 0x0050 }
            android.content.res.TypedArray r11 = r7.obtainStyledAttributes(r8, r11, r9, r1)     // Catch:{ Exception -> 0x0053, all -> 0x0050 }
            boolean r3 = r11.hasValue(r1)     // Catch:{ Exception -> 0x004e }
            if (r3 == 0) goto L_0x0048
            int r10 = r11.getInt(r1, r1)     // Catch:{ Exception -> 0x004e }
        L_0x0048:
            if (r11 == 0) goto L_0x0066
        L_0x004a:
            r11.recycle()
            goto L_0x0066
        L_0x004e:
            r3 = move-exception
            goto L_0x0055
        L_0x0050:
            r7 = move-exception
            r11 = r2
            goto L_0x0060
        L_0x0053:
            r3 = move-exception
            r11 = r2
        L_0x0055:
            java.lang.String r4 = "AppCompatSpinner"
            java.lang.String r5 = "Could not read android:spinnerMode"
            android.util.Log.i(r4, r5, r3)     // Catch:{ all -> 0x005f }
            if (r11 == 0) goto L_0x0066
            goto L_0x004a
        L_0x005f:
            r7 = move-exception
        L_0x0060:
            if (r11 == 0) goto L_0x0065
            r11.recycle()
        L_0x0065:
            throw r7
        L_0x0066:
            r11 = 1
            if (r10 == 0) goto L_0x00a3
            if (r10 == r11) goto L_0x006c
            goto L_0x00b5
        L_0x006c:
            androidx.appcompat.widget.AppCompatSpinner$c r10 = new androidx.appcompat.widget.AppCompatSpinner$c
            android.content.Context r3 = r6.f382c
            r10.<init>(r3, r8, r9)
            android.content.Context r3 = r6.f382c
            int[] r4 = b.b.j.Spinner
            b.b.g.pa r1 = b.b.g.pa.a(r3, r8, r4, r9, r1)
            int r3 = b.b.j.Spinner_android_dropDownWidth
            r4 = -2
            int r3 = r1.f(r3, r4)
            r6.f387h = r3
            int r3 = b.b.j.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r3 = r1.b(r3)
            r10.a((android.graphics.drawable.Drawable) r3)
            int r3 = b.b.j.Spinner_android_prompt
            java.lang.String r3 = r0.d(r3)
            r10.a((java.lang.CharSequence) r3)
            r1.a()
            r6.f386g = r10
            b.b.g.v r1 = new b.b.g.v
            r1.<init>(r6, r6, r10)
            r6.f383d = r1
            goto L_0x00b5
        L_0x00a3:
            androidx.appcompat.widget.AppCompatSpinner$a r10 = new androidx.appcompat.widget.AppCompatSpinner$a
            r10.<init>()
            r6.f386g = r10
            androidx.appcompat.widget.AppCompatSpinner$d r10 = r6.f386g
            int r1 = b.b.j.Spinner_android_prompt
            java.lang.String r1 = r0.d(r1)
            r10.a((java.lang.CharSequence) r1)
        L_0x00b5:
            int r10 = b.b.j.Spinner_android_entries
            java.lang.CharSequence[] r10 = r0.f(r10)
            if (r10 == 0) goto L_0x00cd
            android.widget.ArrayAdapter r1 = new android.widget.ArrayAdapter
            r3 = 17367048(0x1090008, float:2.5162948E-38)
            r1.<init>(r7, r3, r10)
            int r7 = b.b.g.support_simple_spinner_dropdown_item
            r1.setDropDownViewResource(r7)
            r6.setAdapter((android.widget.SpinnerAdapter) r1)
        L_0x00cd:
            r0.a()
            r6.f385f = r11
            android.widget.SpinnerAdapter r7 = r6.f384e
            if (r7 == 0) goto L_0x00db
            r6.setAdapter((android.widget.SpinnerAdapter) r7)
            r6.f384e = r2
        L_0x00db:
            b.b.g.i r7 = r6.f381b
            r7.a(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    public void a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f386g.a(getTextDirection(), getTextAlignment());
        } else {
            this.f386g.a(-1, -1);
        }
    }
}
