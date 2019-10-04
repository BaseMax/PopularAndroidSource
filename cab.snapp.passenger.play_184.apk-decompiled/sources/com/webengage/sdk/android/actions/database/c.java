package com.webengage.sdk.android.actions.database;

import com.webengage.sdk.android.l;
import java.util.ArrayList;

public class c implements s {

    /* renamed from: a  reason: collision with root package name */
    private e f5349a;

    /* renamed from: b  reason: collision with root package name */
    private j f5350b;

    c(e eVar, j jVar) {
        this.f5349a = eVar;
        this.f5350b = jVar;
    }

    public boolean a(l lVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar);
        return a((ArrayList<l>) arrayList);
    }

    public boolean a(ArrayList<l> arrayList) {
        return this.f5349a.a(arrayList) && this.f5350b.a(arrayList);
    }
}
