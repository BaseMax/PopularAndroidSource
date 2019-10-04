package c.e.a.b.d.d;

import android.content.Intent;
import c.e.a.b.d.a.a.C0758f;

public final class y extends C0784g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f10037a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0758f f10038b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f10039c;

    public y(Intent intent, C0758f fVar, int i2) {
        this.f10037a = intent;
        this.f10038b = fVar;
        this.f10039c = i2;
    }

    public final void a() {
        Intent intent = this.f10037a;
        if (intent != null) {
            this.f10038b.startActivityForResult(intent, this.f10039c);
        }
    }
}
