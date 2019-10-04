package b.o.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import b.a.C0188c;
import b.a.g;
import b.f.j;
import b.i.a.b;
import b.r.H;
import b.r.I;
import b.r.m;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* renamed from: b.o.a.i  reason: case insensitive filesystem */
/* compiled from: FragmentActivity */
public class C0285i extends C0188c implements b.a, b.c {

    /* renamed from: g  reason: collision with root package name */
    public final C0287k f3064g = C0287k.a((C0289m<?>) new a());

    /* renamed from: h  reason: collision with root package name */
    public final m f3065h = new m(this);

    /* renamed from: i  reason: collision with root package name */
    public boolean f3066i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3067j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3068k = true;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3069l;
    public boolean m;
    public boolean n;
    public int o;
    public j<String> p;

    /* renamed from: b.o.a.i$a */
    /* compiled from: FragmentActivity */
    class a extends C0289m<C0285i> implements I, g {
        public a() {
            super(C0285i.this);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            C0285i.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        public Lifecycle b() {
            return C0285i.this.f3065h;
        }

        public OnBackPressedDispatcher c() {
            return C0285i.this.c();
        }

        public H e() {
            return C0285i.this.e();
        }

        public LayoutInflater i() {
            return C0285i.this.getLayoutInflater().cloneInContext(C0285i.this);
        }

        public int j() {
            Window window = C0285i.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        public boolean k() {
            return C0285i.this.getWindow() != null;
        }

        public void l() {
            C0285i.this.u();
        }

        public void a(Fragment fragment, Intent intent, int i2, Bundle bundle) {
            C0285i.this.a(fragment, intent, i2, bundle);
        }

        public boolean b(Fragment fragment) {
            return !C0285i.this.isFinishing();
        }

        public C0285i h() {
            return C0285i.this;
        }

        public void a(Fragment fragment, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
            C0285i.this.a(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
        }

        public void a(Fragment fragment, String[] strArr, int i2) {
            C0285i.this.a(fragment, strArr, i2);
        }

        public boolean a(String str) {
            return b.a((Activity) C0285i.this, str);
        }

        public void a(Fragment fragment) {
            C0285i.this.b(fragment);
        }

        public View a(int i2) {
            return C0285i.this.findViewById(i2);
        }

        public boolean a() {
            Window window = C0285i.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    public static void b(int i2) {
        if ((i2 & -65536) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    public final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3064g.a(view, str, context, attributeSet);
    }

    public void b(Fragment fragment) {
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f3066i);
        printWriter.print(" mResumed=");
        printWriter.print(this.f3067j);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3068k);
        if (getApplication() != null) {
            b.s.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f3064g.j().a(str, fileDescriptor, printWriter, strArr);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        this.f3064g.k();
        int i4 = i2 >> 16;
        if (i4 != 0) {
            int i5 = i4 - 1;
            String a2 = this.p.a(i5);
            this.p.d(i5);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f3064g.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
            } else {
                a3.a(i2 & 65535, i3, intent);
            }
            return;
        }
        b.C0027b a4 = b.a();
        if (a4 == null || !a4.a(this, i2, i3, intent)) {
            super.onActivityResult(i2, i3, intent);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3064g.k();
        this.f3064g.a(configuration);
    }

    public void onCreate(Bundle bundle) {
        this.f3064g.a((Fragment) null);
        if (bundle != null) {
            this.f3064g.a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.o = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.p = new j<>(intArray.length);
                    for (int i2 = 0; i2 < intArray.length; i2++) {
                        this.p.c(intArray[i2], stringArray[i2]);
                    }
                }
            }
        }
        if (this.p == null) {
            this.p = new j<>();
            this.o = 0;
        }
        super.onCreate(bundle);
        this.f3065h.b(Lifecycle.Event.ON_CREATE);
        this.f3064g.b();
    }

    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 == 0) {
            return super.onCreatePanelMenu(i2, menu) | this.f3064g.a(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i2, menu);
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a2 = a(view, str, context, attributeSet);
        return a2 == null ? super.onCreateView(view, str, context, attributeSet) : a2;
    }

    public void onDestroy() {
        super.onDestroy();
        this.f3064g.c();
        this.f3065h.b(Lifecycle.Event.ON_DESTROY);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.f3064g.d();
    }

    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.f3064g.b(menuItem);
        }
        if (i2 != 6) {
            return false;
        }
        return this.f3064g.a(menuItem);
    }

