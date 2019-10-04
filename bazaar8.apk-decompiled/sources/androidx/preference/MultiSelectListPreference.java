package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.preference.Preference;
import androidx.preference.internal.AbstractMultiSelectListPreference;
import b.i.b.a.i;
import b.x.C;
import b.x.I;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreference extends AbstractMultiSelectListPreference {
    public CharSequence[] T;
    public CharSequence[] U;
    public Set<String> V;

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0326i();

        /* renamed from: a  reason: collision with root package name */
        public Set<String> f744a;

        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            this.f744a = new HashSet();
            String[] strArr = new String[readInt];
            parcel.readStringArray(strArr);
            Collections.addAll(this.f744a, strArr);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f744a.size());
            Set<String> set = this.f744a;
            parcel.writeStringArray((String[]) set.toArray(new String[set.size()]));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.V = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.MultiSelectListPreference, i2, i3);
        this.T = i.d(obtainStyledAttributes, I.MultiSelectListPreference_entries, I.MultiSelectListPreference_android_entries);
        this.U = i.d(obtainStyledAttributes, I.MultiSelectListPreference_entryValues, I.MultiSelectListPreference_android_entryValues);
        obtainStyledAttributes.recycle();
    }

    public Parcelable F() {
        Parcelable F = super.F();
        if (x()) {
            return F;
        }
        SavedState savedState = new SavedState(F);
        savedState.f744a = T();
        return savedState;
    }

    public CharSequence[] R() {
        return this.T;
    }

    public CharSequence[] S() {
        return this.U;
    }

    public Set<String> T() {
        return this.V;
    }

    public Object a(TypedArray typedArray, int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i2);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    public void b(Object obj) {
        c(a((Set<String>) (Set) obj));
    }

    public void c(Set<String> set) {
        this.V.clear();
        this.V.addAll(set);
        b(set);
    }

    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        c(savedState.f744a);
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.dialogPreferenceStyle, 16842897));
    }
}
