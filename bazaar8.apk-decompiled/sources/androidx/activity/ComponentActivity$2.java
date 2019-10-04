package androidx.activity;

import android.view.View;
import android.view.Window;
import androidx.lifecycle.Lifecycle;
import b.a.C0188c;
import b.r.C0303i;
import b.r.k;

class ComponentActivity$2 implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0188c f213a;

    public ComponentActivity$2(C0188c cVar) {
        this.f213a = cVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_STOP) {
            Window window = this.f213a.getWindow();
            View peekDecorView = window != null ? window.peekDecorView() : null;
            if (peekDecorView != null) {
                peekDecorView.cancelPendingInputEvents();
            }
        }
    }
}
