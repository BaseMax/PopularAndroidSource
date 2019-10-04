package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import b.f.C0243b;
import c.e.a.b.d.d.a.a;
import c.e.c.g.h;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Map;

public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    public Bundle f13523a;

    /* renamed from: b  reason: collision with root package name */
    public Map<String, String> f13524b;

    public RemoteMessage(Bundle bundle) {
        this.f13523a = bundle;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 2, this.f13523a, false);
        a.a(parcel, a2);
    }

    public final Map<String, String> x() {
        if (this.f13524b == null) {
            Bundle bundle = this.f13523a;
            C0243b bVar = new C0243b();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        bVar.put(str, str2);
                    }
                }
            }
            this.f13524b = bVar;
        }
        return this.f13524b;
    }

    public final String y() {
        return this.f13523a.getString("from");
    }
}
