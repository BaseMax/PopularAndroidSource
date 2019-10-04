package c.c.a.n.x;

import androidx.preference.Preference;
import c.c.a.n.x.a.c;
import com.farsitel.bazaar.ui.settings.SettingsFragment;
import com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
public final class i implements c.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SettingsFragment f7078a;

    public i(SettingsFragment settingsFragment) {
        this.f7078a = settingsFragment;
    }

    public void a(int i2, int i3) {
        a.a(this.f7078a.db(), 0, 0, i2, i3, 3, null);
        Preference a2 = this.f7078a.a((CharSequence) "update_scheduling");
        if (a2 != null) {
            ((ScheduleUpdatePreference) a2).a(this.f7078a.bb());
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference");
    }
}
