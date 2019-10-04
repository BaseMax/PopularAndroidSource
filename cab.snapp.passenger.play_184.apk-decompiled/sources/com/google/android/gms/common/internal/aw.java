package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.a;

public final class aw {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f2932a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2933b = this.f2932a.getResourcePackageName(a.c.common_google_play_services_unknown_issue);

    public aw(Context context) {
        ap.checkNotNull(context);
        this.f2932a = context.getResources();
    }

    public final String getString(String str) {
        int identifier = this.f2932a.getIdentifier(str, "string", this.f2933b);
        if (identifier == 0) {
            return null;
        }
        return this.f2932a.getString(identifier);
    }
}
