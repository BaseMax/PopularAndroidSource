package com.adjust.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AdjustReferrerReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(Constants.REFERRER);
        if (stringExtra != null) {
            Adjust.getDefaultInstance().sendReferrer(stringExtra, context);
        }
    }
}
