package b.i.k;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: b.i.k.b  reason: case insensitive filesystem */
/* compiled from: ActionProvider */
public abstract class C0259b {

    /* renamed from: a  reason: collision with root package name */
    public final Context f2808a;

    /* renamed from: b  reason: collision with root package name */
    public a f2809b;

    /* renamed from: c  reason: collision with root package name */
    public C0035b f2810c;

    /* renamed from: b.i.k.b$a */
    /* compiled from: ActionProvider */
    public interface a {
    }

    /* renamed from: b.i.k.b$b  reason: collision with other inner class name */
    /* compiled from: ActionProvider */
    public interface C0035b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public C0259b(Context context) {
        this.f2808a = context;
    }

    public View a(MenuItem menuItem) {
        return c();
    }

    public void a(SubMenu subMenu) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public void f() {
        this.f2810c = null;
        this.f2809b = null;
    }

    public void a(a aVar) {
        this.f2809b = aVar;
    }

    public void a(C0035b bVar) {
        if (!(this.f2810c == null || bVar == null)) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2810c = bVar;
    }
}
