package com.crashlytics.android;

import android.content.Context;
import com.crashlytics.android.CrashlyticsInitProvider;
import e.a.a.a.a.b.n;

public class ManifestEnabledCheckStrategy implements CrashlyticsInitProvider.EnabledCheckStrategy {
    public boolean isCrashlyticsEnabled(Context context) {
        return n.a(context).b();
    }
}
