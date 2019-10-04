package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.Preference;
import b.x.B;
import b.x.C;
import b.x.E;
import b.x.I;

public class SeekBarPreference extends Preference {
    public int N;
    public int O;
    public int P;
    public int Q;
    public boolean R;
    public SeekBar S;
    public TextView T;
    public boolean U;
    public boolean V;
    public SeekBar.OnSeekBarChangeListener W;
    public View.OnKeyListener X;

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new L();

        /* renamed from: a  reason: collision with root package name */
        public int f758a;

        /* renamed from: b  reason: collision with root package name */
        public int f759b;

        /* renamed from: c  reason: collision with root package name */
        public int f760c;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f758a = parcel.readInt();
            this.f759b = parcel.readInt();
            this.f760c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f758a);
            parcel.writeInt(this.f759b);
            parcel.writeInt(this.f760c);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.W = new J(this);
        this.X = new K(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.SeekBarPreference, i2, i3);
        this.O = obtainStyledAttributes.getInt(I.SeekBarPreference_min, 0);
        g(obtainStyledAttributes.getInt(I.SeekBarPreference_android_max, 100));
        h(obtainStyledAttributes.getInt(I.SeekBarPreference_seekBarIncrement, 0));
        this.U = obtainStyledAttributes.getBoolean(I.SeekBarPreference_adjustable, true);
        this.V = obtainStyledAttributes.getBoolean(I.SeekBarPreference_showSeekBarValue, true);
        obtainStyledAttributes.recycle();
    }

    public Parcelable F() {
        Parcelable F = super.F();
        if (x()) {
            return F;
        }
        SavedState savedState = new SavedState(F);
        savedState.f758a = this.N;
        savedState.f759b = this.O;
        savedState.f760c = this.P;
        return savedState;
    }

    public void a(B b2) {
        super.a(b2);
        b2.f891b.setOnKeyListener(this.X);
        this.S = (SeekBar) b2.c(E.seekbar);
        this.T = (TextView) b2.c(E.seekbar_value);
        if (this.V) {
            this.T.setVisibility(0);
        } else {
            this.T.setVisibility(8);
            this.T = null;
        }
        SeekBar seekBar = this.S;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.W);
        this.S.setMax(this.P - this.O);
        int i2 = this.Q;
        if (i2 != 0) {
            this.S.setKeyProgressIncrement(i2);
        } else {
            this.Q = this.S.getKeyProgressIncrement();
        }
        this.S.setProgress(this.N - this.O);
        TextView textView = this.T;
        if (textView != null) {
            textView.setText(String.valueOf(this.N));
        }
        this.S.setEnabled(w());
    }

    public void b(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        i(a(((Integer) obj).intValue()));
    }

    public final void g(int i2) {
        int i3 = this.O;
        if (i2 < i3) {
            i2 = i3;
        }
        if (i2 != this.P) {
            this.P = i2;
            A();
        }
    }

    public final void h(int i2) {
        if (i2 != this.Q) {
            this.Q = Math.min(this.P - this.O, Math.abs(i2));
            A();
        }
    }

    public void i(int i2) {
        a(i2, true);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C.seekBarPreferenceStyle);
    }

    public Object a(TypedArray typedArray, int i2) {
        return Integer.valueOf(typedArray.getInt(i2, 0));
    }

    public final void a(int i2, boolean z) {
        int i3 = this.O;
        if (i2 < i3) {
            i2 = i3;
        }
        int i4 = this.P;
        if (i2 > i4) {
            i2 = i4;
        }
        if (i2 != this.N) {
            this.N = i2;
            TextView textView = this.T;
            if (textView != null) {
                textView.setText(String.valueOf(this.N));
            }
            b(i2);
            if (z) {
                A();
            }
        }
    }

    public void a(SeekBar seekBar) {
        int progress = this.O + seekBar.getProgress();
        if (progress == this.N) {
            return;
        }
        if (a((Object) Integer.valueOf(progress))) {
            a(progress, false);
        } else {
            seekBar.setProgress(this.N - this.O);
        }
    }

    public void a(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        this.N = savedState.f758a;
        this.O = savedState.f759b;
        this.P = savedState.f760c;
        A();
    }
}
