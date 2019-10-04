package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.preference.Preference;
import b.i.b.a.i;
import b.x.C;
import b.x.I;

public class ListPreference extends DialogPreference {
    public CharSequence[] T;
    public CharSequence[] U;
    public String V;
    public String W;
    public boolean X;

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0323f();

        /* renamed from: a  reason: collision with root package name */
        public String f743a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f743a = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.f743a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.ListPreference, i2, i3);
        this.T = i.d(obtainStyledAttributes, I.ListPreference_entries, I.ListPreference_android_entries);
        this.U = i.d(obtainStyledAttributes, I.ListPreference_entryValues, I.ListPreference_android_entryValues);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, I.Preference, i2, i3);
        this.W = i.b(obtainStyledAttributes2, I.Preference_summary, I.Preference_android_summary);
        obtainStyledAttributes2.recycle();
    }

    public Parcelable F() {
        Parcelable F = super.F();
        if (x()) {
            return F;
        }
        SavedState savedState = new SavedState(F);
        savedState.f743a = U();
        return savedState;
    }

    public CharSequence[] R() {
        return this.T;
    }

    public CharSequence S() {
        int V2 = V();
        if (V2 >= 0) {
            CharSequence[] charSequenceArr = this.T;
            if (charSequenceArr != null) {
                return charSequenceArr[V2];
            }
        }
        return null;
    }

    public CharSequence[] T() {
        return this.U;
    }

    public String U() {
        return this.V;
    }

    public final int V() {
        return d(this.V);
    }

    public void a(CharSequence charSequence) {
        super.a(charSequence);
        if (charSequence == null && this.W != null) {
            this.W = null;
        } else if (charSequence != null && !charSequence.equals(this.W)) {
            this.W = charSequence.toString();
        }
    }

    public void b(Object obj) {
        e(b((String) obj));
    }

    public int d(String str) {
        if (str != null) {
            CharSequence[] charSequenceArr = this.U;
            if (charSequenceArr != null) {
                for (int length = charSequenceArr.length - 1; length >= 0; length--) {
                    if (this.U[length].equals(str)) {
                        return length;
                    }
                }
            }
        }
        return -1;
    }

    public void e(String str) {
        boolean z = !TextUtils.equals(this.V, str);
        if (z || !this.X) {
            this.V = str;
            this.X = true;
            c(str);
            if (z) {
                A();
            }
        }
    }

    public CharSequence s() {
        Object S = S();
        String str = this.W;
        if (str == null) {
            return super.s();
        }
        Object[] objArr = new Object[1];
        if (S == null) {
            S = "";
        }
        objArr[0] = S;
        return String.format(str, objArr);
    }

    public Object a(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        e(savedState.f743a);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.dialogPreferenceStyle, 16842897));
    }
}
