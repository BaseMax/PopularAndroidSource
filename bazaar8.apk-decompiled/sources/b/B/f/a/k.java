package b.b.f.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import b.i.k.A;
import b.i.k.C0259b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MenuBuilder */
public class k implements b.i.d.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f1878a = {1, 4, 5, 3, 2, 0};
    public boolean A;

    /* renamed from: b  reason: collision with root package name */
    public final Context f1879b;

    /* renamed from: c  reason: collision with root package name */
    public final Resources f1880c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1881d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1882e;

    /* renamed from: f  reason: collision with root package name */
    public a f1883f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<o> f1884g;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<o> f1885h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1886i;

    /* renamed from: j  reason: collision with root package name */
    public ArrayList<o> f1887j;

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<o> f1888k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f1889l;
    public int m = 0;
    public ContextMenu.ContextMenuInfo n;
    public CharSequence o;
    public Drawable p;
    public View q;
    public boolean r = false;
    public boolean s = false;
    public boolean t = false;
    public boolean u = false;
    public boolean v = false;
    public ArrayList<o> w = new ArrayList<>();
    public CopyOnWriteArrayList<WeakReference<t>> x = new CopyOnWriteArrayList<>();
    public o y;
    public boolean z = false;

    /* compiled from: MenuBuilder */
    public interface a {
        void a(k kVar);

        boolean a(k kVar, MenuItem menuItem);
    }

    /* compiled from: MenuBuilder */
    public interface b {
        boolean a(o oVar);
    }

    public k(Context context) {
        this.f1879b = context;
        this.f1880c = context.getResources();
        this.f1884g = new ArrayList<>();
        this.f1885h = new ArrayList<>();
        this.f1886i = true;
        this.f1887j = new ArrayList<>();
        this.f1888k = new ArrayList<>();
        this.f1889l = true;
        e(true);
    }

    public void a(t tVar) {
        a(tVar, this.f1879b);
    }

    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f1879b.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i2, i3, i4, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null) {
                int i8 = resolveInfo.specificIndex;
                if (i8 >= 0) {
                    menuItemArr[i8] = intent3;
                }
            }
        }
        return size;
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(t tVar) {
        Iterator<WeakReference<t>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference next = it.next();
            t tVar2 = (t) next.get();
            if (tVar2 == null || tVar2 == tVar) {
                this.x.remove(next);
            }
        }
    }

    public void c(Bundle bundle) {
        if (bundle != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(d());
            int size = size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = getItem(i2);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((A) item.getSubMenu()).c(bundle);
                }
            }
            int i3 = bundle.getInt("android:menu:expandedactionview");
            if (i3 > 0) {
                MenuItem findItem = findItem(i3);
                if (findItem != null) {
                    findItem.expandActionView();
                }
            }
        }
    }

    public void clear() {
        o oVar = this.y;
        if (oVar != null) {
            a(oVar);
        }
        this.f1884g.clear();
        c(true);
    }

    public void clearHeader() {
        this.p = null;
        this.o = null;
        this.q = null;
        c(false);
    }

    public void close() {
        a(true);
    }

    public k d(int i2) {
        this.m = i2;
        return this;
    }

    public String d() {
        return "android:menu:actionviewstates";
    }

    public void e(Bundle bundle) {
        int size = size();
        SparseArray sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (!(actionView == null || actionView.getId() == -1)) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((A) item.getSubMenu()).e(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(d(), sparseArray);
        }
    }

    public void f(Bundle bundle) {
        b(bundle);
    }

    public MenuItem findItem(int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = this.f1884g.get(i3);
            if (oVar.getItemId() == i2) {
                return oVar;
            }
            if (oVar.hasSubMenu()) {
                MenuItem findItem = oVar.getSubMenu().findItem(i2);
                if (findItem != null) {
                    return findItem;
                }
            }
        }
        return null;
    }

    public Drawable g() {
        return this.p;
    }

    public MenuItem getItem(int i2) {
        return this.f1884g.get(i2);
    }

    public CharSequence h() {
        return this.o;
    }

    public boolean hasVisibleItems() {
        if (this.A) {
            return true;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f1884g.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public View i() {
        return this.q;
    }

    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return a(i2, keyEvent) != null;
    }

    public ArrayList<o> j() {
        b();
        return this.f1888k;
    }

    public boolean k() {
        return this.u;
    }

    public Resources l() {
        return this.f1880c;
    }

    public k m() {
        return this;
    }

    public ArrayList<o> n() {
        if (!this.f1886i) {
            return this.f1885h;
        }
        this.f1885h.clear();
        int size = this.f1884g.size();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = this.f1884g.get(i2);
            if (oVar.isVisible()) {
                this.f1885h.add(oVar);
            }
        }
        this.f1886i = false;
        this.f1889l = true;
        return this.f1885h;
    }

    public boolean o() {
        return this.z;
    }

    public boolean p() {
        return this.f1881d;
    }

    public boolean performIdentifierAction(int i2, int i3) {
        return a(findItem(i2), i3);
    }

    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        o a2 = a(i2, keyEvent);
        boolean a3 = a2 != null ? a((MenuItem) a2, i3) : false;
        if ((i3 & 2) != 0) {
            a(true);
        }
        return a3;
    }

    public boolean q() {
        return this.f1882e;
    }

    public void r() {
        this.r = false;
        if (this.s) {
            this.s = false;
            c(this.t);
        }
    }

    public void removeGroup(int i2) {
        int a2 = a(i2);
        if (a2 >= 0) {
            int size = this.f1884g.size() - a2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size || this.f1884g.get(a2).getGroupId() != i2) {
                    c(true);
                } else {
                    a(a2, false);
                    i3 = i4;
                }
            }
            c(true);
        }
    }

    public void removeItem(int i2) {
        a(b(i2), true);
    }

    public void s() {
        if (!this.r) {
            this.r = true;
            this.s = false;
            this.t = false;
        }
    }

    public void setGroupCheckable(int i2, boolean z2, boolean z3) {
        int size = this.f1884g.size();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = this.f1884g.get(i3);
            if (oVar.getGroupId() == i2) {
                oVar.c(z3);
                oVar.setCheckable(z2);
            }
        }
    }

    public void setGroupDividerEnabled(boolean z2) {
        this.z = z2;
    }

    public void setGroupEnabled(int i2, boolean z2) {
        int size = this.f1884g.size();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = this.f1884g.get(i3);
            if (oVar.getGroupId() == i2) {
                oVar.setEnabled(z2);
            }
        }
    }

    public void setGroupVisible(int i2, boolean z2) {
        int size = this.f1884g.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = this.f1884g.get(i3);
            if (oVar.getGroupId() == i2 && oVar.e(z2)) {
                z3 = true;
            }
        }
        if (z3) {
            c(true);
        }
    }

    public void setQwertyMode(boolean z2) {
        this.f1881d = z2;
        c(false);
    }

    public int size() {
        return this.f1884g.size();
    }

    public void a(t tVar, Context context) {
        this.x.add(new WeakReference(tVar));
        tVar.a(context, this);
        this.f1889l = true;
    }

    public MenuItem add(int i2) {
        return a(0, 0, 0, this.f1880c.getString(i2));
    }

    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, (CharSequence) this.f1880c.getString(i2));
    }

    public void d(Bundle bundle) {
        a(bundle);
    }

    public k f(int i2) {
        a(i2, null, 0, null, null);
        return this;
    }

    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(i2, i3, i4, charSequence);
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        o oVar = (o) a(i2, i3, i4, charSequence);
        A a2 = new A(this.f1879b, this, oVar);
        oVar.a(a2);
        return a2;
    }

    public void d(o oVar) {
        this.f1886i = true;
        c(true);
    }

    public o f() {
        return this.y;
    }

    public MenuItem add(int i2, int i3, int i4, int i5) {
        return a(i2, i3, i4, this.f1880c.getString(i5));
    }

    public final void b(boolean z2) {
        if (!this.x.isEmpty()) {
            s();
            Iterator<WeakReference<t>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    tVar.a(z2);
                }
            }
            r();
        }
    }

    public final boolean a(A a2, t tVar) {
        boolean z2 = false;
        if (this.x.isEmpty()) {
            return false;
        }
        if (tVar != null) {
            z2 = tVar.a(a2);
        }
        Iterator<WeakReference<t>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference next = it.next();
            t tVar2 = (t) next.get();
            if (tVar2 == null) {
                this.x.remove(next);
            } else if (!z2) {
                z2 = tVar2.a(a2);
            }
        }
        return z2;
    }

    public void d(boolean z2) {
        this.A = z2;
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, (CharSequence) this.f1880c.getString(i5));
    }

    public final void a(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.x.isEmpty()) {
            Iterator<WeakReference<t>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    int id = tVar.getId();
                    if (id > 0) {
                        Parcelable parcelable = (Parcelable) sparseParcelableArray.get(id);
                        if (parcelable != null) {
                            tVar.a(parcelable);
                        }
                    }
                }
            }
        }
    }

    public final void b(Bundle bundle) {
        if (!this.x.isEmpty()) {
            SparseArray sparseArray = new SparseArray();
            Iterator<WeakReference<t>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    int id = tVar.getId();
                    if (id > 0) {
                        Parcelable b2 = tVar.b();
                        if (b2 != null) {
                            sparseArray.put(id, b2);
                        }
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    public final void e(boolean z2) {
        boolean z3 = true;
        if (!z2 || this.f1880c.getConfiguration().keyboard == 1 || !A.d(ViewConfiguration.get(this.f1879b), this.f1879b)) {
            z3 = false;
        }
        this.f1882e = z3;
    }

    public static int c(int i2) {
        int i3 = (-65536 & i2) >> 16;
        if (i3 >= 0) {
            int[] iArr = f1878a;
            if (i3 < iArr.length) {
                return (i2 & 65535) | (iArr[i3] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    public void c(boolean z2) {
        if (!this.r) {
            if (z2) {
                this.f1886i = true;
                this.f1889l = true;
            }
            b(z2);
            return;
        }
        this.s = true;
        if (z2) {
            this.t = true;
        }
    }

    public Context e() {
        return this.f1879b;
    }

    public k e(int i2) {
        a(0, null, i2, null, null);
        return this;
    }

    public void a(a aVar) {
        this.f1883f = aVar;
    }

    public MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        int c2 = c(i4);
        o a2 = a(i2, i3, i4, c2, charSequence, this.m);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.n;
        if (contextMenuInfo != null) {
            a2.a(contextMenuInfo);
        }
        ArrayList<o> arrayList = this.f1884g;
        arrayList.add(a(arrayList, c2), a2);
        c(true);
        return a2;
    }

    public int b(int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            if (this.f1884g.get(i3).getItemId() == i2) {
                return i3;
            }
        }
        return -1;
    }

    public void b() {
        ArrayList<o> n2 = n();
        if (this.f1889l) {
            Iterator<WeakReference<t>> it = this.x.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    z2 |= tVar.a();
                }
            }
            if (z2) {
                this.f1887j.clear();
                this.f1888k.clear();
                int size = n2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    o oVar = n2.get(i2);
                    if (oVar.h()) {
                        this.f1887j.add(oVar);
                    } else {
                        this.f1888k.add(oVar);
                    }
                }
            } else {
                this.f1887j.clear();
                this.f1888k.clear();
                this.f1888k.addAll(n());
            }
            this.f1889l = false;
        }
    }

    public void c(o oVar) {
        this.f1889l = true;
        c(true);
    }

    public ArrayList<o> c() {
        b();
        return this.f1887j;
    }

    public final o a(int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        o oVar = new o(this, i2, i3, i4, i5, charSequence, i6);
        return oVar;
    }

    public final void a(int i2, boolean z2) {
        if (i2 >= 0 && i2 < this.f1884g.size()) {
            this.f1884g.remove(i2);
            if (z2) {
                c(true);
            }
        }
    }

    public void a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1884g.size();
        s();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = this.f1884g.get(i2);
            if (oVar.getGroupId() == groupId && oVar.i() && oVar.isCheckable()) {
                oVar.b(oVar == menuItem);
            }
        }
        r();
    }

    public int a(int i2) {
        return a(i2, 0);
    }

    public int a(int i2, int i3) {
        int size = size();
        if (i3 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.f1884g.get(i3).getGroupId() == i2) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public boolean b(o oVar) {
        boolean z2 = false;
        if (this.x.isEmpty()) {
            return false;
        }
        s();
        Iterator<WeakReference<t>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference next = it.next();
            t tVar = (t) next.get();
            if (tVar == null) {
                this.x.remove(next);
            } else {
                z2 = tVar.b(this, oVar);
                if (z2) {
                    break;
                }
            }
        }
        r();
        if (z2) {
            this.y = oVar;
        }
        return z2;
    }

    public boolean a(k kVar, MenuItem menuItem) {
        a aVar = this.f1883f;
        return aVar != null && aVar.a(kVar, menuItem);
    }

    public void a() {
        a aVar = this.f1883f;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public static int a(ArrayList<o> arrayList, int i2) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i2) {
                return size + 1;
            }
        }
        return 0;
    }

    public void a(List<o> list, int i2, KeyEvent keyEvent) {
        boolean p2 = p();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            int size = this.f1884g.size();
            for (int i3 = 0; i3 < size; i3++) {
                o oVar = this.f1884g.get(i3);
                if (oVar.hasSubMenu()) {
                    ((k) oVar.getSubMenu()).a(list, i2, keyEvent);
                }
                char alphabeticShortcut = p2 ? oVar.getAlphabeticShortcut() : oVar.getNumericShortcut();
                if (((modifiers & 69647) == ((p2 ? oVar.getAlphabeticModifiers() : oVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (p2 && alphabeticShortcut == 8 && i2 == 67)) && oVar.isEnabled()) {
                        list.add(oVar);
                    }
                }
            }
        }
    }

    public o a(int i2, KeyEvent keyEvent) {
        char c2;
        ArrayList<o> arrayList = this.w;
        arrayList.clear();
        a((List<o>) arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean p2 = p();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = arrayList.get(i3);
            if (p2) {
                c2 = oVar.getAlphabeticShortcut();
            } else {
                c2 = oVar.getNumericShortcut();
            }
            if ((c2 == keyData.meta[0] && (metaState & 2) == 0) || ((c2 == keyData.meta[2] && (metaState & 2) != 0) || (p2 && c2 == 8 && i2 == 67))) {
                return oVar;
            }
        }
        return null;
    }

    public boolean a(MenuItem menuItem, int i2) {
        return a(menuItem, (t) null, i2);
    }

    public boolean a(MenuItem menuItem, t tVar, int i2) {
        o oVar = (o) menuItem;
        if (oVar == null || !oVar.isEnabled()) {
            return false;
        }
        boolean g2 = oVar.g();
        C0259b a2 = oVar.a();
        boolean z2 = a2 != null && a2.a();
        if (oVar.f()) {
            g2 |= oVar.expandActionView();
            if (g2) {
                a(true);
            }
        } else if (oVar.hasSubMenu() || z2) {
            if ((i2 & 4) == 0) {
                a(false);
            }
            if (!oVar.hasSubMenu()) {
                oVar.a(new A(e(), this, oVar));
            }
            A a3 = (A) oVar.getSubMenu();
            if (z2) {
                a2.a((SubMenu) a3);
            }
            g2 |= a(a3, tVar);
            if (!g2) {
                a(true);
            }
        } else if ((i2 & 1) == 0) {
            a(true);
        }
        return g2;
    }

    public final void a(boolean z2) {
        if (!this.v) {
            this.v = true;
            Iterator<WeakReference<t>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    tVar.a(this, z2);
                }
            }
            this.v = false;
        }
    }

    public final void a(int i2, CharSequence charSequence, int i3, Drawable drawable, View view) {
        Resources l2 = l();
        if (view != null) {
            this.q = view;
            this.o = null;
            this.p = null;
        } else {
            if (i2 > 0) {
                this.o = l2.getText(i2);
            } else if (charSequence != null) {
                this.o = charSequence;
            }
            if (i3 > 0) {
                this.p = b.i.b.a.c(e(), i3);
            } else if (drawable != null) {
                this.p = drawable;
            }
            this.q = null;
        }
        c(false);
    }

    public k a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    public k a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    public k a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public boolean a(o oVar) {
        boolean z2 = false;
        if (!this.x.isEmpty() && this.y == oVar) {
            s();
            Iterator<WeakReference<t>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                t tVar = (t) next.get();
                if (tVar == null) {
                    this.x.remove(next);
                } else {
                    z2 = tVar.a(this, oVar);
                    if (z2) {
                        break;
                    }
                }
            }
            r();
            if (z2) {
                this.y = null;
            }
        }
        return z2;
    }
}
