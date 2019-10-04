package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.Lifecycle;
import b.b.a.B;
import b.b.a.C0190a;
import b.b.a.C0202m;
import b.b.a.D;
import b.b.a.G;
import b.b.a.M;
import b.b.a.n;
import b.b.a.o;
import b.b.f.a.i;
import b.b.f.a.k;
import b.b.f.a.t;
import b.b.f.a.u;
import b.b.f.b;
import b.b.f.f;
import b.b.g.C0222m;
import b.b.g.Ca;
import b.b.g.Da;
import b.b.g.F;
import b.b.g.pa;
import b.b.j;
import b.f.C0243b;
import b.i.a.l;
import b.i.k.C0261d;
import b.i.k.C0262e;
import b.i.k.I;
import b.i.k.J;
import b.i.k.q;
import b.i.k.z;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

public class AppCompatDelegateImpl extends o implements k.a, LayoutInflater.Factory2 {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<Class<?>, Integer> f255d = new C0243b();

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f256e = (Build.VERSION.SDK_INT < 21);

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f257f = {16842836};

    /* renamed from: g  reason: collision with root package name */
    public static boolean f258g = true;
    public TextView A;
    public View B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public PanelFeatureState[] K;
    public PanelFeatureState L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public int R;
    public int S;
    public boolean T;
    public boolean U;
    public e V;
    public e W;
    public boolean X;
    public int Y;
    public final Runnable Z;
    public boolean aa;
    public Rect ba;
    public Rect ca;
    public AppCompatViewInflater da;

    /* renamed from: h  reason: collision with root package name */
    public final Object f259h;

    /* renamed from: i  reason: collision with root package name */
    public final Context f260i;

    /* renamed from: j  reason: collision with root package name */
    public Window f261j;

    /* renamed from: k  reason: collision with root package name */
    public c f262k;

    /* renamed from: l  reason: collision with root package name */
    public final n f263l;
    public C0190a m;
    public MenuInflater n;
    public CharSequence o;
    public F p;
    public a q;
    public h r;
    public b.b.f.b s;
    public ActionBarContextView t;
    public PopupWindow u;
    public Runnable v;
    public I w;
    public boolean x;
    public boolean y;
    public ViewGroup z;

    protected static final class PanelFeatureState {

        /* renamed from: a  reason: collision with root package name */
        public int f264a;

        /* renamed from: b  reason: collision with root package name */
        public int f265b;

        /* renamed from: c  reason: collision with root package name */
        public int f266c;

        /* renamed from: d  reason: collision with root package name */
        public int f267d;

        /* renamed from: e  reason: collision with root package name */
        public int f268e;

        /* renamed from: f  reason: collision with root package name */
        public int f269f;

        /* renamed from: g  reason: collision with root package name */
        public ViewGroup f270g;

        /* renamed from: h  reason: collision with root package name */
        public View f271h;

        /* renamed from: i  reason: collision with root package name */
        public View f272i;

        /* renamed from: j  reason: collision with root package name */
        public k f273j;

        /* renamed from: k  reason: collision with root package name */
        public i f274k;

        /* renamed from: l  reason: collision with root package name */
        public Context f275l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q = false;
        public boolean r;
        public Bundle s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new z();

            /* renamed from: a  reason: collision with root package name */
            public int f276a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f277b;

            /* renamed from: c  reason: collision with root package name */
            public Bundle f278c;

