package c.c.a.n.x.a;

import android.view.View;
import com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference;

/* compiled from: ScheduleUpdatePreference.kt */
final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ScheduleUpdatePreference f7062a;

    public a(ScheduleUpdatePreference scheduleUpdatePreference) {
        this.f7062a = scheduleUpdatePreference;
    }

    public final void onClick(View view) {
        ScheduleUpdatePreference.b P = this.f7062a.P();
        if (P != null) {
            P.a();
        }
    }
}
