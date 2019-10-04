package c.e.a.b.d.d;

import android.app.Activity;
import android.content.Intent;

public final class w extends C0784g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f10031a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Activity f10032b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f10033c;

    public w(Intent intent, Activity activity, int i2) {
        this.f10031a = intent;
        this.f10032b = activity;
        this.f10033c = i2;
    }

    public final void a() {
        Intent intent = this.f10031a;
        if (intent != null) {
            this.f10032b.startActivityForResult(intent, this.f10033c);
        }
    }
}
