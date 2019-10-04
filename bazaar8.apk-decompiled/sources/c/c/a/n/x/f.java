package c.c.a.n.x;

import androidx.fragment.app.Fragment;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import com.farsitel.bazaar.core.app.Permission;
import com.farsitel.bazaar.ui.settings.SettingsFragment;
import h.a.k;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
final class f implements Preference.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SettingsFragment f7075a;

    public f(SettingsFragment settingsFragment) {
        this.f7075a = settingsFragment;
    }

    public final boolean a(Preference preference, Object obj) {
        if (preference != null) {
            CheckBoxPreference checkBoxPreference = (CheckBoxPreference) preference;
            boolean N = checkBoxPreference.N();
            if (obj != null) {
                boolean booleanValue = ((Boolean) obj).booleanValue();
                if (N == booleanValue) {
                    return false;
                }
                if (booleanValue) {
                    SettingsFragment.c(this.f7075a).a((List<? extends Permission>) k.a(Permission.WRITE_EXTERNAL_STORAGE), (Fragment) this.f7075a, 12456);
                } else {
                    checkBoxPreference.d(false);
                }
                return true;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
    }
}
