package b.x;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.preference.ListPreference;
import b.b.a.C0201l;

/* renamed from: b.x.h  reason: case insensitive filesystem */
/* compiled from: ListPreferenceDialogFragmentCompat */
public class C0325h extends o {
    public int ra;
    public CharSequence[] sa;
    public CharSequence[] ta;

    public static C0325h c(String str) {
        C0325h hVar = new C0325h();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        hVar.m(bundle);
        return hVar;
    }

    public final ListPreference Sa() {
        return (ListPreference) Qa();
    }

    public void a(C0201l.a aVar) {
        super.a(aVar);
        aVar.a(this.sa, this.ra, (DialogInterface.OnClickListener) new C0324g(this));
        aVar.b(null, null);
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.ra);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.sa);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.ta);
    }

    public void m(boolean z) {
        ListPreference Sa = Sa();
        if (z) {
            int i2 = this.ra;
            if (i2 >= 0) {
                String charSequence = this.ta[i2].toString();
                if (Sa.a((Object) charSequence)) {
                    Sa.e(charSequence);
                }
            }
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        if (bundle == null) {
            ListPreference Sa = Sa();
            if (Sa.R() == null || Sa.T() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            this.ra = Sa.d(Sa.U());
            this.sa = Sa.R();
            this.ta = Sa.T();
            return;
        }
        this.ra = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.sa = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.ta = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }
}
