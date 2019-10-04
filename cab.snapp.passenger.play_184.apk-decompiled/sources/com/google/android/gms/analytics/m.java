package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;

public final class m implements u {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f2585a;

    /* renamed from: b  reason: collision with root package name */
    private final LogPrinter f2586b = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("local");
        f2585a = builder.build();
    }

    public final void zzb(o oVar) {
        ArrayList arrayList = new ArrayList(oVar.zzut());
        Collections.sort(arrayList, new n());
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String obj2 = ((p) obj).toString();
            if (!TextUtils.isEmpty(obj2)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(obj2);
            }
        }
        this.f2586b.println(sb.toString());
    }

    public final Uri zzup() {
        return f2585a;
    }
}
