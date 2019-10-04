package b.x;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.preference.internal.AbstractMultiSelectListPreference;
import b.b.a.C0201l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* renamed from: b.x.k  reason: case insensitive filesystem */
/* compiled from: MultiSelectListPreferenceDialogFragmentCompat */
public class C0328k extends o {
    public Set<String> ra = new HashSet();
    public boolean sa;
    public CharSequence[] ta;
    public CharSequence[] ua;

    public static C0328k c(String str) {
        C0328k kVar = new C0328k();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        kVar.m(bundle);
        return kVar;
    }

    public final AbstractMultiSelectListPreference Sa() {
        return (AbstractMultiSelectListPreference) Qa();
    }

    public void a(C0201l.a aVar) {
        super.a(aVar);
        int length = this.ua.length;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zArr[i2] = this.ra.contains(this.ua[i2].toString());
        }
        aVar.a(this.ta, zArr, (DialogInterface.OnMultiChoiceClickListener) new C0327j(this));
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList(this.ra));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.sa);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.ta);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.ua);
    }

    public void m(boolean z) {
        AbstractMultiSelectListPreference Sa = Sa();
        if (z && this.sa) {
            Set<String> set = this.ra;
            if (Sa.a((Object) set)) {
                Sa.c(set);
            }
        }
        this.sa = false;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        if (bundle == null) {
            AbstractMultiSelectListPreference Sa = Sa();
            if (Sa.R() == null || Sa.S() == null) {
                throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
            }
            this.ra.clear();
            this.ra.addAll(Sa.T());
            this.sa = false;
            this.ta = Sa.R();
            this.ua = Sa.S();
            return;
        }
        this.ra.clear();
        this.ra.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
        this.sa = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
        this.ta = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
        this.ua = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }
}
