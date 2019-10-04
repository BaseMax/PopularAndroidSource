package com.farsitel.bazaar.core.receiver;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import c.c.a.d.d.f;
import com.google.android.gms.common.api.Status;
import d.a.e;
import h.f.b.j;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.TypeCastException;

/* compiled from: SmsReceiver.kt */
public final class SmsReceiver extends e {

    /* renamed from: a  reason: collision with root package name */
    public f f12183a;

    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        if (j.a((Object) "com.google.android.gms.auth.api.phone.SMS_RETRIEVED", (Object) intent != null ? intent.getAction() : null)) {
            Bundle extras = intent.getExtras();
            Object obj = extras != null ? extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS") : null;
            if (obj != null) {
                int x = ((Status) obj).x();
                if (x == 0) {
                    Object obj2 = extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
                    if (obj2 != null) {
                        Matcher matcher = Pattern.compile("(\\d{4})").matcher((String) obj2);
                        if (matcher.find()) {
                            f fVar = this.f12183a;
                            if (fVar != null) {
                                String group = matcher.group(0);
                                j.a((Object) group, "matcher.group(0)");
                                fVar.a(group);
                            } else {
                                j.c("otpCodeManager");
                                throw null;
                            }
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
                    }
                } else if (x == 15) {
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type com.google.android.gms.common.api.Status");
            }
        }
    }
}
