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

public class EditTextPreference extends DialogPreference {
    public String T;

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0321d();

        /* renamed from: a  reason: collision with root package name */
        public String f742a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f742a = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.f742a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public Parcelable F() {
        Parcelable F = super.F();
        if (x()) {
            return F;
        }
        SavedState savedState = new SavedState(F);
        savedState.f742a = R();
        return savedState;
    }

    public boolean I() {
        return TextUtils.isEmpty(this.T) || super.I();
    }

    public String R() {
        return this.T;
    }

    public Object a(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    public void b(Object obj) {
        d(b((String) obj));
    }

    public void d(String str) {
        boolean I = I();
        this.T = str;
        c(str);
        boolean I2 = I();
        if (I2 != I) {
            b(I2);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        d(savedState.f742a);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.editTextPreferenceStyle, 16842898));
    }
}
