package b.i.a;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.View;
import b.f.i;
import b.i.k.C0261d;

/* compiled from: ComponentActivity */
public class k extends Activity implements C0261d.a {

    /* renamed from: a  reason: collision with root package name */
    public i<Class<? extends a>, a> f2527a = new i<>();

    /* compiled from: ComponentActivity */
    public static class a {
    }

    public void a(a aVar) {
        this.f2527a.put(aVar.getClass(), aVar);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0261d.a(decorView, keyEvent)) {
            return C0261d.a(this, decorView, this, keyEvent);
        }
        return true;
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0261d.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    public <T extends a> T a(Class<T> cls) {
        return (a) this.f2527a.get(cls);
    }

    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
