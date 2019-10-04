package c.c.a.n.x;

import androidx.preference.ListPreference;
import androidx.preference.Preference;
import h.f.b.j;

/* compiled from: SettingsFragment.kt */
final class c implements Preference.b {

    /* renamed from: a  reason: collision with root package name */
    public static final c f7072a = new c();

    public final boolean a(Preference preference, Object obj) {
        String obj2 = obj.toString();
        if (preference instanceof ListPreference) {
            ListPreference listPreference = (ListPreference) preference;
            int d2 = listPreference.d(obj2);
            preference.a(d2 >= 0 ? listPreference.R()[d2] : null);
        } else {
            j.a((Object) preference, "preference");
            preference.a((CharSequence) obj2);
        }
        return true;
    }
}
