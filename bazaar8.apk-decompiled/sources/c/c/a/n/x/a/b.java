package c.c.a.n.x.a;

import android.view.View;
import com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference;

/* compiled from: ScheduleUpdatePreference.kt */
final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ScheduleUpdatePreference f7063a;

    public b(ScheduleUpdatePreference scheduleUpdatePreference) {
        this.f7063a = scheduleUpdatePreference;
    }

    public final void onClick(View view) {
        ScheduleUpdatePreference.b O = this.f7063a.O();
        if (O != null) {
            O.a();
        }
    }
}