    public void onMultiWindowModeChanged(boolean z) {
        this.f3064g.a(z);
    }

    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f3064g.k();
    }

    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 0) {
            this.f3064g.a(menu);
        }
        super.onPanelClosed(i2, menu);
    }

    public void onPause() {
        super.onPause();
        this.f3067j = false;
        this.f3064g.e();
        this.f3065h.b(Lifecycle.Event.ON_PAUSE);
    }

    public void onPictureInPictureModeChanged(boolean z) {
        this.f3064g.b(z);
    }

    public void onPostResume() {
        super.onPostResume();
        t();
    }

    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 == 0) {
            return a(view, menu) | this.f3064g.b(menu);
        }
        return super.onPreparePanel(i2, view, menu);
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.f3064g.k();
        int i3 = (i2 >> 16) & 65535;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.p.a(i4);
            this.p.d(i4);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f3064g.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
            } else {
                a3.a(i2 & 65535, strArr, iArr);
            }
        }
    }

    public void onResume() {
        super.onResume();
        this.f3067j = true;
        this.f3064g.k();
        this.f3064g.i();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        s();
        this.f3065h.b(Lifecycle.Event.ON_STOP);
        Parcelable l2 = this.f3064g.l();
        if (l2 != null) {
            bundle.putParcelable("android:support:fragments", l2);
        }
        if (this.p.c() > 0) {
            bundle.putInt("android:support:next_request_index", this.o);
            int[] iArr = new int[this.p.c()];
            String[] strArr = new String[this.p.c()];
            for (int i2 = 0; i2 < this.p.c(); i2++) {
                iArr[i2] = this.p.c(i2);
                strArr[i2] = this.p.f(i2);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    public void onStart() {
        super.onStart();
        this.f3068k = false;
        if (!this.f3066i) {
            this.f3066i = true;
            this.f3064g.a();
        }
        this.f3064g.k();
        this.f3064g.i();
        this.f3065h.b(Lifecycle.Event.ON_START);
        this.f3064g.g();
    }

    public void onStateNotSaved() {
        this.f3064g.k();
    }

    public void onStop() {
        super.onStop();
        this.f3068k = true;
        s();
        this.f3064g.h();
        this.f3065h.b(Lifecycle.Event.ON_STOP);
    }

    public C0290n r() {
        return this.f3064g.j();
    }

    public final void s() {
        do {
        } while (a(r(), Lifecycle.State.CREATED));
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        if (!this.n && i2 != -1) {
            b(i2);
        }
        super.startActivityForResult(intent, i2);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) {
        if (!this.m && i2 != -1) {
            b(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
    }

    public void t() {
        this.f3065h.b(Lifecycle.Event.ON_RESUME);
        this.f3064g.f();
    }

    @Deprecated
    public void u() {
        invalidateOptionsMenu();
    }

    @Deprecated
    public boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public final void a(int i2) {
        if (!this.f3069l && i2 != -1) {
            b(i2);
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a2 = a((View) null, str, context, attributeSet);
        return a2 == null ? super.onCreateView(str, context, attributeSet) : a2;
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (!this.n && i2 != -1) {
            b(i2);
        }
        super.startActivityForResult(intent, i2, bundle);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (!this.m && i2 != -1) {
            b(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        this.n = true;
        if (i2 == -1) {
            try {
                b.a(this, intent, -1, bundle);
            } finally {
                this.n = false;
            }
        } else {
            b(i2);
            b.a(this, intent, ((a(fragment) + 1) << 16) + (i2 & 65535), bundle);
            this.n = false;
        }
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        int i6 = i2;
        this.m = true;
        if (i6 == -1) {
            try {
                b.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            } finally {
                this.m = false;
            }
        } else {
            b(i2);
            b.a(this, intentSender, ((a(fragment) + 1) << 16) + (i6 & 65535), intent, i3, i4, i5, bundle);
            this.m = false;
        }
    }

    public final int a(Fragment fragment) {
        if (this.p.c() < 65534) {
            while (this.p.b(this.o) >= 0) {
                this.o = (this.o + 1) % 65534;
            }
            int i2 = this.o;
            this.p.c(i2, fragment.f662f);
            this.o = (this.o + 1) % 65534;
            return i2;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    /* JADX INFO: finally extract failed */
    public void a(Fragment fragment, String[] strArr, int i2) {
        if (i2 == -1) {
            b.a(this, strArr, i2);
            return;
        }
        b(i2);
        try {
            this.f3069l = true;
            b.a(this, strArr, ((a(fragment) + 1) << 16) + (i2 & 65535));
            this.f3069l = false;
        } catch (Throwable th) {
            this.f3069l = false;
            throw th;
        }
    }

    public static boolean a(C0290n nVar, Lifecycle.State state) {
        boolean z = false;
        for (Fragment next : nVar.c()) {
            if (next != null) {
                if (next.b().a().a(Lifecycle.State.STARTED)) {
                    next.T.d(state);
                    z = true;
                }
                if (next.K() != null) {
                    z |= a(next.D(), state);
                }
            }
        }
        return z;
    }
}
