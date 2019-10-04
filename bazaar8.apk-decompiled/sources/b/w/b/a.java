package b.w.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.fragment.app.Fragment;
import b.o.a.C0280d;
import b.o.a.C0290n;
import b.r.C0303i;
import b.w.C0307d;
import b.w.K;
import b.w.o;
import b.w.w;

@K.b("dialog")
/* compiled from: DialogFragmentNavigator */
public final class a extends K<C0045a> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f3259a;

    /* renamed from: b  reason: collision with root package name */
    public final C0290n f3260b;

    /* renamed from: c  reason: collision with root package name */
    public int f3261c = 0;

    /* renamed from: d  reason: collision with root package name */
    public C0303i f3262d = new DialogFragmentNavigator$1(this);

    /* renamed from: b.w.b.a$a  reason: collision with other inner class name */
    /* compiled from: DialogFragmentNavigator */
    public static class C0045a extends o implements C0307d {

        /* renamed from: j  reason: collision with root package name */
        public String f3263j;

        public C0045a(K<? extends C0045a> k2) {
            super((K<? extends o>) k2);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, d.DialogFragmentNavigator);
            String string = obtainAttributes.getString(d.DialogFragmentNavigator_android_name);
            if (string != null) {
                b(string);
            }
            obtainAttributes.recycle();
        }

        public final C0045a b(String str) {
            this.f3263j = str;
            return this;
        }

        public final String g() {
            String str = this.f3263j;
            if (str != null) {
                return str;
            }
            throw new IllegalStateException("DialogFragment class was not set");
        }
    }

    public a(Context context, C0290n nVar) {
        this.f3259a = context;
        this.f3260b = nVar;
    }

    public Bundle b() {
        if (this.f3261c == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("androidx-nav-dialogfragment:navigator:count", this.f3261c);
        return bundle;
    }

    public boolean c() {
        if (this.f3261c == 0) {
            return false;
        }
        if (this.f3260b.e()) {
            Log.i("DialogFragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return false;
        }
        C0290n nVar = this.f3260b;
        StringBuilder sb = new StringBuilder();
        sb.append("androidx-nav-fragment:navigator:dialog:");
        int i2 = this.f3261c - 1;
        this.f3261c = i2;
        sb.append(i2);
        Fragment a2 = nVar.a(sb.toString());
        if (a2 != null) {
            a2.b().b(this.f3262d);
            ((C0280d) a2).La();
        }
        return true;
    }

    public C0045a a() {
        return new C0045a(this);
    }

    public o a(C0045a aVar, Bundle bundle, w wVar, K.a aVar2) {
        if (this.f3260b.e()) {
            Log.i("DialogFragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return null;
        }
        String g2 = aVar.g();
        if (g2.charAt(0) == '.') {
            g2 = this.f3259a.getPackageName() + g2;
        }
        Fragment a2 = this.f3260b.b().a(this.f3259a.getClassLoader(), g2);
        if (C0280d.class.isAssignableFrom(a2.getClass())) {
            C0280d dVar = (C0280d) a2;
            dVar.m(bundle);
            dVar.b().a(this.f3262d);
            C0290n nVar = this.f3260b;
            StringBuilder sb = new StringBuilder();
            sb.append("androidx-nav-fragment:navigator:dialog:");
            int i2 = this.f3261c;
            this.f3261c = i2 + 1;
            sb.append(i2);
            dVar.a(nVar, sb.toString());
            return aVar;
        }
        throw new IllegalArgumentException("Dialog destination " + aVar.g() + " is not an instance of DialogFragment");
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            int i2 = 0;
            this.f3261c = bundle.getInt("androidx-nav-dialogfragment:navigator:count", 0);
            while (i2 < this.f3261c) {
                C0290n nVar = this.f3260b;
                C0280d dVar = (C0280d) nVar.a("androidx-nav-fragment:navigator:dialog:" + i2);
                if (dVar != null) {
                    dVar.b().a(this.f3262d);
                    i2++;
                } else {
                    throw new IllegalStateException("DialogFragment " + i2 + " doesn't exist in the FragmentManager");
                }
            }
        }
    }
}
