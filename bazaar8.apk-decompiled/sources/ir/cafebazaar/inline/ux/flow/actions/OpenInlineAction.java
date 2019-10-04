package ir.cafebazaar.inline.ux.flow.actions;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import f.a.a.c.b.b;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.InlineActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class OpenInlineAction extends CallbackRemoteAction {
    public static final Parcelable.Creator<OpenInlineAction> CREATOR = new j();

    /* renamed from: d  reason: collision with root package name */
    public String f15064d;

    /* renamed from: e  reason: collision with root package name */
    public String f15065e;

    /* renamed from: f  reason: collision with root package name */
    public String f15066f;

    public OpenInlineAction(Parcel parcel) {
        super(parcel);
    }

    public void a(g gVar, View view) {
        super.a(gVar, view);
        Intent b2 = InlineActivity.b(this.f15065e, this.f15066f);
        Bundle bundle = new Bundle();
        Map<String, Object> a2 = a(gVar);
        for (String str : new ArrayList(a2.keySet())) {
            bundle.putString(str, a2.get(str).toString());
        }
        b2.putExtra("params", bundle);
        gVar.f().startActivityForResult(b2, 10);
    }

    public boolean a(int i2) {
        return i2 == 10;
    }

    public OpenInlineAction(String str, boolean z, boolean z2, String str2) {
        super(str, z, z2);
        this.f15064d = str2;
        int indexOf = str.indexOf("/");
        indexOf = indexOf == -1 ? str.length() : indexOf;
        this.f15065e = str.substring(0, indexOf);
        this.f15066f = str.substring(indexOf + 1);
    }

    public void a(g gVar, int i2, Intent intent, Parcelable parcelable) {
        if (i2 == -1) {
            String stringExtra = intent.hasExtra("exit_token") ? intent.getStringExtra("exit_token") : "";
            HashMap hashMap = new HashMap();
            hashMap.put("token", stringExtra);
            new b(gVar.h(), this.f15064d, hashMap).a(new f.a.a.g.d.g(gVar, this.f15064d));
        }
    }
}
