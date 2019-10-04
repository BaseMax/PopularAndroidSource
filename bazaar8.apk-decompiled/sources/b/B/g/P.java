package b.b.g;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import b.b.f.a.j;
import b.b.f.a.k;
import b.b.f.a.o;
import java.lang.reflect.Method;

/* compiled from: MenuPopupWindow */
public class P extends N implements O {
    public static Method K;
    public O L;

    /* compiled from: MenuPopupWindow */
    public static class a extends I {
        public final int o;
        public final int p;
        public O q;
        public MenuItem r;

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.o = 22;
                this.p = 21;
                return;
            }
            this.o = 21;
            this.p = 22;
        }

        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i2;
            j jVar;
            if (this.q != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i2 = headerViewListAdapter.getHeadersCount();
                    jVar = (j) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i2 = 0;
                    jVar = (j) adapter;
                }
                o oVar = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    if (pointToPosition != -1) {
                        int i3 = pointToPosition - i2;
                        if (i3 >= 0 && i3 < jVar.getCount()) {
                            oVar = jVar.getItem(i3);
                        }
                    }
                }
                MenuItem menuItem = this.r;
                if (menuItem != oVar) {
                    k b2 = jVar.b();
                    if (menuItem != null) {
                        this.q.b(b2, menuItem);
                    }
                    this.r = oVar;
                    if (oVar != null) {
                        this.q.a(b2, oVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        public boolean onKeyDown(int i2, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i2 == this.o) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView == null || i2 != this.p) {
                return super.onKeyDown(i2, keyEvent);
            } else {
                setSelection(-1);
                ((j) getAdapter()).b().a(false);
                return true;
            }
        }

        public void setHoverListener(O o2) {
            this.q = o2;
        }

        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                K = PopupWindow.class.getDeclaredMethod("setTouchModal", new Class[]{Boolean.TYPE});
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public P(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public I a(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.J.setExitTransition((Transition) obj);
        }
    }

    public void d(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = K;
            if (method != null) {
                try {
                    method.invoke(this.J, new Object[]{Boolean.valueOf(z)});
                } catch (Exception unused) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.J.setTouchModal(z);
        }
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.J.setEnterTransition((Transition) obj);
        }
    }

    public void b(k kVar, MenuItem menuItem) {
        O o = this.L;
        if (o != null) {
            o.b(kVar, menuItem);
        }
    }

    public void a(O o) {
        this.L = o;
    }

    public void a(k kVar, MenuItem menuItem) {
        O o = this.L;
        if (o != null) {
            o.a(kVar, menuItem);
        }
    }
}
