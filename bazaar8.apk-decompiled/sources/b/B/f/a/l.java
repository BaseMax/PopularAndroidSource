package b.b.f.a;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import b.b.a.C0201l;
import b.b.f.a.t;
import b.b.g;

/* compiled from: MenuDialogHelper */
public class l implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, t.a {

    /* renamed from: a  reason: collision with root package name */
    public k f1890a;

    /* renamed from: b  reason: collision with root package name */
    public C0201l f1891b;

    /* renamed from: c  reason: collision with root package name */
    public i f1892c;

    /* renamed from: d  reason: collision with root package name */
    public t.a f1893d;

    public l(k kVar) {
        this.f1890a = kVar;
    }

    public void a(IBinder iBinder) {
        k kVar = this.f1890a;
        C0201l.a aVar = new C0201l.a(kVar.e());
        this.f1892c = new i(aVar.b(), g.abc_list_menu_item_layout);
        this.f1892c.a((t.a) this);
        this.f1890a.a((t) this.f1892c);
        aVar.a(this.f1892c.c(), (DialogInterface.OnClickListener) this);
        View i2 = kVar.i();
        if (i2 != null) {
            aVar.a(i2);
        } else {
            aVar.a(kVar.g());
            aVar.b(kVar.h());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        this.f1891b = aVar.a();
        this.f1891b.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1891b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1891b.show();
    }

    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f1890a.a((MenuItem) (o) this.f1892c.c().getItem(i2), 0);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.f1892c.a(this.f1890a, true);
    }

    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window = this.f1891b.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        KeyEvent.DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window2 = this.f1891b.getWindow();
                if (window2 != null) {
                    View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        KeyEvent.DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.f1890a.a(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.f1890a.performShortcut(i2, keyEvent, 0);
    }

    public void a() {
        C0201l lVar = this.f1891b;
        if (lVar != null) {
            lVar.dismiss();
        }
    }

    public void a(k kVar, boolean z) {
        if (z || kVar == this.f1890a) {
            a();
        }
        t.a aVar = this.f1893d;
        if (aVar != null) {
            aVar.a(kVar, z);
        }
    }

    public boolean a(k kVar) {
        t.a aVar = this.f1893d;
        if (aVar != null) {
            return aVar.a(kVar);
        }
        return false;
    }
}
