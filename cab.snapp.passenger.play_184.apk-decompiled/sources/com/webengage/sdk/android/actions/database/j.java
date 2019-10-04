package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.l;
import java.util.ArrayList;

public class j implements s {

    /* renamed from: a  reason: collision with root package name */
    private Context f5363a;

    /* renamed from: b  reason: collision with root package name */
    private m f5364b;

    j(Context context, m mVar) {
        this.f5363a = context;
        this.f5364b = mVar;
    }

    private boolean a() {
        i a2 = i.a(this.f5363a);
        for (int c = a2.c(); c > 0 && r.e(); c -= 10) {
            this.f5364b.a(a2.a(10));
        }
        return true;
    }

    public boolean a(l lVar) {
        return a();
    }

    public boolean a(ArrayList<l> arrayList) {
        return a();
    }
}
