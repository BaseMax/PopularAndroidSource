package com.webengage.sdk.android;

import com.adjust.sdk.Constants;

public class ai {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f5499a = {"time_spent", "latitude", "longitude", "city", "country", "region", "postal_code", "locality", "opt_in_push", "opt_in_inapp", "last_logged_in", "first_logged_in", "last_seen", "first_session_start_time", "session_count", "campaign_id", "campaign_source", "campaign_medium", "campaign_term", "campaign_content", "campaign_gclid", Constants.REFERRER};

    public static boolean a(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f5499a;
            if (i >= strArr.length) {
                return false;
            }
            if (strArr[i].equals(str)) {
                return true;
            }
            i++;
        }
    }
}
