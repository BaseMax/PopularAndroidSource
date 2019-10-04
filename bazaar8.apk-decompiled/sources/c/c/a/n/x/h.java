package c.c.a.n.x;

import androidx.preference.Preference;
import com.farsitel.bazaar.ui.settings.SettingsFragment;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
final class h implements Preference.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SettingsFragment f7077a;

    public h(SettingsFragment settingsFragment) {
        this.f7077a = settingsFragment;
    }

    public final boolean a(Preference preference, Object obj) {
        a db = this.f7077a.db();
        if (obj != null) {
            db.c(((Boolean) obj).booleanValue());
            return true;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
    }
}
