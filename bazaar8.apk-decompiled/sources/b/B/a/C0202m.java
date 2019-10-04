package b.b.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import b.b.f.b;
import b.b.g.Ca;
import b.i.a.l;
import b.i.a.t;
import b.o.a.C0285i;

/* renamed from: b.b.a.m  reason: case insensitive filesystem */
/* compiled from: AppCompatActivity */
public class C0202m extends C0285i implements n, t.a, C0191b {
    public o q;
    public Resources r;

    public b a(b.a aVar) {
        return null;
    }

    public void a(Toolbar toolbar) {
        v().a(toolbar);
    }

    public void a(b bVar) {
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        v().a(view, layoutParams);
    }

    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        v().a(context);
    }

    public void b(b bVar) {
    }

    public void b(t tVar) {
    }

    public boolean b(Intent intent) {
        return l.b((Activity) this, intent);
    }

    public void c(int i2) {
    }

    public void closeOptionsMenu() {
        C0190a w = w();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (w == null || !w.e()) {
            super.closeOptionsMenu();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        C0190a w = w();
        if (keyCode != 82 || w == null || !w.a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    public <T extends View> T findViewById(int i2) {
        return v().a(i2);
    }

    public MenuInflater getMenuInflater() {
        return v().c();
    }

    public Resources getResources() {
        if (this.r == null && Ca.b()) {
            this.r = new Ca(this, super.getResources());
        }
        Resources resources = this.r;
        return resources == null ? super.getResources() : resources;
    }

    public void invalidateOptionsMenu() {
        v().f();
    }

    public Intent n() {
        return l.a(this);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.r != null) {
            this.r.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        v().a(configuration);
    }

    public void onContentChanged() {
        x();
    }

    public void onCreate(Bundle bundle) {
        o v = v();
        v.e();
        v.a(bundle);
        super.onCreate(bundle);
    }

    public void onDestroy() {
        super.onDestroy();
        v().g();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        C0190a w = w();
        if (menuItem.getItemId() != 16908332 || w == null || (w.g() & 4) == 0) {
            return false;
        }
        return y();
    }

    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    public void onPanelClosed(int i2, Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        v().b(bundle);
    }

    public void onPostResume() {
        super.onPostResume();
        v().h();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        v().c(bundle);
    }

    public void onStart() {
        super.onStart();
        v().i();
    }

    public void onStop() {
        super.onStop();
        v().j();
    }

    public void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        v().a(charSequence);
    }

    public void openOptionsMenu() {
        C0190a w = w();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (w == null || !w.k()) {
            super.openOptionsMenu();
        }
    }

    public void setContentView(int i2) {
        v().c(i2);
    }

    public void setTheme(int i2) {
        super.setTheme(i2);
        v().d(i2);
    }

    public void u() {
        v().f();
    }

    public o v() {
        if (this.q == null) {
            this.q = o.a((Activity) this, (n) this);
        }
        return this.q;
    }

    public C0190a w() {
        return v().d();
    }

    @Deprecated
    public void x() {
    }

    public boolean y() {
        Intent n = n();
        if (n == null) {
            return false;
        }
        if (b(n)) {
            t a2 = t.a((Context) this);
            a(a2);
            b(a2);
            a2.b();
            try {
                b.i.a.b.a(this);
            } catch (IllegalStateException unused) {
                finish();
            }
        } else {
            a(n);
        }
        return true;
    }

    public void a(t tVar) {
        tVar.a((Activity) this);
    }

    public void setContentView(View view) {
        v().a(view);
    }

    public void a(Intent intent) {
        l.a((Activity) this, intent);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        v().b(view, layoutParams);
    }

    public final boolean a(int i2, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode())) {
            Window window = getWindow();
            if (!(window == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent))) {
                return true;
            }
        }
        return false;
    }
}
