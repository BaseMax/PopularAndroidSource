package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import b.i.b.a.i;
import b.i.k.a.d;
import b.x.B;
import b.x.C;
import b.x.E;
import b.x.F;
import b.x.I;
import b.x.n;
import b.x.y;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Preference implements Comparable<Preference> {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public a H;
    public List<Preference> I;
    public PreferenceGroup J;
    public boolean K;
    public boolean L;
    public final View.OnClickListener M;

    /* renamed from: a  reason: collision with root package name */
    public Context f745a;

    /* renamed from: b  reason: collision with root package name */
    public y f746b;

    /* renamed from: c  reason: collision with root package name */
    public n f747c;

    /* renamed from: d  reason: collision with root package name */
    public long f748d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f749e;

    /* renamed from: f  reason: collision with root package name */
    public b f750f;

    /* renamed from: g  reason: collision with root package name */
    public c f751g;

    /* renamed from: h  reason: collision with root package name */
    public int f752h;

    /* renamed from: i  reason: collision with root package name */
    public int f753i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f754j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f755k;

    /* renamed from: l  reason: collision with root package name */
    public int f756l;
    public Drawable m;
    public String n;
    public Intent o;
    public String p;
    public Bundle q;
    public boolean r;
    public boolean s;
    public boolean t;
    public String u;
    public Object v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new C0330m();

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    interface a {
        void a(Preference preference);

        void b(Preference preference);
    }

    public interface b {
        boolean a(Preference preference, Object obj);
    }

    public interface c {
        boolean a(Preference preference);
    }

    public Preference(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f752h = Integer.MAX_VALUE;
        this.f753i = 0;
        this.r = true;
        this.s = true;
        this.t = true;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.A = true;
        this.C = true;
        this.E = true;
        this.F = F.preference;
        this.M = new C0329l(this);
        this.f745a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.Preference, i2, i3);
        this.f756l = i.b(obtainStyledAttributes, I.Preference_icon, I.Preference_android_icon, 0);
        this.n = i.b(obtainStyledAttributes, I.Preference_key, I.Preference_android_key);
        this.f754j = i.c(obtainStyledAttributes, I.Preference_title, I.Preference_android_title);
        this.f755k = i.c(obtainStyledAttributes, I.Preference_summary, I.Preference_android_summary);
        this.f752h = i.a(obtainStyledAttributes, I.Preference_order, I.Preference_android_order, Integer.MAX_VALUE);
        this.p = i.b(obtainStyledAttributes, I.Preference_fragment, I.Preference_android_fragment);
        this.F = i.b(obtainStyledAttributes, I.Preference_layout, I.Preference_android_layout, F.preference);
        this.G = i.b(obtainStyledAttributes, I.Preference_widgetLayout, I.Preference_android_widgetLayout, 0);
        this.r = i.a(obtainStyledAttributes, I.Preference_enabled, I.Preference_android_enabled, true);
        this.s = i.a(obtainStyledAttributes, I.Preference_selectable, I.Preference_android_selectable, true);
        this.t = i.a(obtainStyledAttributes, I.Preference_persistent, I.Preference_android_persistent, true);
        this.u = i.b(obtainStyledAttributes, I.Preference_dependency, I.Preference_android_dependency);
        int i4 = I.Preference_allowDividerAbove;
        this.z = i.a(obtainStyledAttributes, i4, i4, this.s);
        int i5 = I.Preference_allowDividerBelow;
        this.A = i.a(obtainStyledAttributes, i5, i5, this.s);
        if (obtainStyledAttributes.hasValue(I.Preference_defaultValue)) {
            this.v = a(obtainStyledAttributes, I.Preference_defaultValue);
        } else if (obtainStyledAttributes.hasValue(I.Preference_android_defaultValue)) {
            this.v = a(obtainStyledAttributes, I.Preference_android_defaultValue);
        }
        this.E = i.a(obtainStyledAttributes, I.Preference_shouldDisableView, I.Preference_android_shouldDisableView, true);
        this.B = obtainStyledAttributes.hasValue(I.Preference_singleLineTitle);
        if (this.B) {
            this.C = i.a(obtainStyledAttributes, I.Preference_singleLineTitle, I.Preference_android_singleLineTitle, true);
        }
        this.D = i.a(obtainStyledAttributes, I.Preference_iconSpaceReserved, I.Preference_android_iconSpaceReserved, false);
        int i6 = I.Preference_isPreferenceVisible;
        this.y = i.a(obtainStyledAttributes, i6, i6, true);
        obtainStyledAttributes.recycle();
    }

    public void A() {
        a aVar = this.H;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void B() {
        a aVar = this.H;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void C() {
        H();
    }

    public void D() {
    }

    public void E() {
        K();
        this.K = true;
    }

    public Parcelable F() {
        this.L = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void G() {
        if (w()) {
            D();
            c cVar = this.f751g;
            if (cVar == null || !cVar.a(this)) {
                y q2 = q();
                if (q2 != null) {
                    y.c d2 = q2.d();
                    if (d2 != null && d2.b(this)) {
                        return;
                    }
                }
                if (this.o != null) {
                    h().startActivity(this.o);
                }
            }
        }
    }

    public final void H() {
        if (!TextUtils.isEmpty(this.u)) {
            Preference a2 = a(this.u);
            if (a2 != null) {
                a2.b(this);
                return;
            }
            throw new IllegalStateException("Dependency \"" + this.u + "\" not found for preference \"" + this.n + "\" (title: \"" + this.f754j + "\"");
        }
    }

    public boolean I() {
        return !w();
    }

    public boolean J() {
        return this.f746b != null && x() && v();
    }

    public final void K() {
        String str = this.u;
        if (str != null) {
            Preference a2 = a(str);
            if (a2 != null) {
                a2.c(this);
            }
        }
    }

    public Object a(TypedArray typedArray, int i2) {
        return null;
    }

    public void a(Intent intent) {
        this.o = intent;
    }

    public void a(d dVar) {
    }

    public void b(CharSequence charSequence) {
        if ((charSequence == null && this.f754j != null) || (charSequence != null && !charSequence.equals(this.f754j))) {
            this.f754j = charSequence;
            A();
        }
    }

    public void b(Object obj) {
    }

    public void c(int i2) {
        a(b.i.b.a.c(this.f745a, i2));
        this.f756l = i2;
    }

    public void d(int i2) {
        this.F = i2;
    }

    public void e(int i2) {
        if (i2 != this.f752h) {
            this.f752h = i2;
            B();
        }
    }

    public void f(int i2) {
        b((CharSequence) this.f745a.getString(i2));
    }

    public final void g() {
        if (p() != null) {
            a(true, this.v);
            return;
        }
        if (!J() || !r().contains(this.n)) {
            Object obj = this.v;
            if (obj != null) {
                a(false, obj);
            }
        } else {
            a(true, (Object) null);
        }
    }

    public long getId() {
        return this.f748d;
    }

    public PreferenceGroup getParent() {
        return this.J;
    }

    public Context h() {
        return this.f745a;
    }

    public Bundle i() {
        if (this.q == null) {
            this.q = new Bundle();
        }
        return this.q;
    }

    public StringBuilder j() {
        StringBuilder sb = new StringBuilder();
        CharSequence t2 = t();
        if (!TextUtils.isEmpty(t2)) {
            sb.append(t2);
            sb.append(' ');
        }
        CharSequence s2 = s();
        if (!TextUtils.isEmpty(s2)) {
            sb.append(s2);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    public String k() {
        return this.p;
    }

    public Intent l() {
        return this.o;
    }

    public String m() {
        return this.n;
    }

    public final int n() {
        return this.F;
    }

    public int o() {
        return this.f752h;
    }

    public n p() {
        n nVar = this.f747c;
        if (nVar != null) {
            return nVar;
        }
        y yVar = this.f746b;
        if (yVar != null) {
            return yVar.f();
        }
        return null;
    }

    public y q() {
        return this.f746b;
    }

    public SharedPreferences r() {
        if (this.f746b == null || p() != null) {
            return null;
        }
        return this.f746b.h();
    }

    public CharSequence s() {
        return this.f755k;
    }

    public CharSequence t() {
        return this.f754j;
    }

    public String toString() {
        return j().toString();
    }

    public final int u() {
        return this.G;
    }

    public boolean v() {
        return !TextUtils.isEmpty(this.n);
    }

    public boolean w() {
        return this.r && this.w && this.x;
    }

    public boolean x() {
        return this.t;
    }

    public boolean y() {
        return this.s;
    }

    public final boolean z() {
        return this.y;
    }

    public void a(B b2) {
        b2.f891b.setOnClickListener(this.M);
        b2.f891b.setId(this.f753i);
        TextView textView = (TextView) b2.c(16908310);
        int i2 = 8;
        if (textView != null) {
            CharSequence t2 = t();
            if (!TextUtils.isEmpty(t2)) {
                textView.setText(t2);
                textView.setVisibility(0);
                if (this.B) {
                    textView.setSingleLine(this.C);
                }
            } else {
                textView.setVisibility(8);
            }
        }
        TextView textView2 = (TextView) b2.c(16908304);
        if (textView2 != null) {
            CharSequence s2 = s();
            if (!TextUtils.isEmpty(s2)) {
                textView2.setText(s2);
                textView2.setVisibility(0);
            } else {
                textView2.setVisibility(8);
            }
        }
        ImageView imageView = (ImageView) b2.c(16908294);
        if (imageView != null) {
            if (!(this.f756l == 0 && this.m == null)) {
                if (this.m == null) {
                    this.m = b.i.b.a.c(h(), this.f756l);
                }
                Drawable drawable = this.m;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.m != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.D ? 4 : 8);
            }
        }
        View c2 = b2.c(E.icon_frame);
        if (c2 == null) {
            c2 = b2.c(16908350);
        }
        if (c2 != null) {
            if (this.m != null) {
                c2.setVisibility(0);
            } else {
                if (this.D) {
                    i2 = 4;
                }
                c2.setVisibility(i2);
            }
        }
        if (this.E) {
            a(b2.f891b, w());
        } else {
            a(b2.f891b, true);
        }
        boolean y2 = y();
        b2.f891b.setFocusable(y2);
        b2.f891b.setClickable(y2);
        b2.b(this.z);
        b2.c(this.A);
    }

    public void d(Bundle bundle) {
        b(bundle);
    }

    public final void f() {
        this.K = false;
    }

    public final void c(Preference preference) {
        List<Preference> list = this.I;
        if (list != null) {
            list.remove(preference);
        }
    }

    public final void b(Preference preference) {
        if (this.I == null) {
            this.I = new ArrayList();
        }
        this.I.add(preference);
        preference.a(this, I());
    }

    public boolean c(String str) {
        if (!J()) {
            return false;
        }
        if (TextUtils.equals(str, b((String) null))) {
            return true;
        }
        n p2 = p();
        if (p2 != null) {
            p2.b(this.n, str);
        } else {
            SharedPreferences.Editor a2 = this.f746b.a();
            a2.putString(this.n, str);
            a(a2);
        }
        return true;
    }

    public void b(boolean z2) {
        List<Preference> list = this.I;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                list.get(i2).a(this, z2);
            }
        }
    }

    public void b(Preference preference, boolean z2) {
        if (this.x == z2) {
            this.x = !z2;
            b(I());
            A();
        }
    }

    public boolean c(boolean z2) {
        if (!J()) {
            return false;
        }
        if (z2 == a(!z2)) {
            return true;
        }
        n p2 = p();
        if (p2 != null) {
            p2.b(this.n, z2);
        } else {
            SharedPreferences.Editor a2 = this.f746b.a();
            a2.putBoolean(this.n, z2);
            a(a2);
        }
        return true;
    }

    public String b(String str) {
        if (!J()) {
            return str;
        }
        n p2 = p();
        if (p2 != null) {
            return p2.a(this.n, str);
        }
        return this.f746b.h().getString(this.n, str);
    }

    public boolean b(Set<String> set) {
        if (!J()) {
            return false;
        }
        if (set.equals(a((Set<String>) null))) {
            return true;
        }
        n p2 = p();
        if (p2 != null) {
            p2.b(this.n, set);
        } else {
            SharedPreferences.Editor a2 = this.f746b.a();
            a2.putStringSet(this.n, set);
            a(a2);
        }
        return true;
    }

    public void c(Bundle bundle) {
        a(bundle);
    }

    public boolean b(int i2) {
        if (!J()) {
            return false;
        }
        if (i2 == a(i2 ^ -1)) {
            return true;
        }
        n p2 = p();
        if (p2 != null) {
            p2.b(this.n, i2);
        } else {
            SharedPreferences.Editor a2 = this.f746b.a();
            a2.putInt(this.n, i2);
            a(a2);
        }
        return true;
    }

    public void b(Bundle bundle) {
        if (v()) {
            this.L = false;
            Parcelable F2 = F();
            if (!this.L) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            } else if (F2 != null) {
                bundle.putParcelable(this.n, F2);
            }
        }
    }

    public final void a(View view, boolean z2) {
        view.setEnabled(z2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                a(viewGroup.getChildAt(childCount), z2);
            }
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.preferenceStyle, 16842894));
    }

    public void a(Drawable drawable) {
        if ((drawable == null && this.m != null) || (drawable != null && this.m != drawable)) {
            this.m = drawable;
            this.f756l = 0;
            A();
        }
    }

    public Preference(Context context) {
        this(context, null);
    }

    public void a(CharSequence charSequence) {
        if ((charSequence == null && this.f755k != null) || (charSequence != null && !charSequence.equals(this.f755k))) {
            this.f755k = charSequence;
            A();
        }
    }

    public boolean a(Object obj) {
        b bVar = this.f750f;
        return bVar == null || bVar.a(this, obj);
    }

    public void a(b bVar) {
        this.f750f = bVar;
    }

    public void a(c cVar) {
        this.f751g = cVar;
    }

    public void a(View view) {
        G();
    }

    /* renamed from: a */
    public int compareTo(Preference preference) {
        int i2 = this.f752h;
        int i3 = preference.f752h;
        if (i2 != i3) {
            return i2 - i3;
        }
        CharSequence charSequence = this.f754j;
        CharSequence charSequence2 = preference.f754j;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.f754j.toString());
    }

    public final void a(a aVar) {
        this.H = aVar;
    }

    public void a(y yVar) {
        this.f746b = yVar;
        if (!this.f749e) {
            this.f748d = yVar.b();
        }
        g();
    }

    public void a(y yVar, long j2) {
        this.f748d = j2;
        this.f749e = true;
        try {
            a(yVar);
        } finally {
            this.f749e = false;
        }
    }

    public void a(PreferenceGroup preferenceGroup) {
        this.J = preferenceGroup;
    }

    public Preference a(String str) {
        if (!TextUtils.isEmpty(str)) {
            y yVar = this.f746b;
            if (yVar != null) {
                return yVar.a((CharSequence) str);
            }
        }
        return null;
    }

    public void a(Preference preference, boolean z2) {
        if (this.w == z2) {
            this.w = !z2;
            b(I());
            A();
        }
    }

    @Deprecated
    public void a(boolean z2, Object obj) {
        b(obj);
    }

    public final void a(SharedPreferences.Editor editor) {
        if (this.f746b.i()) {
            editor.apply();
        }
    }

    public Set<String> a(Set<String> set) {
        if (!J()) {
            return set;
        }
        n p2 = p();
        if (p2 != null) {
            return p2.a(this.n, set);
        }
        return this.f746b.h().getStringSet(this.n, set);
    }

    public int a(int i2) {
        if (!J()) {
            return i2;
        }
        n p2 = p();
        if (p2 != null) {
            return p2.a(this.n, i2);
        }
        return this.f746b.h().getInt(this.n, i2);
    }

    public boolean a(boolean z2) {
        if (!J()) {
            return z2;
        }
        n p2 = p();
        if (p2 != null) {
            return p2.a(this.n, z2);
        }
        return this.f746b.h().getBoolean(this.n, z2);
    }

    public void a(Bundle bundle) {
        if (v()) {
            Parcelable parcelable = bundle.getParcelable(this.n);
            if (parcelable != null) {
                this.L = false;
                a(parcelable);
                if (!this.L) {
                    throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
                }
            }
        }
    }

    public void a(Parcelable parcelable) {
        this.L = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }
}
