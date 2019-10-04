package b.x;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import androidx.preference.EditTextPreference;

/* renamed from: b.x.e  reason: case insensitive filesystem */
/* compiled from: EditTextPreferenceDialogFragmentCompat */
public class C0322e extends o {
    public EditText ra;
    public CharSequence sa;

    public static C0322e c(String str) {
        C0322e eVar = new C0322e();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        eVar.m(bundle);
        return eVar;
    }

    public boolean Ra() {
        return true;
    }

    public final EditTextPreference Sa() {
        return (EditTextPreference) Qa();
    }

    public void b(View view) {
        super.b(view);
        this.ra = (EditText) view.findViewById(16908291);
        this.ra.requestFocus();
        EditText editText = this.ra;
        if (editText != null) {
            editText.setText(this.sa);
            EditText editText2 = this.ra;
            editText2.setSelection(editText2.getText().length());
            return;
        }
        throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.sa);
    }

    public void m(boolean z) {
        if (z) {
            String obj = this.ra.getText().toString();
            if (Sa().a((Object) obj)) {
                Sa().d(obj);
            }
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        if (bundle == null) {
            this.sa = Sa().R();
        } else {
            this.sa = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }
}
