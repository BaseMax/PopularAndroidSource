package c.c.a.n.x;

import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import b.w.C0313j;
import b.w.b.b;
import c.c.a.d;
import c.c.a.d.a.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.settings.SettingsFragment;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
public final class k implements c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SettingsFragment f7080a;

    public k(SettingsFragment settingsFragment) {
        this.f7080a = settingsFragment;
    }

    public void a(int i2) {
        if (i2 == 12456) {
            Preference a2 = this.f7080a.a((CharSequence) "keep_backup_of_apps");
            if (a2 != null) {
                ((CheckBoxPreference) a2).d(false);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        } else if (i2 == 12457) {
            Preference a3 = this.f7080a.a((CharSequence) "location_base_offer");
            if (a3 != null) {
                ((CheckBoxPreference) a3).d(false);
                C0313j a4 = b.a(this.f7080a);
                d.l lVar = d.f4738a;
                String b2 = this.f7080a.b((int) R.string.enable_location_in_setting);
                j.a((Object) b2, "getString(R.string.enable_location_in_setting)");
                c.c.a.i.c.a(a4, d.l.a(lVar, null, b2, 1, null));
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        }
    }

    public void b(int i2) {
        if (i2 == 12456) {
            Preference a2 = this.f7080a.a((CharSequence) "keep_backup_of_apps");
            if (a2 != null) {
                ((CheckBoxPreference) a2).d(true);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        } else if (i2 == 12457) {
            Preference a3 = this.f7080a.a((CharSequence) "location_base_offer");
            if (a3 != null) {
                ((CheckBoxPreference) a3).d(true);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        }
    }

    public void c(int i2) {
        if (i2 == 12456) {
            Preference a2 = this.f7080a.a((CharSequence) "keep_backup_of_apps");
            if (a2 != null) {
                ((CheckBoxPreference) a2).d(false);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        } else if (i2 == 12457) {
            Preference a3 = this.f7080a.a((CharSequence) "location_base_offer");
            if (a3 != null) {
                ((CheckBoxPreference) a3).d(false);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        }
    }
}
