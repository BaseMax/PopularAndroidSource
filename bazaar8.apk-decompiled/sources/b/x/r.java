package b.x;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.preference.DialogPreference;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import androidx.preference.internal.AbstractMultiSelectListPreference;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0280d;
import b.x.y;

/* compiled from: PreferenceFragmentCompat */
public abstract class r extends Fragment implements y.c, y.a, y.b, DialogPreference.a {
    public y Y;
    public RecyclerView Z;
    public boolean aa;
    public boolean ba;
    public Context ca;
    public int da = F.preference_list_fragment;
    public final a ea = new a();
    public Handler fa = new p(this);
    public final Runnable ga = new q(this);
    public Runnable ha;

    /* compiled from: PreferenceFragmentCompat */
    private class a extends RecyclerView.h {

        /* renamed from: a  reason: collision with root package name */
        public Drawable f3366a;

        /* renamed from: b  reason: collision with root package name */
        public int f3367b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3368c = true;

        public a() {
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
            if (a(view, recyclerView)) {
                rect.bottom = this.f3367b;
            }
        }

        public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
            if (this.f3366a != null) {
                int childCount = recyclerView.getChildCount();
                int width = recyclerView.getWidth();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = recyclerView.getChildAt(i2);
                    if (a(childAt, recyclerView)) {
                        int y = ((int) childAt.getY()) + childAt.getHeight();
                        this.f3366a.setBounds(0, y, width, this.f3367b + y);
                        this.f3366a.draw(canvas);
                    }
                }
            }
        }

        public final boolean a(View view, RecyclerView recyclerView) {
            RecyclerView.w h2 = recyclerView.h(view);
            if (!((h2 instanceof B) && ((B) h2).C())) {
                return false;
            }
            boolean z = this.f3368c;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild < recyclerView.getChildCount() - 1) {
                RecyclerView.w h3 = recyclerView.h(recyclerView.getChildAt(indexOfChild + 1));
                z = (h3 instanceof B) && ((B) h3).B();
            }
            return z;
        }

        public void b(boolean z) {
            this.f3368c = z;
        }

        public void a(Drawable drawable) {
            if (drawable != null) {
                this.f3367b = drawable.getIntrinsicHeight();
            } else {
                this.f3367b = 0;
            }
            this.f3366a = drawable;
            r.this.Z.w();
        }

        public void a(int i2) {
            this.f3367b = i2;
            r.this.Z.w();
        }
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface b {
        boolean a(r rVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface c {
        boolean a(r rVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface d {
        boolean a(r rVar, PreferenceScreen preferenceScreen);
    }

    public void La() {
        PreferenceScreen Pa = Pa();
        if (Pa != null) {
            Na().setAdapter(b(Pa));
            Pa.C();
        }
        Qa();
    }

    public Fragment Ma() {
        return null;
    }

    public final RecyclerView Na() {
        return this.Z;
    }

    public y Oa() {
        return this.Y;
    }

    public PreferenceScreen Pa() {
        return this.Y.g();
    }

    public void Qa() {
    }

    public RecyclerView.i Ra() {
        return new LinearLayoutManager(x());
    }

    public void Sa() {
    }

    public final void Ta() {
        if (!this.fa.hasMessages(1)) {
            this.fa.obtainMessage(1).sendToTarget();
        }
    }

    public final void Ua() {
        if (this.Y == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    public final void Va() {
        PreferenceScreen Pa = Pa();
        if (Pa != null) {
            Pa.E();
        }
        Sa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = this.ca.obtainStyledAttributes(null, I.PreferenceFragmentCompat, C.preferenceFragmentCompatStyle, 0);
        this.da = obtainStyledAttributes.getResourceId(I.PreferenceFragmentCompat_android_layout, this.da);
        Drawable drawable = obtainStyledAttributes.getDrawable(I.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(I.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z = obtainStyledAttributes.getBoolean(I.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(this.ca);
        View inflate = cloneInContext.inflate(this.da, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            RecyclerView c2 = c(cloneInContext, viewGroup2, bundle);
            if (c2 != null) {
                this.Z = c2;
                c2.a((RecyclerView.h) this.ea);
                a(drawable);
                if (dimensionPixelSize != -1) {
                    f(dimensionPixelSize);
                }
                this.ea.b(z);
                if (this.Z.getParent() == null) {
                    viewGroup2.addView(this.Z);
                }
                this.fa.post(this.ga);
                return inflate;
            }
            throw new RuntimeException("Could not create RecyclerView");
        }
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    public abstract void a(Bundle bundle, String str);

    public boolean b(Preference preference) {
        boolean z = false;
        if (preference.k() == null) {
            return false;
        }
        if (Ma() instanceof c) {
            z = ((c) Ma()).a(this, preference);
        }
        return (z || !(x() instanceof c)) ? z : ((c) x()).a(this, preference);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        TypedValue typedValue = new TypedValue();
        x().getTheme().resolveAttribute(C.preferenceTheme, typedValue, true);
        int i2 = typedValue.resourceId;
        if (i2 == 0) {
            i2 = H.PreferenceThemeOverlay;
        }
        this.ca = new ContextThemeWrapper(x(), i2);
        this.Y = new y(this.ca);
        this.Y.a((y.b) this);
        a(bundle, C() != null ? C().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        PreferenceScreen Pa = Pa();
        if (Pa != null) {
            Bundle bundle2 = new Bundle();
            Pa.d(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    public void f(int i2) {
        this.ea.a(i2);
    }

    public void qa() {
        this.fa.removeCallbacks(this.ga);
        this.fa.removeMessages(1);
        if (this.aa) {
            Va();
        }
        this.Z = null;
        super.qa();
    }

    public void ua() {
        super.ua();
        this.Y.a((y.c) this);
        this.Y.a((y.a) this);
    }

    public void va() {
        super.va();
        this.Y.a((y.c) null);
        this.Y.a((y.a) null);
    }

    public void e(int i2) {
        Ua();
        c(this.Y.a(this.ca, i2, Pa()));
    }

    public RecyclerView.a b(PreferenceScreen preferenceScreen) {
        return new w(preferenceScreen);
    }

    public void c(PreferenceScreen preferenceScreen) {
        if (this.Y.a(preferenceScreen) && preferenceScreen != null) {
            Sa();
            this.aa = true;
            if (this.ba) {
                Ta();
            }
        }
    }

    public RecyclerView c(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.ca.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            RecyclerView recyclerView = (RecyclerView) viewGroup.findViewById(E.recycler_view);
            if (recyclerView != null) {
                return recyclerView;
            }
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(F.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(Ra());
        recyclerView2.setAccessibilityDelegateCompat(new A(recyclerView2));
        return recyclerView2;
    }

    public void a(Drawable drawable) {
        this.ea.a(drawable);
    }

    public void a(View view, Bundle bundle) {
        super.a(view, bundle);
        if (bundle != null) {
            Bundle bundle2 = bundle.getBundle("android:preferences");
            if (bundle2 != null) {
                PreferenceScreen Pa = Pa();
                if (Pa != null) {
                    Pa.c(bundle2);
                }
            }
        }
        if (this.aa) {
            La();
            Runnable runnable = this.ha;
            if (runnable != null) {
                runnable.run();
                this.ha = null;
            }
        }
        this.ba = true;
    }

    public void a(PreferenceScreen preferenceScreen) {
        if (!(Ma() instanceof d ? ((d) Ma()).a(this, preferenceScreen) : false) && (x() instanceof d)) {
            ((d) x()).a(this, preferenceScreen);
        }
    }

    public Preference a(CharSequence charSequence) {
        y yVar = this.Y;
        if (yVar == null) {
            return null;
        }
        return yVar.a(charSequence);
    }

    public void a(Preference preference) {
        C0280d dVar;
        boolean a2 = Ma() instanceof b ? ((b) Ma()).a(this, preference) : false;
        if (!a2 && (x() instanceof b)) {
            a2 = ((b) x()).a(this, preference);
        }
        if (!a2 && J().a("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                dVar = C0322e.c(preference.m());
            } else if (preference instanceof ListPreference) {
                dVar = C0325h.c(preference.m());
            } else if (preference instanceof AbstractMultiSelectListPreference) {
                dVar = C0328k.c(preference.m());
            } else {
                throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
            }
            dVar.a((Fragment) this, 0);
            dVar.a(J(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }
}