            public static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f276a = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f277b = z;
                if (savedState.f277b) {
                    savedState.f278c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            public int describeContents() {
                return 0;
            }

            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f276a);
                parcel.writeInt(this.f277b ? 1 : 0);
                if (this.f277b) {
                    parcel.writeBundle(this.f278c);
                }
            }
        }

        public PanelFeatureState(int i2) {
            this.f264a = i2;
        }

        public boolean a() {
            boolean z = false;
            if (this.f271h == null) {
                return false;
            }
            if (this.f272i != null) {
                return true;
            }
            if (this.f274k.c().getCount() > 0) {
                z = true;
            }
            return z;
        }

        public void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(b.b.a.actionBarPopupTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            }
            newTheme.resolveAttribute(b.b.a.panelMenuListTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                newTheme.applyStyle(i3, true);
            } else {
                newTheme.applyStyle(b.b.i.Theme_AppCompat_CompactMenu, true);
            }
            b.b.f.d dVar = new b.b.f.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f275l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(j.AppCompatTheme);
            this.f265b = obtainStyledAttributes.getResourceId(j.AppCompatTheme_panelBackground, 0);
            this.f269f = obtainStyledAttributes.getResourceId(j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        public void a(k kVar) {
            k kVar2 = this.f273j;
            if (kVar != kVar2) {
                if (kVar2 != null) {
                    kVar2.b((t) this.f274k);
                }
                this.f273j = kVar;
                if (kVar != null) {
                    i iVar = this.f274k;
                    if (iVar != null) {
                        kVar.a((t) iVar);
                    }
                }
            }
        }

        public u a(t.a aVar) {
            if (this.f273j == null) {
                return null;
            }
            if (this.f274k == null) {
                this.f274k = new i(this.f275l, b.b.g.abc_list_menu_item_layout);
                this.f274k.a(aVar);
                this.f273j.a((t) this.f274k);
            }
            return this.f274k.a(this.f270g);
        }
    }

    private final class a implements t.a {
        public a() {
        }

        public boolean a(k kVar) {
            Window.Callback x = AppCompatDelegateImpl.this.x();
            if (x != null) {
                x.onMenuOpened(108, kVar);
            }
            return true;
        }

        public void a(k kVar, boolean z) {
            AppCompatDelegateImpl.this.b(kVar);
        }
    }

    class b implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public b.a f280a;

        public b(b.a aVar) {
            this.f280a = aVar;
        }

        public boolean a(b.b.f.b bVar, Menu menu) {
            return this.f280a.a(bVar, menu);
        }

        public boolean b(b.b.f.b bVar, Menu menu) {
            return this.f280a.b(bVar, menu);
        }

        public boolean a(b.b.f.b bVar, MenuItem menuItem) {
            return this.f280a.a(bVar, menuItem);
        }

        public void a(b.b.f.b bVar) {
            this.f280a.a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.u != null) {
                appCompatDelegateImpl.f261j.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.v);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.t != null) {
                appCompatDelegateImpl2.q();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                I a2 = z.a(appCompatDelegateImpl3.t);
                a2.a(0.0f);
                appCompatDelegateImpl3.w = a2;
                AppCompatDelegateImpl.this.w.a((J) new x(this));
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            n nVar = appCompatDelegateImpl4.f263l;
            if (nVar != null) {
                nVar.b(appCompatDelegateImpl4.s);
            }
            AppCompatDelegateImpl.this.s = null;
        }
    }

    class c extends b.b.f.j {
        public c(Window.Callback callback) {
            super(callback);
        }

        public final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(AppCompatDelegateImpl.this.f260i, callback);
            b.b.f.b a2 = AppCompatDelegateImpl.this.a((b.a) aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.c(keyEvent.getKeyCode(), keyEvent);
        }

        public void onContentChanged() {
        }

        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof k)) {
                return super.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        public boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            AppCompatDelegateImpl.this.i(i2);
            return true;
        }

        public void onPanelClosed(int i2, Menu menu) {
            super.onPanelClosed(i2, menu);
            AppCompatDelegateImpl.this.j(i2);
        }

        public boolean onPreparePanel(int i2, View view, Menu menu) {
            k kVar = menu instanceof k ? (k) menu : null;
            if (i2 == 0 && kVar == null) {
                return false;
            }
            if (kVar != null) {
                kVar.d(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i2, view, menu);
            if (kVar != null) {
                kVar.d(false);
            }
            return onPreparePanel;
        }

        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            PanelFeatureState a2 = AppCompatDelegateImpl.this.a(0, true);
            if (a2 != null) {
                k kVar = a2.f273j;
                if (kVar != null) {
                    super.onProvideKeyboardShortcuts(list, kVar, i2);
                    return;
                }
            }
            super.onProvideKeyboardShortcuts(list, menu, i2);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.A()) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            if (!AppCompatDelegateImpl.this.A() || i2 != 0) {
                return super.onWindowStartingActionMode(callback, i2);
            }
            return a(callback);
        }
    }

    private class d extends e {

        /* renamed from: c  reason: collision with root package name */
        public final PowerManager f283c;

        public d(Context context) {
            super();
            this.f283c = (PowerManager) context.getSystemService("power");
        }

        public IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        public int c() {
            if (Build.VERSION.SDK_INT < 21 || !this.f283c.isPowerSaveMode()) {
                return 1;
            }
            return 2;
        }

        public void d() {
            AppCompatDelegateImpl.this.k();
        }
    }

    abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public BroadcastReceiver f285a;

        public e() {
        }

        public void a() {
            BroadcastReceiver broadcastReceiver = this.f285a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f260i.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f285a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public void e() {
            a();
            IntentFilter b2 = b();
            if (b2 != null && b2.countActions() != 0) {
                if (this.f285a == null) {
                    this.f285a = new y(this);
                }
                AppCompatDelegateImpl.this.f260i.registerReceiver(this.f285a, b2);
            }
        }
    }

    private class f extends e {

        /* renamed from: c  reason: collision with root package name */
        public final b.b.a.I f287c;

        public f(b.b.a.I i2) {
            super();
            this.f287c = i2;
        }

        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        public int c() {
            return this.f287c.b() ? 2 : 1;
        }

        public void d() {
            AppCompatDelegateImpl.this.k();
        }
    }

    private class g extends ContentFrameLayout {
        public g(Context context) {
            super(context);
        }

        public final boolean a(int i2, int i3) {
            return i2 < -5 || i3 < -5 || i2 > getWidth() + 5 || i3 > getHeight() + 5;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.e(0);
            return true;
        }

        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(b.b.b.a.a.c(getContext(), i2));
        }
    }

    private final class h implements t.a {
        public h() {
        }

        public void a(k kVar, boolean z) {
            k m = kVar.m();
            boolean z2 = m != kVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                kVar = m;
            }
            PanelFeatureState a2 = appCompatDelegateImpl.a((Menu) kVar);
            if (a2 == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.a(a2.f264a, a2, m);
                AppCompatDelegateImpl.this.a(a2, true);
                return;
            }
            AppCompatDelegateImpl.this.a(a2, z);
        }

        public boolean a(k kVar) {
            if (kVar == null) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (appCompatDelegateImpl.E) {
                    Window.Callback x = appCompatDelegateImpl.x();
                    if (x != null && !AppCompatDelegateImpl.this.Q) {
                        x.onMenuOpened(108, kVar);
                    }
                }
            }
            return true;
        }
    }

    static {
        if (f256e && !f258g) {
            Thread.setDefaultUncaughtExceptionHandler(new p(Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    public AppCompatDelegateImpl(Activity activity, n nVar) {
        this(activity, null, nVar, activity);
    }

    public boolean A() {
        return this.x;
    }

    public boolean B() {
        b.b.f.b bVar = this.s;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        C0190a d2 = d();
        if (d2 == null || !d2.f()) {
            return false;
        }
        return true;
    }

    public final C0190a C() {
        return this.m;
    }

    public final boolean D() {
        if (this.y) {
            ViewGroup viewGroup = this.z;
            if (viewGroup != null && z.B(viewGroup)) {
                return true;
            }
        }
        return false;
    }

    public final void E() {
        if (this.y) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final C0202m F() {
        Context context = this.f260i;
        while (context != null) {
            if (!(context instanceof C0202m)) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return (C0202m) context;
            }
        }
        return null;
    }

    public void a(Context context) {
        b(false);
        this.N = true;
    }

    public void a(ViewGroup viewGroup) {
    }

    public void b(Bundle bundle) {
        r();
    }

    public MenuInflater c() {
        if (this.n == null) {
            y();
            C0190a aVar = this.m;
            this.n = new b.b.f.g(aVar != null ? aVar.h() : this.f260i);
        }
        return this.n;
    }

    public C0190a d() {
        y();
        return this.m;
    }

    public void e() {
        LayoutInflater from = LayoutInflater.from(this.f260i);
        if (from.getFactory() == null) {
            C0262e.b(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public void f() {
        C0190a d2 = d();
        if (d2 == null || !d2.i()) {
            g(0);
        }
    }

    public void g() {
        o.b((o) this);
        if (this.X) {
            this.f261j.getDecorView().removeCallbacks(this.Z);
        }
        this.P = false;
        this.Q = true;
        C0190a aVar = this.m;
        if (aVar != null) {
            aVar.j();
        }
        n();
    }

    public void h() {
        C0190a d2 = d();
        if (d2 != null) {
            d2.d(true);
        }
    }

    public void i() {
        this.P = true;
        k();
        o.a((o) this);
    }

    public void j() {
        this.P = false;
        o.b((o) this);
        C0190a d2 = d();
        if (d2 != null) {
            d2.d(false);
        }
        if (this.f259h instanceof Dialog) {
            n();
        }
    }

    public final int k(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        return i2;
    }

    public final void l() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.z.findViewById(16908290);
        View decorView = this.f261j.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f260i.obtainStyledAttributes(j.AppCompatTheme);
        obtainStyledAttributes.getValue(j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    public final int m() {
        int i2 = this.R;
        return i2 != -100 ? i2 : o.a();
    }

    public final void n() {
        e eVar = this.V;
        if (eVar != null) {
            eVar.a();
        }
        e eVar2 = this.W;
        if (eVar2 != null) {
            eVar2.a();
        }
    }

    public final ViewGroup o() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f260i.obtainStyledAttributes(j.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(j.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(j.AppCompatTheme_windowNoTitle, false)) {
                b(1);
            } else if (obtainStyledAttributes.getBoolean(j.AppCompatTheme_windowActionBar, false)) {
                b(108);
            }
            if (obtainStyledAttributes.getBoolean(j.AppCompatTheme_windowActionBarOverlay, false)) {
                b(109);
            }
            if (obtainStyledAttributes.getBoolean(j.AppCompatTheme_windowActionModeOverlay, false)) {
                b(10);
            }
            this.H = obtainStyledAttributes.getBoolean(j.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            s();
            this.f261j.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f260i);
            if (this.I) {
                if (this.G) {
                    viewGroup = (ViewGroup) from.inflate(b.b.g.abc_screen_simple_overlay_action_mode, null);
                } else {
                    viewGroup = (ViewGroup) from.inflate(b.b.g.abc_screen_simple, null);
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    z.a((View) viewGroup, (q) new r(this));
                } else {
                    ((b.b.g.J) viewGroup).setOnFitSystemWindowsListener(new s(this));
                }
            } else if (this.H) {
                viewGroup = (ViewGroup) from.inflate(b.b.g.abc_dialog_title_material, null);
                this.F = false;
                this.E = false;
            } else if (this.E) {
                TypedValue typedValue = new TypedValue();
                this.f260i.getTheme().resolveAttribute(b.b.a.actionBarTheme, typedValue, true);
                int i2 = typedValue.resourceId;
                if (i2 != 0) {
                    context = new b.b.f.d(this.f260i, i2);
                } else {
                    context = this.f260i;
                }
                viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(b.b.g.abc_screen_toolbar, null);
                this.p = (F) viewGroup.findViewById(b.b.f.decor_content_parent);
                this.p.setWindowCallback(x());
                if (this.F) {
                    this.p.a(109);
                }
                if (this.C) {
                    this.p.a(2);
                }
                if (this.D) {
                    this.p.a(5);
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (this.p == null) {
                    this.A = (TextView) viewGroup.findViewById(b.b.f.title);
                }
                Da.b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(b.b.f.action_bar_activity_content);
                ViewGroup viewGroup2 = (ViewGroup) this.f261j.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f261j.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new t(this));
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.E + ", windowActionBarOverlay: " + this.F + ", android:windowIsFloating: " + this.H + ", windowActionModeOverlay: " + this.G + ", windowNoTitle: " + this.I + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    public void p() {
        F f2 = this.p;
        if (f2 != null) {
            f2.h();
        }
        if (this.u != null) {
            this.f261j.getDecorView().removeCallbacks(this.v);
            if (this.u.isShowing()) {
                try {
                    this.u.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.u = null;
        }
        q();
        PanelFeatureState a2 = a(0, false);
        if (a2 != null) {
            k kVar = a2.f273j;
            if (kVar != null) {
                kVar.close();
            }
        }
    }

    public void q() {
        I i2 = this.w;
        if (i2 != null) {
            i2.a();
        }
    }

    public final void r() {
        if (!this.y) {
            this.z = o();
            CharSequence w2 = w();
            if (!TextUtils.isEmpty(w2)) {
                F f2 = this.p;
                if (f2 != null) {
                    f2.setWindowTitle(w2);
                } else if (C() != null) {
                    C().a(w2);
                } else {
                    TextView textView = this.A;
                    if (textView != null) {
                        textView.setText(w2);
                    }
                }
            }
            l();
            a(this.z);
            this.y = true;
            PanelFeatureState a2 = a(0, false);
            if (this.Q) {
                return;
            }
            if (a2 == null || a2.f273j == null) {
                g(108);
            }
        }
    }

    public final void s() {
        if (this.f261j == null) {
            Object obj = this.f259h;
            if (obj instanceof Activity) {
                a(((Activity) obj).getWindow());
            }
        }
        if (this.f261j == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final Context t() {
        C0190a d2 = d();
        Context h2 = d2 != null ? d2.h() : null;
        return h2 == null ? this.f260i : h2;
    }

    public final e u() {
        if (this.W == null) {
            this.W = new d(this.f260i);
        }
        return this.W;
    }

    public final e v() {
        if (this.V == null) {
            this.V = new f(b.b.a.I.a(this.f260i));
        }
        return this.V;
    }

    public final CharSequence w() {
        Object obj = this.f259h;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.o;
    }

    public final Window.Callback x() {
        return this.f261j.getCallback();
    }

    public final void y() {
        r();
        if (this.E && this.m == null) {
            Object obj = this.f259h;
            if (obj instanceof Activity) {
                this.m = new M((Activity) obj, this.F);
            } else if (obj instanceof Dialog) {
                this.m = new M((Dialog) obj);
            }
            C0190a aVar = this.m;
            if (aVar != null) {
                aVar.c(this.aa);
            }
        }
    }

    public final boolean z() {
        if (!this.U && (this.f259h instanceof Activity)) {
            PackageManager packageManager = this.f260i.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f260i, this.f259h.getClass()), 0);
                this.T = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                this.T = false;
            }
        }
        this.U = true;
        return this.T;
    }

    public AppCompatDelegateImpl(Dialog dialog, n nVar) {
        this(dialog.getContext(), dialog.getWindow(), nVar, dialog);
    }

    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        r();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f262k.a().onContentChanged();
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public AppCompatDelegateImpl(Context context, Window window, n nVar, Object obj) {
        this.w = null;
        this.x = true;
        this.R = -100;
        this.Z = new q(this);
        this.f260i = context;
        this.f263l = nVar;
        this.f259h = obj;
        if (this.R == -100 && (this.f259h instanceof Dialog)) {
            C0202m F2 = F();
            if (F2 != null) {
                this.R = F2.v().b();
            }
        }
        if (this.R == -100) {
            Integer num = f255d.get(this.f259h.getClass());
            if (num != null) {
                this.R = num.intValue();
                f255d.remove(this.f259h.getClass());
            }
        }
        if (window != null) {
            a(window);
        }
        C0222m.c();
    }

    public void a(Bundle bundle) {
        this.N = true;
        b(false);
        s();
        Object obj = this.f259h;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = l.b((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                C0190a C2 = C();
                if (C2 == null) {
                    this.aa = true;
                } else {
                    C2.c(true);
                }
            }
        }
        this.O = true;
    }

    public void d(int i2) {
        this.S = i2;
    }

    public int h(int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 != 0) {
                if (!(i2 == 1 || i2 == 2)) {
                    if (i2 == 3) {
                        return u().c();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f260i.getSystemService(UiModeManager.class)).getNightMode() == 0) {
                return -1;
            } else {
                i2 = v().c();
            }
        }
        return i2;
    }

    public boolean k() {
        return b(true);
    }

    public boolean d(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z2 = this.M;
            this.M = false;
            PanelFeatureState a2 = a(0, false);
            if (a2 != null && a2.o) {
                if (!z2) {
                    a(a2, true);
                }
                return true;
            } else if (B()) {
                return true;
            }
        } else if (i2 == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    public void f(int i2) {
        PanelFeatureState a2 = a(i2, true);
        if (a2.f273j != null) {
            Bundle bundle = new Bundle();
            a2.f273j.e(bundle);
            if (bundle.size() > 0) {
                a2.s = bundle;
            }
            a2.f273j.s();
            a2.f273j.clear();
        }
        a2.r = true;
        a2.q = true;
        if ((i2 == 108 || i2 == 0) && this.p != null) {
            PanelFeatureState a3 = a(0, false);
            if (a3 != null) {
                a3.m = false;
                b(a3, (KeyEvent) null);
            }
        }
    }

    public void i(int i2) {
        if (i2 == 108) {
            C0190a d2 = d();
            if (d2 != null) {
                d2.b(true);
            }
        }
    }

    public void c(int i2) {
        r();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f260i).inflate(i2, viewGroup);
        this.f262k.a().onContentChanged();
    }

    public void e(int i2) {
        a(a(i2, true), true);
    }

    public boolean b(int i2) {
        int k2 = k(i2);
        if (this.I && k2 == 108) {
            return false;
        }
        if (this.E && k2 == 1) {
            this.E = false;
        }
        if (k2 == 1) {
            E();
            this.I = true;
            return true;
        } else if (k2 == 2) {
            E();
            this.C = true;
            return true;
        } else if (k2 == 5) {
            E();
            this.D = true;
            return true;
        } else if (k2 == 10) {
            E();
            this.G = true;
            return true;
        } else if (k2 == 108) {
            E();
            this.E = true;
            return true;
        } else if (k2 != 109) {
            return this.f261j.requestFeature(k2);
        } else {
            E();
            this.F = true;
            return true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x006c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean e(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            b.b.f.b r0 = r3.s
            r1 = 0
            if (r0 == 0) goto L_0x0006
            return r1
        L_0x0006:
            r0 = 1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r2 = r3.a((int) r4, (boolean) r0)
            if (r4 != 0) goto L_0x0043
            b.b.g.F r4 = r3.p
            if (r4 == 0) goto L_0x0043
            boolean r4 = r4.d()
            if (r4 == 0) goto L_0x0043
            android.content.Context r4 = r3.f260i
            android.view.ViewConfiguration r4 = android.view.ViewConfiguration.get(r4)
            boolean r4 = r4.hasPermanentMenuKey()
            if (r4 != 0) goto L_0x0043
            b.b.g.F r4 = r3.p
            boolean r4 = r4.a()
            if (r4 != 0) goto L_0x003c
            boolean r4 = r3.Q
            if (r4 != 0) goto L_0x0063
            boolean r4 = r3.b((androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState) r2, (android.view.KeyEvent) r5)
            if (r4 == 0) goto L_0x0063
            b.b.g.F r4 = r3.p
            boolean r4 = r4.g()
            goto L_0x006a
        L_0x003c:
            b.b.g.F r4 = r3.p
            boolean r4 = r4.f()
            goto L_0x006a
        L_0x0043:
            boolean r4 = r2.o
            if (r4 != 0) goto L_0x0065
            boolean r4 = r2.n
            if (r4 == 0) goto L_0x004c
            goto L_0x0065
        L_0x004c:
            boolean r4 = r2.m
            if (r4 == 0) goto L_0x0063
            boolean r4 = r2.r
            if (r4 == 0) goto L_0x005b
            r2.m = r1
            boolean r4 = r3.b((androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState) r2, (android.view.KeyEvent) r5)
            goto L_0x005c
        L_0x005b:
            r4 = 1
        L_0x005c:
            if (r4 == 0) goto L_0x0063
            r3.a((androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState) r2, (android.view.KeyEvent) r5)
            r4 = 1
            goto L_0x006a
        L_0x0063:
            r4 = 0
            goto L_0x006a
        L_0x0065:
            boolean r4 = r2.o
            r3.a((androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState) r2, (boolean) r0)
        L_0x006a:
            if (r4 == 0) goto L_0x0083
            android.content.Context r5 = r3.f260i
            java.lang.String r0 = "audio"
            java.lang.Object r5 = r5.getSystemService(r0)
            android.media.AudioManager r5 = (android.media.AudioManager) r5
            if (r5 == 0) goto L_0x007c
            r5.playSoundEffect(r1)
            goto L_0x0083
        L_0x007c:
            java.lang.String r5 = "AppCompatDelegate"
            java.lang.String r0 = "Couldn't get audio manager"
            android.util.Log.w(r5, r0)
        L_0x0083:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.e(int, android.view.KeyEvent):boolean");
    }

    public void j(int i2) {
        if (i2 == 108) {
            C0190a d2 = d();
            if (d2 != null) {
                d2.b(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState a2 = a(i2, true);
            if (a2.o) {
                a(a2, false);
            }
        }
    }

    public final void g(int i2) {
        this.Y = (1 << i2) | this.Y;
        if (!this.X) {
            z.a(this.f261j.getDecorView(), this.Z);
            this.X = true;
        }
    }

    public void c(Bundle bundle) {
        if (this.R != -100) {
            f255d.put(this.f259h.getClass(), Integer.valueOf(this.R));
        }
    }

    public void a(Toolbar toolbar) {
        if (this.f259h instanceof Activity) {
            C0190a d2 = d();
            if (!(d2 instanceof M)) {
                this.n = null;
                if (d2 != null) {
                    d2.j();
                }
                if (toolbar != null) {
                    G g2 = new G(toolbar, w(), this.f262k);
                    this.m = g2;
                    this.f261j.setCallback(g2.m());
                } else {
                    this.m = null;
                    this.f261j.setCallback(this.f262k);
                }
                f();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    public boolean c(int i2, KeyEvent keyEvent) {
        C0190a d2 = d();
        if (d2 != null && d2.a(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.L;
        if (panelFeatureState == null || !a(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.L == null) {
                PanelFeatureState a2 = a(0, true);
                b(a2, keyEvent);
                boolean a3 = a(a2, keyEvent.getKeyCode(), keyEvent, 1);
                a2.m = false;
                if (a3) {
                    return true;
                }
            }
            return false;
        }
        PanelFeatureState panelFeatureState2 = this.L;
        if (panelFeatureState2 != null) {
            panelFeatureState2.n = true;
        }
        return true;
    }

    public <T extends View> T a(int i2) {
        r();
        return this.f261j.findViewById(i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0029  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0169  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b.b.f.b b(b.b.f.b.a r8) {
        /*
            r7 = this;
            r7.q()
            b.b.f.b r0 = r7.s
            if (r0 == 0) goto L_0x000a
            r0.a()
        L_0x000a:
            boolean r0 = r8 instanceof androidx.appcompat.app.AppCompatDelegateImpl.b
            if (r0 != 0) goto L_0x0014
            androidx.appcompat.app.AppCompatDelegateImpl$b r0 = new androidx.appcompat.app.AppCompatDelegateImpl$b
            r0.<init>(r8)
            r8 = r0
        L_0x0014:
            b.b.a.n r0 = r7.f263l
            r1 = 0
            if (r0 == 0) goto L_0x0022
            boolean r2 = r7.Q
            if (r2 != 0) goto L_0x0022
            b.b.f.b r0 = r0.a((b.b.f.b.a) r8)     // Catch:{ AbstractMethodError -> 0x0022 }
            goto L_0x0023
        L_0x0022:
            r0 = r1
        L_0x0023:
            if (r0 == 0) goto L_0x0029
            r7.s = r0
            goto L_0x0165
        L_0x0029:
            androidx.appcompat.widget.ActionBarContextView r0 = r7.t
            r2 = 0
            r3 = 1
            if (r0 != 0) goto L_0x00d6
            boolean r0 = r7.H
            if (r0 == 0) goto L_0x00b7
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            android.content.Context r4 = r7.f260i
            android.content.res.Resources$Theme r4 = r4.getTheme()
            int r5 = b.b.a.actionBarTheme
            r4.resolveAttribute(r5, r0, r3)
            int r5 = r0.resourceId
            if (r5 == 0) goto L_0x0068
            android.content.Context r5 = r7.f260i
            android.content.res.Resources r5 = r5.getResources()
            android.content.res.Resources$Theme r5 = r5.newTheme()
            r5.setTo(r4)
            int r4 = r0.resourceId
            r5.applyStyle(r4, r3)
            b.b.f.d r4 = new b.b.f.d
            android.content.Context r6 = r7.f260i
            r4.<init>((android.content.Context) r6, (int) r2)
            android.content.res.Resources$Theme r6 = r4.getTheme()
            r6.setTo(r5)
            goto L_0x006a
        L_0x0068:
            android.content.Context r4 = r7.f260i
        L_0x006a:
            androidx.appcompat.widget.ActionBarContextView r5 = new androidx.appcompat.widget.ActionBarContextView
            r5.<init>(r4)
            r7.t = r5
            android.widget.PopupWindow r5 = new android.widget.PopupWindow
            int r6 = b.b.a.actionModePopupWindowStyle
            r5.<init>(r4, r1, r6)
            r7.u = r5
            android.widget.PopupWindow r5 = r7.u
            r6 = 2
            b.i.l.i.a((android.widget.PopupWindow) r5, (int) r6)
            android.widget.PopupWindow r5 = r7.u
            androidx.appcompat.widget.ActionBarContextView r6 = r7.t
            r5.setContentView(r6)
            android.widget.PopupWindow r5 = r7.u
            r6 = -1
            r5.setWidth(r6)
            android.content.res.Resources$Theme r5 = r4.getTheme()
            int r6 = b.b.a.actionBarSize
            r5.resolveAttribute(r6, r0, r3)
            int r0 = r0.data
            android.content.res.Resources r4 = r4.getResources()
            android.util.DisplayMetrics r4 = r4.getDisplayMetrics()
            int r0 = android.util.TypedValue.complexToDimensionPixelSize(r0, r4)
            androidx.appcompat.widget.ActionBarContextView r4 = r7.t
            r4.setContentHeight(r0)
            android.widget.PopupWindow r0 = r7.u
            r4 = -2
            r0.setHeight(r4)
            b.b.a.v r0 = new b.b.a.v
            r0.<init>(r7)
            r7.v = r0
            goto L_0x00d6
        L_0x00b7:
            android.view.ViewGroup r0 = r7.z
            int r4 = b.b.f.action_mode_bar_stub
            android.view.View r0 = r0.findViewById(r4)
            androidx.appcompat.widget.ViewStubCompat r0 = (androidx.appcompat.widget.ViewStubCompat) r0
            if (r0 == 0) goto L_0x00d6
            android.content.Context r4 = r7.t()
            android.view.LayoutInflater r4 = android.view.LayoutInflater.from(r4)
            r0.setLayoutInflater(r4)
            android.view.View r0 = r0.a()
            androidx.appcompat.widget.ActionBarContextView r0 = (androidx.appcompat.widget.ActionBarContextView) r0
            r7.t = r0
        L_0x00d6:
            androidx.appcompat.widget.ActionBarContextView r0 = r7.t
            if (r0 == 0) goto L_0x0165
            r7.q()
            androidx.appcompat.widget.ActionBarContextView r0 = r7.t
            r0.d()
            b.b.f.e r0 = new b.b.f.e
            androidx.appcompat.widget.ActionBarContextView r4 = r7.t
            android.content.Context r4 = r4.getContext()
            androidx.appcompat.widget.ActionBarContextView r5 = r7.t
            android.widget.PopupWindow r6 = r7.u
            if (r6 != 0) goto L_0x00f1
            goto L_0x00f2
        L_0x00f1:
            r3 = 0
        L_0x00f2:
            r0.<init>(r4, r5, r8, r3)
            android.view.Menu r3 = r0.c()
            boolean r8 = r8.a((b.b.f.b) r0, (android.view.Menu) r3)
            if (r8 == 0) goto L_0x0163
            r0.i()
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            r8.a(r0)
            r7.s = r0
            boolean r8 = r7.D()
            r0 = 1065353216(0x3f800000, float:1.0)
            if (r8 == 0) goto L_0x012d
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            r1 = 0
            r8.setAlpha(r1)
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            b.i.k.I r8 = b.i.k.z.a(r8)
            r8.a((float) r0)
            r7.w = r8
            b.i.k.I r8 = r7.w
            b.b.a.w r0 = new b.b.a.w
            r0.<init>(r7)
            r8.a((b.i.k.J) r0)
            goto L_0x0153
        L_0x012d:
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            r8.setAlpha(r0)
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            r8.setVisibility(r2)
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            r0 = 32
            r8.sendAccessibilityEvent(r0)
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            android.view.ViewParent r8 = r8.getParent()
            boolean r8 = r8 instanceof android.view.View
            if (r8 == 0) goto L_0x0153
            androidx.appcompat.widget.ActionBarContextView r8 = r7.t
            android.view.ViewParent r8 = r8.getParent()
            android.view.View r8 = (android.view.View) r8
            b.i.k.z.G(r8)
        L_0x0153:
            android.widget.PopupWindow r8 = r7.u
            if (r8 == 0) goto L_0x0165
            android.view.Window r8 = r7.f261j
            android.view.View r8 = r8.getDecorView()
            java.lang.Runnable r0 = r7.v
            r8.post(r0)
            goto L_0x0165
        L_0x0163:
            r7.s = r1
        L_0x0165:
            b.b.f.b r8 = r7.s
            if (r8 == 0) goto L_0x0170
            b.b.a.n r0 = r7.f263l
            if (r0 == 0) goto L_0x0170
            r0.a((b.b.f.b) r8)
        L_0x0170:
            b.b.f.b r8 = r7.s
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b(b.b.f.b$a):b.b.f.b");
    }

    public final boolean c(PanelFeatureState panelFeatureState) {
        Context context = this.f260i;
        int i2 = panelFeatureState.f264a;
        if ((i2 == 0 || i2 == 108) && this.p != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(b.b.a.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(b.b.a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(b.b.a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                b.b.f.d dVar = new b.b.f.d(context, 0);
                dVar.getTheme().setTo(theme2);
                context = dVar;
            }
        }
        k kVar = new k(context);
        kVar.a((k.a) this);
        panelFeatureState.a(kVar);
        return true;
    }

    public void a(Configuration configuration) {
        if (this.E && this.y) {
            C0190a d2 = d();
            if (d2 != null) {
                d2.a(configuration);
            }
        }
        C0222m.b().a(this.f260i);
        b(false);
    }

    public int l(int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        ActionBarContextView actionBarContextView = this.t;
        int i3 = 0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.t.getLayoutParams();
            z2 = true;
            if (this.t.isShown()) {
                if (this.ba == null) {
                    this.ba = new Rect();
                    this.ca = new Rect();
                }
                Rect rect = this.ba;
                Rect rect2 = this.ca;
                rect.set(0, i2, 0, 0);
                Da.a(this.z, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.B;
                    if (view == null) {
                        this.B = new View(this.f260i);
                        this.B.setBackgroundColor(this.f260i.getResources().getColor(b.b.c.abc_input_method_navigation_guard));
                        this.z.addView(this.B, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.B.setLayoutParams(layoutParams);
                        }
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (this.B == null) {
                    z2 = false;
                }
                if (!this.G && z2) {
                    i2 = 0;
                }
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z4 = true;
                } else {
                    z4 = false;
                }
                z2 = false;
            }
            if (z3) {
                this.t.setLayoutParams(marginLayoutParams);
            }
        }
        View view2 = this.B;
        if (view2 != null) {
            if (!z2) {
                i3 = 8;
            }
            view2.setVisibility(i3);
        }
        return i2;
    }

    public void a(View view) {
        r();
        ViewGroup viewGroup = (ViewGroup) this.z.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f262k.a().onContentChanged();
    }

    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        r();
        ((ViewGroup) this.z.findViewById(16908290)).addView(view, layoutParams);
        this.f262k.a().onContentChanged();
    }

    public final void a(Window window) {
        if (this.f261j == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof c)) {
                this.f262k = new c(callback);
                window.setCallback(this.f262k);
                pa a2 = pa.a(this.f260i, (AttributeSet) null, f257f);
                Drawable c2 = a2.c(0);
                if (c2 != null) {
                    window.setBackgroundDrawable(c2);
                }
                a2.a();
                this.f261j = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    public final void c(int i2, boolean z2) {
        Resources resources = this.f260i.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i2 | (resources.getConfiguration().uiMode & -49);
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            D.a(resources);
        }
        int i3 = this.S;
        if (i3 != 0) {
            this.f260i.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f260i.getTheme().applyStyle(this.S, true);
            }
        }
        if (z2) {
            Object obj = this.f259h;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof b.r.k) {
                    if (((b.r.k) activity).b().a().a(Lifecycle.State.STARTED)) {
                        activity.onConfigurationChanged(configuration);
                    }
                } else if (this.P) {
                    activity.onConfigurationChanged(configuration);
                }
            }
        }
    }

    public final void a(CharSequence charSequence) {
        this.o = charSequence;
        F f2 = this.p;
        if (f2 != null) {
            f2.setWindowTitle(charSequence);
        } else if (C() != null) {
            C().a(charSequence);
        } else {
            TextView textView = this.A;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    public boolean a(k kVar, MenuItem menuItem) {
        Window.Callback x2 = x();
        if (x2 != null && !this.Q) {
            PanelFeatureState a2 = a((Menu) kVar.m());
            if (a2 != null) {
                return x2.onMenuItemSelected(a2.f264a, menuItem);
            }
        }
        return false;
    }

    public void a(k kVar) {
        a(kVar, true);
    }

    public b.b.f.b a(b.a aVar) {
        if (aVar != null) {
            b.b.f.b bVar = this.s;
            if (bVar != null) {
                bVar.a();
            }
            b bVar2 = new b(aVar);
            C0190a d2 = d();
            if (d2 != null) {
                this.s = d2.a((b.a) bVar2);
                b.b.f.b bVar3 = this.s;
                if (bVar3 != null) {
                    n nVar = this.f263l;
                    if (nVar != null) {
                        nVar.a(bVar3);
                    }
                }
            }
            if (this.s == null) {
                this.s = b((b.a) bVar2);
            }
            return this.s;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    public boolean a(KeyEvent keyEvent) {
        Object obj = this.f259h;
        boolean z2 = true;
        if ((obj instanceof C0261d.a) || (obj instanceof B)) {
            View decorView = this.f261j.getDecorView();
            if (decorView != null && C0261d.a(decorView, keyEvent)) {
                return true;
            }
        }
        if (keyEvent.getKeyCode() == 82 && this.f262k.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z2 = false;
        }
        return z2 ? a(keyCode, keyEvent) : d(keyCode, keyEvent);
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        boolean z2 = true;
        if (i2 == 4) {
            if ((keyEvent.getFlags() & 128) == 0) {
                z2 = false;
            }
            this.M = z2;
        } else if (i2 == 82) {
            b(0, keyEvent);
            return true;
        }
        return false;
    }

    public final boolean b(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(t());
        panelFeatureState.f270g = new g(panelFeatureState.f275l);
        panelFeatureState.f266c = 81;
        return true;
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z2;
        boolean z3 = false;
        if (this.da == null) {
            String string = this.f260i.obtainStyledAttributes(j.AppCompatTheme).getString(j.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.da = new AppCompatViewInflater();
            } else {
                try {
                    this.da = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.da = new AppCompatViewInflater();
                }
            }
        }
        if (f256e) {
            if (!(attributeSet instanceof XmlPullParser)) {
                z3 = a((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                z3 = true;
            }
            z2 = z3;
        } else {
            z2 = false;
        }
        return this.da.createView(view, str, context, attributeSet, z2, f256e, true, Ca.b());
    }

    public final boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (this.Q) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.L;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            a(panelFeatureState2, false);
        }
        Window.Callback x2 = x();
        if (x2 != null) {
            panelFeatureState.f272i = x2.onCreatePanelView(panelFeatureState.f264a);
        }
        int i2 = panelFeatureState.f264a;
        boolean z2 = i2 == 0 || i2 == 108;
        if (z2) {
            F f2 = this.p;
            if (f2 != null) {
                f2.c();
            }
        }
        if (panelFeatureState.f272i == null && (!z2 || !(C() instanceof G))) {
            if (panelFeatureState.f273j == null || panelFeatureState.r) {
                if (panelFeatureState.f273j == null && (!c(panelFeatureState) || panelFeatureState.f273j == null)) {
                    return false;
                }
                if (z2 && this.p != null) {
                    if (this.q == null) {
                        this.q = new a();
                    }
                    this.p.a(panelFeatureState.f273j, this.q);
                }
                panelFeatureState.f273j.s();
                if (!x2.onCreatePanelMenu(panelFeatureState.f264a, panelFeatureState.f273j)) {
                    panelFeatureState.a((k) null);
                    if (z2) {
                        F f3 = this.p;
                        if (f3 != null) {
                            f3.a(null, this.q);
                        }
                    }
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.f273j.s();
            Bundle bundle = panelFeatureState.s;
            if (bundle != null) {
                panelFeatureState.f273j.c(bundle);
                panelFeatureState.s = null;
            }
            if (!x2.onPreparePanel(0, panelFeatureState.f272i, panelFeatureState.f273j)) {
                if (z2) {
                    F f4 = this.p;
                    if (f4 != null) {
                        f4.a(null, this.q);
                    }
                }
                panelFeatureState.f273j.r();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f273j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.f273j.r();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.L = panelFeatureState;
        return true;
    }

    public final boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f261j.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || z.A((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    public final void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        if (!panelFeatureState.o && !this.Q) {
            if (panelFeatureState.f264a == 0) {
                if ((this.f260i.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback x2 = x();
            if (x2 == null || x2.onMenuOpened(panelFeatureState.f264a, panelFeatureState.f273j)) {
                WindowManager windowManager = (WindowManager) this.f260i.getSystemService("window");
                if (windowManager != null && b(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.f270g == null || panelFeatureState.q) {
                        ViewGroup viewGroup = panelFeatureState.f270g;
                        if (viewGroup == null) {
                            if (!b(panelFeatureState) || panelFeatureState.f270g == null) {
                                return;
                            }
                        } else if (panelFeatureState.q && viewGroup.getChildCount() > 0) {
                            panelFeatureState.f270g.removeAllViews();
                        }
                        if (a(panelFeatureState) && panelFeatureState.a()) {
                            ViewGroup.LayoutParams layoutParams = panelFeatureState.f271h.getLayoutParams();
                            if (layoutParams == null) {
                                layoutParams = new ViewGroup.LayoutParams(-2, -2);
                            }
                            panelFeatureState.f270g.setBackgroundResource(panelFeatureState.f265b);
                            ViewParent parent = panelFeatureState.f271h.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(panelFeatureState.f271h);
                            }
                            panelFeatureState.f270g.addView(panelFeatureState.f271h, layoutParams);
                            if (!panelFeatureState.f271h.hasFocus()) {
                                panelFeatureState.f271h.requestFocus();
                            }
                        }
                    } else {
                        View view = panelFeatureState.f272i;
                        if (view != null) {
                            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                            if (layoutParams2 != null && layoutParams2.width == -1) {
                                i2 = -1;
                                panelFeatureState.n = false;
                                WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f267d, panelFeatureState.f268e, 1002, 8519680, -3);
                                layoutParams3.gravity = panelFeatureState.f266c;
                                layoutParams3.windowAnimations = panelFeatureState.f269f;
                                windowManager.addView(panelFeatureState.f270g, layoutParams3);
                                panelFeatureState.o = true;
                            }
                        }
                    }
                    i2 = -2;
                    panelFeatureState.n = false;
                    WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f267d, panelFeatureState.f268e, 1002, 8519680, -3);
                    layoutParams32.gravity = panelFeatureState.f266c;
                    layoutParams32.windowAnimations = panelFeatureState.f269f;
                    windowManager.addView(panelFeatureState.f270g, layoutParams32);
                    panelFeatureState.o = true;
                }
            } else {
                a(panelFeatureState, true);
            }
        }
    }

    public void b(k kVar) {
        if (!this.J) {
            this.J = true;
            this.p.h();
            Window.Callback x2 = x();
            if (x2 != null && !this.Q) {
                x2.onPanelClosed(108, kVar);
            }
            this.J = false;
        }
    }

    public final boolean b(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState a2 = a(i2, true);
            if (!a2.o) {
                return b(a2, keyEvent);
            }
        }
        return false;
    }

    public final boolean b(boolean z2) {
        if (this.Q) {
            return false;
        }
        int m2 = m();
        boolean b2 = b(h(m2), z2);
        if (m2 == 0) {
            v().e();
        } else {
            e eVar = this.V;
            if (eVar != null) {
                eVar.a();
            }
        }
        if (m2 == 3) {
            u().e();
        } else {
            e eVar2 = this.W;
            if (eVar2 != null) {
                eVar2.a();
            }
        }
        return b2;
    }

    public final void a(k kVar, boolean z2) {
        F f2 = this.p;
        if (f2 == null || !f2.d() || (ViewConfiguration.get(this.f260i).hasPermanentMenuKey() && !this.p.e())) {
            PanelFeatureState a2 = a(0, true);
            a2.q = true;
            a(a2, false);
            a(a2, (KeyEvent) null);
            return;
        }
        Window.Callback x2 = x();
        if (this.p.a() && z2) {
            this.p.f();
            if (!this.Q) {
                x2.onPanelClosed(108, a(0, true).f273j);
            }
        } else if (x2 != null && !this.Q) {
            if (this.X && (this.Y & 1) != 0) {
                this.f261j.getDecorView().removeCallbacks(this.Z);
                this.Z.run();
            }
            PanelFeatureState a3 = a(0, true);
            k kVar2 = a3.f273j;
            if (kVar2 != null && !a3.r && x2.onPreparePanel(0, a3.f272i, kVar2)) {
                x2.onMenuOpened(108, a3.f273j);
                this.p.g();
            }
        }
    }

    public int b() {
        return this.R;
    }

    public final boolean b(int i2, boolean z2) {
        int i3 = this.f260i.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        boolean z3 = true;
        int i4 = i2 != 1 ? i2 != 2 ? i3 : 32 : 16;
        boolean z4 = z();
        boolean z5 = false;
        if (i4 != i3 && !z4 && Build.VERSION.SDK_INT >= 17 && !this.N && (this.f259h instanceof ContextThemeWrapper)) {
            Configuration configuration = new Configuration();
            configuration.uiMode = (configuration.uiMode & -49) | i4;
            try {
                ((ContextThemeWrapper) this.f259h).applyOverrideConfiguration(configuration);
                z5 = true;
            } catch (IllegalStateException e2) {
                Log.e("AppCompatDelegate", "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()", e2);
            }
        }
        int i5 = this.f260i.getResources().getConfiguration().uiMode & 48;
        if (!z5 && i5 != i4 && z2 && !z4 && this.N && (Build.VERSION.SDK_INT >= 17 || this.O)) {
            Object obj = this.f259h;
            if (obj instanceof Activity) {
                b.i.a.b.b((Activity) obj);
                z5 = true;
            }
        }
        if (z5 || i5 == i4) {
            z3 = z5;
        } else {
            c(i4, z4);
        }
        if (z3) {
            Object obj2 = this.f259h;
            if (obj2 instanceof C0202m) {
                ((C0202m) obj2).c(i2);
            }
        }
        return z3;
    }

    public final boolean a(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f272i;
        boolean z2 = true;
        if (view != null) {
            panelFeatureState.f271h = view;
            return true;
        } else if (panelFeatureState.f273j == null) {
            return false;
        } else {
            if (this.r == null) {
                this.r = new h();
            }
            panelFeatureState.f271h = (View) panelFeatureState.a((t.a) this.r);
            if (panelFeatureState.f271h == null) {
                z2 = false;
            }
            return z2;
        }
    }

    public void a(PanelFeatureState panelFeatureState, boolean z2) {
        if (z2 && panelFeatureState.f264a == 0) {
            F f2 = this.p;
            if (f2 != null && f2.a()) {
                b(panelFeatureState.f273j);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f260i.getSystemService("window");
        if (windowManager != null && panelFeatureState.o) {
            ViewGroup viewGroup = panelFeatureState.f270g;
            if (viewGroup != null) {
                windowManager.removeView(viewGroup);
                if (z2) {
                    a(panelFeatureState.f264a, panelFeatureState, null);
                }
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.f271h = null;
        panelFeatureState.q = true;
        if (this.L == panelFeatureState) {
            this.L = null;
        }
    }

    public void a(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.K;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f273j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !this.Q) {
            this.f262k.a().onPanelClosed(i2, menu);
        }
    }

    public PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.K;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.f273j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    public PanelFeatureState a(int i2, boolean z2) {
        PanelFeatureState[] panelFeatureStateArr = this.K;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[(i2 + 1)];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.K = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    public final boolean a(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        boolean z2 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if (panelFeatureState.m || b(panelFeatureState, keyEvent)) {
            k kVar = panelFeatureState.f273j;
            if (kVar != null) {
                z2 = kVar.performShortcut(i2, keyEvent, i3);
            }
        }
        if (z2 && (i3 & 1) == 0 && this.p == null) {
            a(panelFeatureState, true);
        }
        return z2;
    }
}
