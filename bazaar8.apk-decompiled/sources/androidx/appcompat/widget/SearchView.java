package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.customview.view.AbsSavedState;
import b.b.f;
import b.b.g;
import b.b.g.Da;
import b.b.g.ia;
import b.b.g.pa;
import b.b.g.xa;
import b.b.h;
import b.b.j;
import b.i.k.z;
import com.crashlytics.android.answers.SearchEvent;
import com.crashlytics.android.core.LogFileManager;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView extends LinearLayoutCompat implements b.b.f.c {
    public static final a p = new a();
    public Rect A;
    public Rect B;
    public int[] C;
    public int[] D;
    public final ImageView E;
    public final Drawable F;
    public final int G;
    public final int H;
    public final Intent I;
    public final Intent J;
    public final CharSequence K;
    public c L;
    public b M;
    public View.OnFocusChangeListener N;
    public d O;
    public View.OnClickListener P;
    public boolean Q;
    public boolean R;
    public b.j.a.a S;
    public boolean T;
    public CharSequence U;
    public boolean V;
    public boolean W;
    public int aa;
    public boolean ba;
    public CharSequence ca;
    public CharSequence da;
    public boolean ea;
    public int fa;
    public SearchableInfo ga;
    public Bundle ha;
    public final Runnable ia;
    public Runnable ja;
    public final WeakHashMap<String, Drawable.ConstantState> ka;
    public final View.OnClickListener la;
    public View.OnKeyListener ma;
    public final TextView.OnEditorActionListener na;
    public final AdapterView.OnItemClickListener oa;
    public final AdapterView.OnItemSelectedListener pa;
    public final SearchAutoComplete q;
    public TextWatcher qa;
    public final View r;
    public final View s;
    public final View t;
    public final ImageView u;
    public final ImageView v;
    public final ImageView w;
    public final ImageView x;
    public final View y;
    public e z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new ga();

        /* renamed from: c  reason: collision with root package name */
        public boolean f427c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f427c + "}";
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.f427c));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f427c = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: d  reason: collision with root package name */
        public int f428d;

        /* renamed from: e  reason: collision with root package name */
        public SearchView f429e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f430f;

        /* renamed from: g  reason: collision with root package name */
        public final Runnable f431g;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 < 960 || i3 < 720 || configuration.orientation != 2) {
                return (i2 >= 600 || (i2 >= 640 && i3 >= 480)) ? 192 : 160;
            }
            return 256;
        }

        public boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        public void b() {
            if (this.f430f) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f430f = false;
            }
        }

        public boolean enoughToFilter() {
            return this.f428d <= 0 || super.enoughToFilter();
        }

        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f430f) {
                removeCallbacks(this.f431g);
                post(this.f431g);
            }
            return onCreateInputConnection;
        }

        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, (float) getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        public void onFocusChanged(boolean z, int i2, Rect rect) {
            super.onFocusChanged(z, i2, rect);
            this.f429e.k();
        }

        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f429e.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f429e.hasFocus() && getVisibility() == 0) {
                this.f430f = true;
                if (SearchView.a(getContext())) {
                    SearchView.p.a(this, true);
                }
            }
        }

        public void performCompletion() {
        }

        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f430f = false;
                removeCallbacks(this.f431g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f430f = false;
                removeCallbacks(this.f431g);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f430f = true;
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f429e = searchView;
        }

        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f428d = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, b.b.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f431g = new ha(this);
            this.f428d = getThreshold();
        }
    }

    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public Method f432a;

        /* renamed from: b  reason: collision with root package name */
        public Method f433b;

        /* renamed from: c  reason: collision with root package name */
        public Method f434c;

        public a() {
            try {
                this.f432a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f432a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.f433b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f433b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            Class<AutoCompleteTextView> cls = AutoCompleteTextView.class;
            try {
                this.f434c = cls.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.f434c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        public void a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f433b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        public void b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f432a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        public void a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            Method method = this.f434c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[]{Boolean.valueOf(z)});
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface b {
        boolean onClose();
    }

    public interface c {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface d {
        boolean onSuggestionClick(int i2);

        boolean onSuggestionSelect(int i2);
    }

    private static class e extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        public final View f435a;

        /* renamed from: b  reason: collision with root package name */
        public final Rect f436b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        public final Rect f437c = new Rect();

        /* renamed from: d  reason: collision with root package name */
        public final Rect f438d = new Rect();

        /* renamed from: e  reason: collision with root package name */
        public final int f439e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f440f;

        public e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f439e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect2);
            this.f435a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f436b.set(rect);
            this.f438d.set(rect);
            Rect rect3 = this.f438d;
            int i2 = this.f439e;
            rect3.inset(-i2, -i2);
            this.f437c.set(rect2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouchEvent(android.view.MotionEvent r8) {
            /*
                r7 = this;
                float r0 = r8.getX()
                int r0 = (int) r0
                float r1 = r8.getY()
                int r1 = (int) r1
                int r2 = r8.getAction()
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L_0x002e
                if (r2 == r4) goto L_0x0020
                if (r2 == r3) goto L_0x0020
                r6 = 3
                if (r2 == r6) goto L_0x001b
                goto L_0x003a
            L_0x001b:
                boolean r2 = r7.f440f
                r7.f440f = r5
                goto L_0x003b
            L_0x0020:
                boolean r2 = r7.f440f
                if (r2 == 0) goto L_0x003b
                android.graphics.Rect r6 = r7.f438d
                boolean r6 = r6.contains(r0, r1)
                if (r6 != 0) goto L_0x003b
                r4 = 0
                goto L_0x003b
            L_0x002e:
                android.graphics.Rect r2 = r7.f436b
                boolean r2 = r2.contains(r0, r1)
                if (r2 == 0) goto L_0x003a
                r7.f440f = r4
                r2 = 1
                goto L_0x003b
            L_0x003a:
                r2 = 0
            L_0x003b:
                if (r2 == 0) goto L_0x006e
                if (r4 == 0) goto L_0x005b
                android.graphics.Rect r2 = r7.f437c
                boolean r2 = r2.contains(r0, r1)
                if (r2 != 0) goto L_0x005b
                android.view.View r0 = r7.f435a
                int r0 = r0.getWidth()
                int r0 = r0 / r3
                float r0 = (float) r0
                android.view.View r1 = r7.f435a
                int r1 = r1.getHeight()
                int r1 = r1 / r3
                float r1 = (float) r1
                r8.setLocation(r0, r1)
                goto L_0x0068
            L_0x005b:
                android.graphics.Rect r2 = r7.f437c
                int r3 = r2.left
                int r0 = r0 - r3
                float r0 = (float) r0
                int r2 = r2.top
                int r1 = r1 - r2
                float r1 = (float) r1
                r8.setLocation(r0, r1)
            L_0x0068:
                android.view.View r0 = r7.f435a
                boolean r5 = r0.dispatchTouchEvent(r8)
            L_0x006e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.e.onTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(b.b.d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(b.b.d.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.q.setText(charSequence);
        this.q.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public void a(CharSequence charSequence, boolean z2) {
        this.q.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.q;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.da = charSequence;
        }
        if (z2 && !TextUtils.isEmpty(charSequence)) {
            j();
        }
    }

    public final void b(boolean z2) {
        this.R = z2;
        int i2 = 8;
        boolean z3 = false;
        int i3 = z2 ? 0 : 8;
        boolean z4 = !TextUtils.isEmpty(this.q.getText());
        this.u.setVisibility(i3);
        a(z4);
        this.r.setVisibility(z2 ? 8 : 0);
        if (this.E.getDrawable() != null && !this.Q) {
            i2 = 0;
        }
        this.E.setVisibility(i2);
        n();
        if (!z4) {
            z3 = true;
        }
        c(z3);
        r();
    }

    public final void c(boolean z2) {
        int i2;
        if (!this.ba || f() || !z2) {
            i2 = 8;
        } else {
            i2 = 0;
            this.v.setVisibility(8);
        }
        this.x.setVisibility(i2);
    }

    public void clearFocus() {
        this.W = true;
        super.clearFocus();
        this.q.clearFocus();
        this.q.setImeVisibility(false);
        this.W = false;
    }

    public boolean d(int i2) {
        d dVar = this.O;
        if (dVar != null && dVar.onSuggestionSelect(i2)) {
            return false;
        }
        e(i2);
        return true;
    }

    public final boolean e() {
        SearchableInfo searchableInfo = this.ga;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.ga.getVoiceSearchLaunchWebSearch()) {
            intent = this.I;
        } else if (this.ga.getVoiceSearchLaunchRecognizer()) {
            intent = this.J;
        }
        if (intent == null || getContext().getPackageManager().resolveActivity(intent, LogFileManager.MAX_LOG_SIZE) == null) {
            return false;
        }
        return true;
    }

    public boolean f() {
        return this.R;
    }

    public final boolean g() {
        return (this.T || this.ba) && !f();
    }

    public int getImeOptions() {
        return this.q.getImeOptions();
    }

    public int getInputType() {
        return this.q.getInputType();
    }

    public int getMaxWidth() {
        return this.aa;
    }

    public CharSequence getQuery() {
        return this.q.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.U;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.ga;
        if (searchableInfo == null || searchableInfo.getHintId() == 0) {
            return this.K;
        }
        return getContext().getText(this.ga.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.H;
    }

    public int getSuggestionRowLayout() {
        return this.G;
    }

    public b.j.a.a getSuggestionsAdapter() {
        return this.S;
    }

    public void h() {
        if (!TextUtils.isEmpty(this.q.getText())) {
            this.q.setText("");
            this.q.requestFocus();
            this.q.setImeVisibility(true);
        } else if (this.Q) {
            b bVar = this.M;
            if (bVar == null || !bVar.onClose()) {
                clearFocus();
                b(true);
            }
        }
    }

    public void i() {
        b(false);
        this.q.requestFocus();
        this.q.setImeVisibility(true);
        View.OnClickListener onClickListener = this.P;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void j() {
        Editable text = this.q.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            c cVar = this.L;
            if (cVar == null || !cVar.onQueryTextSubmit(text.toString())) {
                if (this.ga != null) {
                    a(0, (String) null, text.toString());
                }
                this.q.setImeVisibility(false);
                c();
            }
        }
    }

    public void k() {
        b(f());
        m();
        if (this.q.hasFocus()) {
            d();
        }
    }

    public void l() {
        SearchableInfo searchableInfo = this.ga;
        if (searchableInfo != null) {
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(b(this.I, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(a(this.J, searchableInfo));
                }
            } catch (ActivityNotFoundException unused) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    public final void m() {
        post(this.ia);
    }

    public final void n() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.q.getText());
        int i2 = 0;
        if (!z3 && (!this.Q || this.ea)) {
            z2 = false;
        }
        ImageView imageView = this.w;
        if (!z2) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.w.getDrawable();
        if (drawable != null) {
            drawable.setState(z3 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void o() {
        int[] iArr = this.q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public void onActionViewCollapsed() {
        a((CharSequence) "", false);
        clearFocus();
        b(true);
        this.q.setImeOptions(this.fa);
        this.ea = false;
    }

    public void onActionViewExpanded() {
        if (!this.ea) {
            this.ea = true;
            this.fa = this.q.getImeOptions();
            this.q.setImeOptions(this.fa | 33554432);
            this.q.setText("");
            setIconified(false);
        }
    }

    public void onDetachedFromWindow() {
        removeCallbacks(this.ia);
        post(this.ja);
        super.onDetachedFromWindow();
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            a((View) this.q, this.A);
            Rect rect = this.B;
            Rect rect2 = this.A;
            rect.set(rect2.left, 0, rect2.right, i5 - i3);
            e eVar = this.z;
            if (eVar == null) {
                this.z = new e(this.B, this.A, this.q);
                setTouchDelegate(this.z);
                return;
            }
            eVar.a(this.B, this.A);
        }
    }

    public void onMeasure(int i2, int i3) {
        if (f()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.aa;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.aa;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824) {
            int i5 = this.aa;
            if (i5 > 0) {
                size = Math.min(i5, size);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        b(savedState.f427c);
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f427c = f();
        return savedState;
    }

    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        m();
    }

    public final void p() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.q;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(a(queryHint));
    }

    public final void q() {
        this.q.setThreshold(this.ga.getSuggestThreshold());
        this.q.setImeOptions(this.ga.getImeOptions());
        int inputType = this.ga.getInputType();
        int i2 = 1;
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.ga.getSuggestAuthority() != null) {
                inputType = inputType | LogFileManager.MAX_LOG_SIZE | 524288;
            }
        }
        this.q.setInputType(inputType);
        b.j.a.a aVar = this.S;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.ga.getSuggestAuthority() != null) {
            this.S = new ia(getContext(), this, this.ga, this.ka);
            this.q.setAdapter(this.S);
            ia iaVar = (ia) this.S;
            if (this.V) {
                i2 = 2;
            }
            iaVar.a(i2);
        }
    }

    public final void r() {
        this.t.setVisibility((!g() || !(this.v.getVisibility() == 0 || this.x.getVisibility() == 0)) ? 8 : 0);
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.W || !isFocusable()) {
            return false;
        }
        if (f()) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.q.requestFocus(i2, rect);
        if (requestFocus) {
            b(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.ha = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            h();
        } else {
            i();
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.Q != z2) {
            this.Q = z2;
            b(z2);
            p();
        }
    }

    public void setImeOptions(int i2) {
        this.q.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.q.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.aa = i2;
        requestLayout();
    }

    public void setOnCloseListener(b bVar) {
        this.M = bVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.N = onFocusChangeListener;
    }

    public void setOnQueryTextListener(c cVar) {
        this.L = cVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.P = onClickListener;
    }

    public void setOnSuggestionListener(d dVar) {
        this.O = dVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.U = charSequence;
        p();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.V = z2;
        b.j.a.a aVar = this.S;
        if (aVar instanceof ia) {
            ((ia) aVar).a(z2 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.ga = searchableInfo;
        if (this.ga != null) {
            q();
            p();
        }
        this.ba = e();
        if (this.ba) {
            this.q.setPrivateImeOptions("nm");
        }
        b(f());
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.T = z2;
        b(f());
    }

    public void setSuggestionsAdapter(b.j.a.a aVar) {
        this.S = aVar;
        this.q.setAdapter(this.S);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.b.a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A = new Rect();
        this.B = new Rect();
        this.C = new int[2];
        this.D = new int[2];
        this.ia = new X(this);
        this.ja = new Y(this);
        this.ka = new WeakHashMap<>();
        this.la = new C0208ba(this);
        this.ma = new C0210ca(this);
        this.na = new C0212da(this);
        this.oa = new C0214ea(this);
        this.pa = new fa(this);
        this.qa = new W(this);
        pa a2 = pa.a(context, attributeSet, j.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(a2.g(j.SearchView_layout, g.abc_search_view), this, true);
        this.q = (SearchAutoComplete) findViewById(f.search_src_text);
        this.q.setSearchView(this);
        this.r = findViewById(f.search_edit_frame);
        this.s = findViewById(f.search_plate);
        this.t = findViewById(f.submit_area);
        this.u = (ImageView) findViewById(f.search_button);
        this.v = (ImageView) findViewById(f.search_go_btn);
        this.w = (ImageView) findViewById(f.search_close_btn);
        this.x = (ImageView) findViewById(f.search_voice_btn);
        this.E = (ImageView) findViewById(f.search_mag_icon);
        z.a(this.s, a2.b(j.SearchView_queryBackground));
        z.a(this.t, a2.b(j.SearchView_submitBackground));
        this.u.setImageDrawable(a2.b(j.SearchView_searchIcon));
        this.v.setImageDrawable(a2.b(j.SearchView_goIcon));
        this.w.setImageDrawable(a2.b(j.SearchView_closeIcon));
        this.x.setImageDrawable(a2.b(j.SearchView_voiceIcon));
        this.E.setImageDrawable(a2.b(j.SearchView_searchIcon));
        this.F = a2.b(j.SearchView_searchHintIcon);
        xa.a(this.u, getResources().getString(h.abc_searchview_description_search));
        this.G = a2.g(j.SearchView_suggestionRowLayout, g.abc_search_dropdown_item_icons_2line);
        this.H = a2.g(j.SearchView_commitIcon, 0);
        this.u.setOnClickListener(this.la);
        this.w.setOnClickListener(this.la);
        this.v.setOnClickListener(this.la);
        this.x.setOnClickListener(this.la);
        this.q.setOnClickListener(this.la);
        this.q.addTextChangedListener(this.qa);
        this.q.setOnEditorActionListener(this.na);
        this.q.setOnItemClickListener(this.oa);
        this.q.setOnItemSelectedListener(this.pa);
        this.q.setOnKeyListener(this.ma);
        this.q.setOnFocusChangeListener(new Z(this));
        setIconifiedByDefault(a2.a(j.SearchView_iconifiedByDefault, true));
        int c2 = a2.c(j.SearchView_android_maxWidth, -1);
        if (c2 != -1) {
            setMaxWidth(c2);
        }
        this.K = a2.e(j.SearchView_defaultQueryHint);
        this.U = a2.e(j.SearchView_queryHint);
        int d2 = a2.d(j.SearchView_android_imeOptions, -1);
        if (d2 != -1) {
            setImeOptions(d2);
        }
        int d3 = a2.d(j.SearchView_android_inputType, -1);
        if (d3 != -1) {
            setInputType(d3);
        }
        setFocusable(a2.a(j.SearchView_android_focusable, true));
        a2.a();
        this.I = new Intent("android.speech.action.WEB_SEARCH");
        this.I.addFlags(268435456);
        this.I.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.J = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.J.addFlags(268435456);
        this.y = findViewById(this.q.getDropDownAnchor());
        View view = this.y;
        if (view != null) {
            view.addOnLayoutChangeListener(new C0206aa(this));
        }
        b(this.Q);
        p();
    }

    public void c(CharSequence charSequence) {
        Editable text = this.q.getText();
        this.da = text;
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(text);
        a(z3);
        if (z3) {
            z2 = false;
        }
        c(z2);
        n();
        r();
        if (this.L != null && !TextUtils.equals(charSequence, this.ca)) {
            this.L.onQueryTextChange(charSequence.toString());
        }
        this.ca = charSequence.toString();
    }

    public void d() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.q.refreshAutoCompleteResults();
            return;
        }
        p.b(this.q);
        p.a(this.q);
    }

    public final void a(View view, Rect rect) {
        view.getLocationInWindow(this.C);
        getLocationInWindow(this.D);
        int[] iArr = this.C;
        int i2 = iArr[1];
        int[] iArr2 = this.D;
        int i3 = i2 - iArr2[1];
        int i4 = iArr[0] - iArr2[0];
        rect.set(i4, i3, view.getWidth() + i4, view.getHeight() + i3);
    }

    public final void e(int i2) {
        Editable text = this.q.getText();
        Cursor a2 = this.S.a();
        if (a2 != null) {
            if (a2.moveToPosition(i2)) {
                CharSequence convertToString = this.S.convertToString(a2);
                if (convertToString != null) {
                    setQuery(convertToString);
                } else {
                    setQuery(text);
                }
            } else {
                setQuery(text);
            }
        }
    }

    public final void a(boolean z2) {
        this.v.setVisibility((!this.T || !g() || !hasFocus() || (!z2 && this.ba)) ? 8 : 0);
    }

    public void b(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void b() {
        int i2;
        if (this.y.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.s.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = Da.a(this);
            int dimensionPixelSize = this.Q ? resources.getDimensionPixelSize(b.b.d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(b.b.d.abc_dropdownitem_text_padding_left) : 0;
            this.q.getDropDownBackground().getPadding(rect);
            if (a2) {
                i2 = -rect.left;
            } else {
                i2 = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.q.setDropDownHorizontalOffset(i2);
            this.q.setDropDownWidth((((this.y.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public boolean a(View view, int i2, KeyEvent keyEvent) {
        int i3;
        if (this.ga != null && this.S != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return b(this.q.getListSelection(), 0, null);
            }
            if (i2 == 21 || i2 == 22) {
                if (i2 == 21) {
                    i3 = 0;
                } else {
                    i3 = this.q.length();
                }
                this.q.setSelection(i3);
                this.q.setListSelection(0);
                this.q.clearListSelection();
                p.a(this.q, true);
                return true;
            } else if (i2 != 19 || this.q.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    public final void c() {
        this.q.dismissDropDown();
    }

    public final CharSequence a(CharSequence charSequence) {
        if (!this.Q || this.F == null) {
            return charSequence;
        }
        double textSize = (double) this.q.getTextSize();
        Double.isNaN(textSize);
        int i2 = (int) (textSize * 1.25d);
        this.F.setBounds(0, 0, i2, i2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.F), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    public boolean b(int i2, int i3, String str) {
        d dVar = this.O;
        if (dVar != null && dVar.onSuggestionClick(i2)) {
            return false;
        }
        a(i2, 0, (String) null);
        this.q.setImeVisibility(false);
        c();
        return true;
    }

    public final boolean a(int i2, int i3, String str) {
        Cursor a2 = this.S.a();
        if (a2 == null || !a2.moveToPosition(i2)) {
            return false;
        }
        a(a(a2, i3, str));
        return true;
    }

    public final Intent b(Intent intent, SearchableInfo searchableInfo) {
        String str;
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        if (searchActivity == null) {
            str = null;
        } else {
            str = searchActivity.flattenToShortString();
        }
        intent2.putExtra("calling_package", str);
        return intent2;
    }

    public final void a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e2) {
                Log.e("SearchView", "Failed launch activity: " + intent, e2);
            }
        }
    }

    public void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", null, null, str2, i2, str));
    }

    public final Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.da);
        if (str3 != null) {
            intent.putExtra(SearchEvent.QUERY_ATTRIBUTE, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.ha;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.ga.getSearchActivity());
        return intent;
    }

    public final Intent a(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.ha;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i2 = 1;
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String str = null;
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i2 = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i2);
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final Intent a(Cursor cursor, int i2, String str) {
        int i3;
        Uri uri;
        try {
            String a2 = ia.a(cursor, "suggest_intent_action");
            if (a2 == null) {
                a2 = this.ga.getSuggestIntentAction();
            }
            if (a2 == null) {
                a2 = "android.intent.action.SEARCH";
            }
            String str2 = a2;
            String a3 = ia.a(cursor, "suggest_intent_data");
            if (a3 == null) {
                a3 = this.ga.getSuggestIntentData();
            }
            if (a3 != null) {
                if (ia.a(cursor, "suggest_intent_data_id") != null) {
                    a3 = a3 + "/" + Uri.encode(r3);
                }
            }
            if (a3 == null) {
                uri = null;
            } else {
                uri = Uri.parse(a3);
            }
            return a(str2, uri, ia.a(cursor, "suggest_intent_extra_data"), ia.a(cursor, "suggest_intent_query"), i2, str);
        } catch (RuntimeException e2) {
            try {
                i3 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i3 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i3 + " returned exception.", e2);
            return null;
        }
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }
}
