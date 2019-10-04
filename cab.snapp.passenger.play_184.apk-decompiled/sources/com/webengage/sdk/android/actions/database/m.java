package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.n;
import java.util.ArrayList;

class m implements s {

    /* renamed from: a  reason: collision with root package name */
    Context f5368a = null;

    m(Context context) {
        this.f5368a = context;
    }

    public boolean a(l lVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar);
        return a((ArrayList<l>) arrayList);
    }

    public boolean a(ArrayList<l> arrayList) {
        WebEngage.startService(n.a(af.SYNC_TO_SERVER, arrayList, this.f5368a), this.f5368a);
        return true;
    }
}
