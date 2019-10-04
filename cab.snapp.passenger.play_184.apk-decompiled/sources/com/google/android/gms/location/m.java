package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.internal.ai;

public final class m extends e<Object> {
    public m(Activity activity) {
        super(activity, i.API, null, (bx) new co());
    }

    public m(Context context) {
        super(context, i.API, null, (bx) new co());
    }

    public final f<j> checkLocationSettings(LocationSettingsRequest locationSettingsRequest) {
        return ai.zza(i.SettingsApi.checkLocationSettings(zzago(), locationSettingsRequest), new j());
    }
}
