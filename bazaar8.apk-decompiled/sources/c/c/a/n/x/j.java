package c.c.a.n.x;

import androidx.preference.Preference;
import c.c.a.n.x.a.c;
import com.farsitel.bazaar.ui.settings.SettingsFragment;
import com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
public final class j implements c.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SettingsFragment f7079a;

    public j(SettingsFragment settingsFragment) {
        this.f7079a = settingsFragment;
    }

    public void a(int i2, int i3) {
        a.a(this.f7079a.db(), i2, i3, 0, 0, 12, null);
        Preference a2 = this.f7079a.a((CharSequence) "update_scheduling");
        if (a2 != null) {
            ((ScheduleUpdatePreference) a2).b(this.f7079a.cb());
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference");
    }
}
