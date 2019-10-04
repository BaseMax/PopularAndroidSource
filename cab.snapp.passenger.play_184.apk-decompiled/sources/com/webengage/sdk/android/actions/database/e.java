package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.l;
import java.util.ArrayList;
import java.util.Iterator;

class e implements s {

    /* renamed from: a  reason: collision with root package name */
    Context f5353a;

    e(Context context) {
        this.f5353a = context;
    }

    /* access modifiers changed from: package-private */
    public int a() {
        return i.a(this.f5353a).c();
    }

    /* access modifiers changed from: package-private */
    public ArrayList<l> a(int i) {
        return i.a(this.f5353a).a(i);
    }

    public boolean a(l lVar) {
        if (lVar == null) {
            return false;
        }
        i.a(this.f5353a).a(lVar);
        if (lVar.f().equals("application")) {
            Logger.d("WebEngage", "Event : " + lVar.h() + " successfully Logged");
        }
        return true;
    }

    public boolean a(ArrayList<l> arrayList) {
        if (arrayList != null) {
            Iterator<l> it = arrayList.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
        return true;
    }
}
