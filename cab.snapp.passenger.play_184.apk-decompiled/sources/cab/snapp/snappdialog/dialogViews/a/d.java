package cab.snapp.snappdialog.dialogViews.a;

import android.text.TextWatcher;
import android.widget.CompoundButton;

public final class d extends c {

    /* renamed from: a  reason: collision with root package name */
    String f1476a;

    /* renamed from: b  reason: collision with root package name */
    String f1477b;
    String c;
    String d;
    String e;
    String f;
    String g;
    boolean h;
    String i;
    int j;
    TextWatcher k;
    TextWatcher l;
    CompoundButton.OnCheckedChangeListener m;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private d f1478a = new d((byte) 0);

        public final a setMessage(String str) {
            this.f1478a.f1476a = str;
            return this;
        }

        public final a setFirstEditTextTitle(String str) {
            this.f1478a.f1477b = str;
            return this;
        }

        public final a setFirstEditTextHint(String str) {
            this.f1478a.c = str;
            return this;
        }

        public final a setFirstEditTextText(String str) {
            this.f1478a.d = str;
            return this;
        }

        public final a setSecondEditTextTitle(String str) {
            this.f1478a.e = str;
            return this;
        }

        public final a setSecondEditTextHint(String str) {
            this.f1478a.f = str;
            return this;
        }

        public final a setSecondEditTextText(String str) {
            this.f1478a.g = str;
            return this;
        }

        public final a setCheckboxCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
            this.f1478a.m = onCheckedChangeListener;
            return this;
        }

        public final a setCheckboxIsChecked(boolean z) {
            this.f1478a.h = z;
            return this;
        }

        public final a setChekboxText(String str) {
            this.f1478a.i = str;
            return this;
        }

        public final a setFirstEtTextWatcher(TextWatcher textWatcher) {
            this.f1478a.k = textWatcher;
            return this;
        }

        public final a setSecondEtTextWatcher(TextWatcher textWatcher) {
            this.f1478a.l = textWatcher;
            return this;
        }

        public final a setDirection(int i) {
            if (i == 1002 || i == 1001) {
                this.f1478a.j = i;
            }
            return this;
        }

        public final d build() {
            return this.f1478a;
        }
    }

    public final int getType() {
        return 305;
    }

    /* synthetic */ d(byte b2) {
        this();
    }

    private d() {
        this.h = true;
        this.j = 0;
    }

    public final String getMessage() {
        return this.f1476a;
    }

    public final String getFirstEtTitle() {
        return this.f1477b;
    }

    public final String getFirstEtHint() {
        return this.c;
    }

    public final String getFirstEtText() {
        return this.d;
    }

    public final String getSecondEtTitle() {
        return this.e;
    }

    public final String getSecondEtHint() {
        return this.f;
    }

    public final String getSecondEtText() {
        return this.g;
    }

    public final CompoundButton.OnCheckedChangeListener getCheckedChangeListener() {
        return this.m;
    }

    public final boolean isCheckboxIsChecked() {
        return this.h;
    }

    public final String getCheckboxText() {
        return this.i;
    }

    public final TextWatcher getFirstEtTextWatcher() {
        return this.k;
    }

    public final TextWatcher getSecondEtTextWatcher() {
        return this.l;
    }

    public final int getDirection() {
        return this.j;
    }
}
