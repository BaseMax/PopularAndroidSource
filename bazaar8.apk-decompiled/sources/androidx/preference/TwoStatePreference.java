package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.preference.Preference;
import b.x.B;

public abstract class TwoStatePreference extends Preference {
    public CharSequence N;
    public CharSequence O;
    public boolean P;
    public boolean Q;
    public boolean R;

    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new M();

        /* renamed from: a  reason: collision with root package name */
        public boolean f763a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f763a = parcel.readInt() != 1 ? false : true;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f763a ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public void D() {
        super.D();
        boolean z = !N();
        if (a((Object) Boolean.valueOf(z))) {
            d(z);
        }
    }

    public Parcelable F() {
        Parcelable F = super.F();
        if (x()) {
            return F;
        }
        SavedState savedState = new SavedState(F);
        savedState.f763a = N();
        return savedState;
    }

    public boolean I() {
        if ((this.R ? this.P : !this.P) || super.I()) {
            return true;
        }
        return false;
    }

    public CharSequence L() {
        return this.O;
    }

    public CharSequence M() {
        return this.N;
    }

    public boolean N() {
        return this.P;
    }

    public Object a(TypedArray typedArray, int i2) {
        return Boolean.valueOf(typedArray.getBoolean(i2, false));
    }

    public void b(Object obj) {
        if (obj == null) {
            obj = false;
        }
        d(a(((Boolean) obj).booleanValue()));
    }

    public void c(CharSequence charSequence) {
        this.O = charSequence;
        if (!N()) {
            A();
        }
    }

    public void d(boolean z) {
        boolean z2 = this.P != z;
        if (z2 || !this.Q) {
            this.P = z;
            this.Q = true;
            c(z);
            if (z2) {
                b(I());
                A();
            }
        }
    }

    public void e(boolean z) {
        this.R = z;
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        d(savedState.f763a);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void b(B b2) {
        b(b2.c(16908304));
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0049  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(android.view.View r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof android.widget.TextView
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            android.widget.TextView r5 = (android.widget.TextView) r5
            r0 = 1
            boolean r1 = r4.P
            r2 = 0
            if (r1 == 0) goto L_0x001c
            java.lang.CharSequence r1 = r4.N
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x001c
            java.lang.CharSequence r0 = r4.N
            r5.setText(r0)
        L_0x001a:
            r0 = 0
            goto L_0x002e
        L_0x001c:
            boolean r1 = r4.P
            if (r1 != 0) goto L_0x002e
            java.lang.CharSequence r1 = r4.O
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x002e
            java.lang.CharSequence r0 = r4.O
            r5.setText(r0)
            goto L_0x001a
        L_0x002e:
            if (r0 == 0) goto L_0x003e
            java.lang.CharSequence r1 = r4.s()
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L_0x003e
            r5.setText(r1)
            r0 = 0
        L_0x003e:
            r1 = 8
            if (r0 != 0) goto L_0x0043
            r1 = 0
        L_0x0043:
            int r0 = r5.getVisibility()
            if (r1 == r0) goto L_0x004c
            r5.setVisibility(r1)
        L_0x004c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.b(android.view.View):void");
    }

    public void d(CharSequence charSequence) {
        this.N = charSequence;
        if (N()) {
            A();
        }
    }
}
