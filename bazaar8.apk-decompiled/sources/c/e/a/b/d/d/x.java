package c.e.a.b.d.d;

import android.content.Intent;
import androidx.fragment.app.Fragment;

public final class x extends C0784g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f10034a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fragment f10035b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f10036c;

    public x(Intent intent, Fragment fragment, int i2) {
        this.f10034a = intent;
        this.f10035b = fragment;
        this.f10036c = i2;
    }

    public final void a() {
        Intent intent = this.f10034a;
        if (intent != null) {
            this.f10035b.startActivityForResult(intent, this.f10036c);
        }
    }
}
