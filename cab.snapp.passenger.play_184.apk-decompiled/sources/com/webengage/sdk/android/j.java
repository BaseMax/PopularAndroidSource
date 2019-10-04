package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.actions.database.ReportingStrategy;

public class j extends h {
    protected j(Context context) {
        super(context);
    }

    public void a(LocationTrackingStrategy locationTrackingStrategy) {
        a("location_tracking_strategy", (Object) locationTrackingStrategy.name());
    }

    public void a(ReportingStrategy reportingStrategy) {
        a("event_reporting_strategy", (Object) reportingStrategy.name());
    }

    public void a(boolean z) {
        a("location_tracking_flag", (Object) Boolean.valueOf(z));
    }

    public ReportingStrategy m() {
        return ReportingStrategy.valueOf(e("webengage_prefs.txt").getString("event_reporting_strategy", ReportingStrategy.BUFFER.name()));
    }

    public boolean n() {
        return e("webengage_prefs.txt").getBoolean("location_tracking_flag", true);
    }

    public LocationTrackingStrategy o() {
        return LocationTrackingStrategy.valueOf(e("webengage_prefs.txt").getString("location_tracking_strategy", LocationTrackingStrategy.ACCURACY_CITY.name()));
    }
}
