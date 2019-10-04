package b.x;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.z;
import b.y.a.C0345o;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PreferenceGroupAdapter */
public class w extends RecyclerView.a<B> implements Preference.a, PreferenceGroup.b {

    /* renamed from: c  reason: collision with root package name */
    public PreferenceGroup f3376c;

    /* renamed from: d  reason: collision with root package name */
    public List<Preference> f3377d;

    /* renamed from: e  reason: collision with root package name */
    public List<Preference> f3378e;

    /* renamed from: f  reason: collision with root package name */
    public List<a> f3379f;

    /* renamed from: g  reason: collision with root package name */
    public a f3380g;

    /* renamed from: h  reason: collision with root package name */
    public Handler f3381h;

    /* renamed from: i  reason: collision with root package name */
    public C0319b f3382i;

    /* renamed from: j  reason: collision with root package name */
    public Runnable f3383j;

    /* compiled from: PreferenceGroupAdapter */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3384a;

        /* renamed from: b  reason: collision with root package name */
        public int f3385b;

        /* renamed from: c  reason: collision with root package name */
        public String f3386c;

        public a() {
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f3384a == aVar.f3384a && this.f3385b == aVar.f3385b && TextUtils.equals(this.f3386c, aVar.f3386c)) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return ((((527 + this.f3384a) * 31) + this.f3385b) * 31) + this.f3386c.hashCode();
        }

        public a(a aVar) {
            this.f3384a = aVar.f3384a;
            this.f3385b = aVar.f3385b;
            this.f3386c = aVar.f3386c;
        }
    }

    public w(PreferenceGroup preferenceGroup) {
        this(preferenceGroup, new Handler());
    }

    public final void a(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.P();
        int N = preferenceGroup.N();
        for (int i2 = 0; i2 < N; i2++) {
            Preference g2 = preferenceGroup.g(i2);
            list.add(g2);
            c(g2);
            if (g2 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) g2;
                if (preferenceGroup2.O()) {
                    a(list, preferenceGroup2);
                }
            }
            g2.a((Preference.a) this);
        }
    }

    public final void c(Preference preference) {
        a a2 = a(preference, (a) null);
        if (!this.f3379f.contains(a2)) {
            this.f3379f.add(a2);
        }
    }

    public void e() {
        for (Preference a2 : this.f3378e) {
            a2.a((Preference.a) null);
        }
        ArrayList<Preference> arrayList = new ArrayList<>(this.f3378e.size());
        a((List<Preference>) arrayList, this.f3376c);
        List<Preference> b2 = this.f3382i.b(this.f3376c);
        List<Preference> list = this.f3377d;
        this.f3377d = b2;
        this.f3378e = arrayList;
        y q = this.f3376c.q();
        if (q == null || q.e() == null) {
            d();
        } else {
            C0345o.a(new v(this, list, b2, q.e())).a((RecyclerView.a) this);
        }
        for (Preference f2 : arrayList) {
            f2.f();
        }
    }

    public Preference f(int i2) {
        if (i2 < 0 || i2 >= a()) {
            return null;
        }
        return this.f3377d.get(i2);
    }

    public w(PreferenceGroup preferenceGroup, Handler handler) {
        this.f3380g = new a();
        this.f3383j = new u(this);
        this.f3376c = preferenceGroup;
        this.f3381h = handler;
        this.f3382i = new C0319b(preferenceGroup, this);
        this.f3376c.a((Preference.a) this);
        this.f3377d = new ArrayList();
        this.f3378e = new ArrayList();
        this.f3379f = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f3376c;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            a(((PreferenceScreen) preferenceGroup2).Q());
        } else {
            a(true);
        }
        e();
    }

    public void b(Preference preference) {
        int indexOf = this.f3377d.indexOf(preference);
        if (indexOf != -1) {
            a(indexOf, (Object) preference);
        }
    }

    public int b(int i2) {
        this.f3380g = a(f(i2), this.f3380g);
        int indexOf = this.f3379f.indexOf(this.f3380g);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.f3379f.size();
        this.f3379f.add(new a(this.f3380g));
        return size;
    }

    public B b(ViewGroup viewGroup, int i2) {
        a aVar = this.f3379f.get(i2);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes(null, I.BackgroundStyle);
        Drawable drawable = obtainStyledAttributes.getDrawable(I.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = b.i.b.a.c(viewGroup.getContext(), 17301602);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(aVar.f3384a, viewGroup, false);
        if (inflate.getBackground() == null) {
            z.a(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup2 != null) {
            int i3 = aVar.f3385b;
            if (i3 != 0) {
                from.inflate(i3, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new B(inflate);
    }

    public final a a(Preference preference, a aVar) {
        if (aVar == null) {
            aVar = new a();
        }
        aVar.f3386c = preference.getClass().getName();
        aVar.f3384a = preference.n();
        aVar.f3385b = preference.u();
        return aVar;
    }

    public int a() {
        return this.f3377d.size();
    }

    public long a(int i2) {
        if (!c()) {
            return -1;
        }
        return f(i2).getId();
    }

    public void a(Preference preference) {
        this.f3381h.removeCallbacks(this.f3383j);
        this.f3381h.post(this.f3383j);
    }

    /* renamed from: a */
    public void b(B b2, int i2) {
        f(i2).a(b2);
    }
}
