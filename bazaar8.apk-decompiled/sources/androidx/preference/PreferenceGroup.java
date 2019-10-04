package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.preference.Preference;
import b.f.i;
import b.x.I;
import b.x.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class PreferenceGroup extends Preference {
    public List<Preference> N;
    public boolean O;
    public int P;
    public boolean Q;
    public int R;
    public a S;
    public final i<String, Long> T;
    public final Handler U;
    public final Runnable V;

    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new t();

        /* renamed from: a  reason: collision with root package name */
        public int f757a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f757a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f757a);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.f757a = i2;
        }
    }

    public interface a {
        void a();
    }

    public interface b {
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.O = true;
        this.P = 0;
        this.Q = false;
        this.R = Integer.MAX_VALUE;
        this.S = null;
        this.T = new i<>();
        this.U = new Handler();
        this.V = new s(this);
        this.N = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.PreferenceGroup, i2, i3);
        int i4 = I.PreferenceGroup_orderingFromXml;
        this.O = b.i.b.a.i.a(obtainStyledAttributes, i4, i4, true);
        if (obtainStyledAttributes.hasValue(I.PreferenceGroup_initialExpandedChildrenCount)) {
            int i5 = I.PreferenceGroup_initialExpandedChildrenCount;
            h(b.i.b.a.i.a(obtainStyledAttributes, i5, i5, Integer.MAX_VALUE));
        }
        obtainStyledAttributes.recycle();
    }

    public void C() {
        super.C();
        this.Q = true;
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            g(i2).C();
        }
    }

    public void E() {
        super.E();
        this.Q = false;
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            g(i2).E();
        }
    }

    public Parcelable F() {
        return new SavedState(super.F(), this.R);
    }

    public int L() {
        return this.R;
    }

    public a M() {
        return this.S;
    }

    public int N() {
        return this.N.size();
    }

    public boolean O() {
        return true;
    }

    public void P() {
        synchronized (this) {
            Collections.sort(this.N);
        }
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            g(i2).a(bundle);
        }
    }

    public void b(boolean z) {
        super.b(z);
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            g(i2).b(this, z);
        }
    }

    public Preference c(CharSequence charSequence) {
        if (TextUtils.equals(m(), charSequence)) {
            return this;
        }
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            Preference g2 = g(i2);
            String m = g2.m();
            if (m != null && m.equals(charSequence)) {
                return g2;
            }
            if (g2 instanceof PreferenceGroup) {
                Preference c2 = ((PreferenceGroup) g2).c(charSequence);
                if (c2 != null) {
                    return c2;
                }
            }
        }
        return null;
    }

    public void d(boolean z) {
        this.O = z;
    }

    public boolean e(Preference preference) {
        long j2;
        if (this.N.contains(preference)) {
            return true;
        }
        if (preference.m() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.getParent() != null) {
                preferenceGroup = preferenceGroup.getParent();
            }
            String m = preference.m();
            if (preferenceGroup.c(m) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + m + "\". This can cause unintended behaviour," + " please use unique keys for every preference.");
            }
        }
        if (preference.o() == Integer.MAX_VALUE) {
            if (this.O) {
                int i2 = this.P;
                this.P = i2 + 1;
                preference.e(i2);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).d(this.O);
            }
        }
        int binarySearch = Collections.binarySearch(this.N, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * -1) - 1;
        }
        if (!f(preference)) {
            return false;
        }
        synchronized (this) {
            this.N.add(binarySearch, preference);
        }
        y q = q();
        String m2 = preference.m();
        if (m2 == null || !this.T.containsKey(m2)) {
            j2 = q.b();
        } else {
            j2 = this.T.get(m2).longValue();
            this.T.remove(m2);
        }
        preference.a(q, j2);
        preference.a(this);
        if (this.Q) {
            preference.C();
        }
        B();
        return true;
    }

    public boolean f(Preference preference) {
        preference.b(this, I());
        return true;
    }

    public Preference g(int i2) {
        return this.N.get(i2);
    }

    public void h(int i2) {
        if (i2 != Integer.MAX_VALUE && !v()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.R = i2;
    }

    public void d(Preference preference) {
        e(preference);
    }

    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.R = savedState.f757a;
        super.a(savedState.getSuperState());
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        int N2 = N();
        for (int i2 = 0; i2 < N2; i2++) {
            g(i2).b(bundle);
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
