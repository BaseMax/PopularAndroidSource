package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Map;

public final class RemoteMessage extends zzbfm {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    Bundle f4096a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f4097b;
    private a c;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f4098a;

        /* renamed from: b  reason: collision with root package name */
        private final String f4099b;
        private final String[] c;
        private final String d;
        private final String e;
        private final String[] f;
        private final String g;
        private final String h;
        private final String i;
        private final String j;
        private final String k;
        private final Uri l;

        private a(Bundle bundle) {
            this.f4098a = b.a(bundle, "gcm.n.title");
            this.f4099b = b.b(bundle, "gcm.n.title");
            this.c = a(bundle, "gcm.n.title");
            this.d = b.a(bundle, "gcm.n.body");
            this.e = b.b(bundle, "gcm.n.body");
            this.f = a(bundle, "gcm.n.body");
            this.g = b.a(bundle, "gcm.n.icon");
            this.h = b.d(bundle);
            this.i = b.a(bundle, "gcm.n.tag");
            this.j = b.a(bundle, "gcm.n.color");
            this.k = b.a(bundle, "gcm.n.click_action");
            this.l = b.b(bundle);
        }

        /* synthetic */ a(Bundle bundle, byte b2) {
            this(bundle);
        }

        private static String[] a(Bundle bundle, String str) {
            Object[] c2 = b.c(bundle, str);
            if (c2 == null) {
                return null;
            }
            String[] strArr = new String[c2.length];
            for (int i2 = 0; i2 < c2.length; i2++) {
                strArr[i2] = String.valueOf(c2[i2]);
            }
            return strArr;
        }

        public final String getBody() {
            return this.d;
        }

        public final String[] getBodyLocalizationArgs() {
            return this.f;
        }

        public final String getBodyLocalizationKey() {
            return this.e;
        }

        public final String getClickAction() {
            return this.k;
        }

        public final String getColor() {
            return this.j;
        }

        public final String getIcon() {
            return this.g;
        }

        public final Uri getLink() {
            return this.l;
        }

        public final String getSound() {
            return this.h;
        }

        public final String getTag() {
            return this.i;
        }

        public final String getTitle() {
            return this.f4098a;
        }

        public final String[] getTitleLocalizationArgs() {
            return this.c;
        }

        public final String getTitleLocalizationKey() {
            return this.f4099b;
        }
    }

    RemoteMessage(Bundle bundle) {
        this.f4096a = bundle;
    }

    public final String getCollapseKey() {
        return this.f4096a.getString("collapse_key");
    }

    public final Map<String, String> getData() {
        if (this.f4097b == null) {
            this.f4097b = new ArrayMap();
            for (String str : this.f4096a.keySet()) {
                Object obj = this.f4096a.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        this.f4097b.put(str, str2);
                    }
                }
            }
        }
        return this.f4097b;
    }

    public final String getFrom() {
        return this.f4096a.getString("from");
    }

    public final String getMessageId() {
        String string = this.f4096a.getString("google.message_id");
        return string == null ? this.f4096a.getString("message_id") : string;
    }

    public final String getMessageType() {
        return this.f4096a.getString("message_type");
    }

    public final a getNotification() {
        if (this.c == null && b.a(this.f4096a)) {
            this.c = new a(this.f4096a, (byte) 0);
        }
        return this.c;
    }

    public final long getSentTime() {
        Object obj = this.f4096a.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof String) {
            try {
                return Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                sb.append("Invalid sent time: ");
                sb.append(valueOf);
            }
        }
        return 0;
    }

    public final String getTo() {
        return this.f4096a.getString("google.to");
    }

    public final int getTtl() {
        Object obj = this.f4096a.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
                sb.append("Invalid TTL: ");
                sb.append(valueOf);
            }
        }
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f4096a, false);
        el.zzai(parcel, zze);
    }
}
