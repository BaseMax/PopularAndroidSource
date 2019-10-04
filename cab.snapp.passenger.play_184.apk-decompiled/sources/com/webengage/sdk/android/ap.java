package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.location.Location;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.q;

class ap implements ae<AbstractWebEngage> {

    /* renamed from: a  reason: collision with root package name */
    private Object[] f5509a;

    /* renamed from: b  reason: collision with root package name */
    private int f5510b = -1;

    ap(int i, Object... objArr) {
        this.f5509a = objArr;
        this.f5510b = i;
    }

    public void a(AbstractWebEngage abstractWebEngage) {
        try {
            String str = null;
            switch (this.f5510b) {
                case 0:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.setLocationTracking(((Boolean) this.f5509a[0]).booleanValue());
                        break;
                    }
                case 1:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.setLogLevel(((Integer) this.f5509a[0]).intValue());
                        return;
                    }
                case 2:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.setEventReportingStrategy((ReportingStrategy) this.f5509a[0]);
                        return;
                    }
                case 3:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.filterCustomEvents(((Boolean) this.f5509a[0]).booleanValue());
                        return;
                    }
                case 4:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.setEveryActivityIsScreen(((Boolean) this.f5509a[0]).booleanValue());
                        return;
                    }
                case 5:
                    String str2 = this.f5509a.length > 0 ? (String) this.f5509a[0] : null;
                    if (this.f5509a.length > 1) {
                        str = (String) this.f5509a[1];
                    }
                    abstractWebEngage.setRegistrationID(str2, str);
                    return;
                case 6:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.a((Intent) this.f5509a[0]);
                        return;
                    }
                case 7:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.a((Intent) this.f5509a[0], (BroadcastReceiver) null);
                        return;
                    }
                case 8:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.a((Location) this.f5509a[0], (BroadcastReceiver) null);
                        return;
                    }
                case 9:
                    abstractWebEngage.a((BroadcastReceiver) null);
                    return;
                case 10:
                    abstractWebEngage.b((BroadcastReceiver) null);
                    return;
                case 11:
                    abstractWebEngage.c((BroadcastReceiver) null);
                    return;
                case 12:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.b((Intent) this.f5509a[0], null);
                        return;
                    }
                case 13:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.c((Intent) this.f5509a[0], null);
                        return;
                    }
                case 14:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.c((Intent) this.f5509a[0]);
                        return;
                    }
                case 15:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.a((q.a) this.f5509a[0], (BroadcastReceiver) null);
                        return;
                    }
                case 16:
                    abstractWebEngage.d(null);
                    return;
                case 17:
                    if (!(this.f5509a == null || this.f5509a.length <= 0 || this.f5509a[0] == null)) {
                        abstractWebEngage.b((Intent) this.f5509a[0]);
                        break;
                    }
                case 19:
                    if (this.f5509a != null && this.f5509a.length > 0 && this.f5509a[0] != null && (this.f5509a[0] instanceof LocationTrackingStrategy)) {
                        abstractWebEngage.setLocationTrackingStrategy((LocationTrackingStrategy) this.f5509a[0]);
                        return;
                    }
                case 20:
                    abstractWebEngage.e(null);
                    return;
            }
        } catch (Exception e) {
            Logger.e("WebEngage", "Some error occurred while executing queued task of WebEngage: " + e.toString());
        }
    }
}
