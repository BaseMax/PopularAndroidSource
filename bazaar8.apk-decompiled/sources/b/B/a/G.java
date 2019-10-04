package b.b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import b.b.a.C0190a;
import b.b.f.a.k;
import b.b.f.a.t;
import b.b.f.j;
import b.b.g.wa;
import b.i.k.z;
import java.util.ArrayList;

/* compiled from: ToolbarActionBar */
public class G extends C0190a {

    /* renamed from: a  reason: collision with root package name */
    public b.b.g.G f1684a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1685b;

    /* renamed from: c  reason: collision with root package name */
    public Window.Callback f1686c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1687d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1688e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<C0190a.b> f1689f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    public final Runnable f1690g = new E(this);

    /* renamed from: h  reason: collision with root package name */
    public final Toolbar.c f1691h = new F(this);

    /* compiled from: ToolbarActionBar */
    private final class a implements t.a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1692a;

        public a() {
        }

        public boolean a(k kVar) {
            Window.Callback callback = G.this.f1686c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, kVar);
            return true;
        }

        public void a(k kVar, boolean z) {
            if (!this.f1692a) {
                this.f1692a = true;
                G.this.f1684a.h();
                Window.Callback callback = G.this.f1686c;
                if (callback != null) {
                    callback.onPanelClosed(108, kVar);
                }
                this.f1692a = false;
            }
        }
    }

    /* compiled from: ToolbarActionBar */
    private final class b implements k.a {
        public b() {
        }

        public void a(k kVar) {
            G g2 = G.this;
            if (g2.f1686c == null) {
                return;
            }
            if (g2.f1684a.a()) {
                G.this.f1686c.onPanelClosed(108, kVar);
            } else if (G.this.f1686c.onPreparePanel(0, null, kVar)) {
                G.this.f1686c.onMenuOpened(108, kVar);
            }
        }

        public boolean a(k kVar, MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: ToolbarActionBar */
    private class c extends j {
        public c(Window.Callback callback) {
            super(callback);
        }

        public View onCreatePanelView(int i2) {
            if (i2 == 0) {
                return new View(G.this.f1684a.b());
            }
            return super.onCreatePanelView(i2);
        }

        public boolean onPreparePanel(int i2, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i2, view, menu);
            if (onPreparePanel) {
                G g2 = G.this;
                if (!g2.f1685b) {
                    g2.f1684a.c();
                    G.this.f1685b = true;
                }
            }
            return onPreparePanel;
        }
    }

    public G(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f1684a = new wa(toolbar, false);
        this.f1686c = new c(callback);
        this.f1684a.setWindowCallback(this.f1686c);
        toolbar.setOnMenuItemClickListener(this.f1691h);
        this.f1684a.setWindowTitle(charSequence);
    }

    public void a(Configuration configuration) {
        super.a(configuration);
    }

    public void b(boolean z) {
        if (z != this.f1688e) {
            this.f1688e = z;
            int size = this.f1689f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1689f.get(i2).onMenuVisibilityChanged(z);
            }
        }
    }

    public void c(boolean z) {
    }

    public void d(boolean z) {
    }

    public boolean e() {
        return this.f1684a.f();
    }

    public boolean f() {
        if (!this.f1684a.i()) {
            return false;
        }
        this.f1684a.collapseActionView();
        return true;
    }

    public int g() {
        return this.f1684a.m();
    }

    public Context h() {
        return this.f1684a.b();
    }

    public boolean i() {
        this.f1684a.l().removeCallbacks(this.f1690g);
        z.a((View) this.f1684a.l(), this.f1690g);
        return true;
    }

    public void j() {
        this.f1684a.l().removeCallbacks(this.f1690g);
    }

    public boolean k() {
        return this.f1684a.g();
    }

    public final Menu l() {
        if (!this.f1687d) {
            this.f1684a.a((t.a) new a(), (k.a) new b());
            this.f1687d = true;
        }
        return this.f1684a.j();
    }

    public Window.Callback m() {
        return this.f1686c;
    }

    public void n() {
        Menu l2 = l();
        k kVar = l2 instanceof k ? (k) l2 : null;
        if (kVar != null) {
            kVar.s();
        }
        try {
            l2.clear();
            if (!this.f1686c.onCreatePanelMenu(0, l2) || !this.f1686c.onPreparePanel(0, null, l2)) {
                l2.clear();
            }
        } finally {
            if (kVar != null) {
                kVar.r();
            }
        }
    }

    public void a(CharSequence charSequence) {
        this.f1684a.setWindowTitle(charSequence);
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            k();
        }
        return true;
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        Menu l2 = l();
        if (l2 == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        l2.setQwertyMode(z);
        return l2.performShortcut(i2, keyEvent, 0);
    }
}
