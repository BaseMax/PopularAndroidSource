package b.b.g;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner;
import b.b.f.a.w;

/* renamed from: b.b.g.v  reason: case insensitive filesystem */
/* compiled from: AppCompatSpinner */
class C0230v extends K {

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner.c f2244j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f2245k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0230v(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.c cVar) {
        super(view);
        this.f2245k = appCompatSpinner;
        this.f2244j = cVar;
    }

    public w b() {
        return this.f2244j;
    }

    @SuppressLint({"SyntheticAccessor"})
    public boolean c() {
        if (!this.f2245k.getInternalPopup().c()) {
            this.f2245k.a();
        }
        return true;
    }
}
