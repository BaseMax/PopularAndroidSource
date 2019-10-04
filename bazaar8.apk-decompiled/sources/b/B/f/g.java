package b.b.f;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import b.b.f.a.o;
import b.b.f.a.p;
import b.b.g.H;
import b.b.g.pa;
import b.b.j;
import b.i.k.C0259b;
import b.i.k.C0264g;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: SupportMenuInflater */
public class g extends MenuInflater {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?>[] f1966a = {Context.class};

    /* renamed from: b  reason: collision with root package name */
    public static final Class<?>[] f1967b = f1966a;

    /* renamed from: c  reason: collision with root package name */
    public final Object[] f1968c;

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f1969d = this.f1968c;

    /* renamed from: e  reason: collision with root package name */
    public Context f1970e;

    /* renamed from: f  reason: collision with root package name */
    public Object f1971f;

    /* compiled from: SupportMenuInflater */
    private static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        public static final Class<?>[] f1972a = {MenuItem.class};

        /* renamed from: b  reason: collision with root package name */
        public Object f1973b;

        /* renamed from: c  reason: collision with root package name */
        public Method f1974c;

        public a(Object obj, String str) {
            this.f1973b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1974c = cls.getMethod(str, f1972a);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1974c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1974c.invoke(this.f1973b, new Object[]{menuItem})).booleanValue();
                }
                this.f1974c.invoke(this.f1973b, new Object[]{menuItem});
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* compiled from: SupportMenuInflater */
    private class b {
        public C0259b A;
        public CharSequence B;
        public CharSequence C;
        public ColorStateList D = null;
        public PorterDuff.Mode E = null;

        /* renamed from: a  reason: collision with root package name */
        public Menu f1975a;

        /* renamed from: b  reason: collision with root package name */
        public int f1976b;

        /* renamed from: c  reason: collision with root package name */
        public int f1977c;

        /* renamed from: d  reason: collision with root package name */
        public int f1978d;

        /* renamed from: e  reason: collision with root package name */
        public int f1979e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f1980f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f1981g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f1982h;

        /* renamed from: i  reason: collision with root package name */
        public int f1983i;

        /* renamed from: j  reason: collision with root package name */
        public int f1984j;

        /* renamed from: k  reason: collision with root package name */
        public CharSequence f1985k;

        /* renamed from: l  reason: collision with root package name */
        public CharSequence f1986l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public String z;

        public b(Menu menu) {
            this.f1975a = menu;
            d();
        }

        public void a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.f1970e.obtainStyledAttributes(attributeSet, j.MenuGroup);
            this.f1976b = obtainStyledAttributes.getResourceId(j.MenuGroup_android_id, 0);
            this.f1977c = obtainStyledAttributes.getInt(j.MenuGroup_android_menuCategory, 0);
            this.f1978d = obtainStyledAttributes.getInt(j.MenuGroup_android_orderInCategory, 0);
            this.f1979e = obtainStyledAttributes.getInt(j.MenuGroup_android_checkableBehavior, 0);
            this.f1980f = obtainStyledAttributes.getBoolean(j.MenuGroup_android_visible, true);
            this.f1981g = obtainStyledAttributes.getBoolean(j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public void b(AttributeSet attributeSet) {
            pa a2 = pa.a(g.this.f1970e, attributeSet, j.MenuItem);
            this.f1983i = a2.g(j.MenuItem_android_id, 0);
            this.f1984j = (a2.d(j.MenuItem_android_menuCategory, this.f1977c) & -65536) | (a2.d(j.MenuItem_android_orderInCategory, this.f1978d) & 65535);
            this.f1985k = a2.e(j.MenuItem_android_title);
            this.f1986l = a2.e(j.MenuItem_android_titleCondensed);
            this.m = a2.g(j.MenuItem_android_icon, 0);
            this.n = a(a2.d(j.MenuItem_android_alphabeticShortcut));
            this.o = a2.d(j.MenuItem_alphabeticModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            this.p = a(a2.d(j.MenuItem_android_numericShortcut));
            this.q = a2.d(j.MenuItem_numericModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            if (a2.g(j.MenuItem_android_checkable)) {
                this.r = a2.a(j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.r = this.f1979e;
            }
            this.s = a2.a(j.MenuItem_android_checked, false);
            this.t = a2.a(j.MenuItem_android_visible, this.f1980f);
            this.u = a2.a(j.MenuItem_android_enabled, this.f1981g);
            this.v = a2.d(j.MenuItem_showAsAction, -1);
            this.z = a2.d(j.MenuItem_android_onClick);
            this.w = a2.g(j.MenuItem_actionLayout, 0);
            this.x = a2.d(j.MenuItem_actionViewClass);
            this.y = a2.d(j.MenuItem_actionProviderClass);
            boolean z2 = this.y != null;
            if (z2 && this.w == 0 && this.x == null) {
                this.A = (C0259b) a(this.y, g.f1967b, g.this.f1969d);
            } else {
                if (z2) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = a2.e(j.MenuItem_contentDescription);
            this.C = a2.e(j.MenuItem_tooltipText);
            if (a2.g(j.MenuItem_iconTintMode)) {
                this.E = H.a(a2.d(j.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (a2.g(j.MenuItem_iconTint)) {
                this.D = a2.a(j.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            a2.a();
            this.f1982h = false;
        }

        public boolean c() {
            return this.f1982h;
        }

        public void d() {
            this.f1976b = 0;
            this.f1977c = 0;
            this.f1978d = 0;
            this.f1979e = 0;
            this.f1980f = true;
            this.f1981g = true;
        }

        public final char a(String str) {
            if (str == null) {
                return 0;
            }
            return str.charAt(0);
        }

        public final void a(MenuItem menuItem) {
            boolean z2 = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.f1986l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.z != null) {
                if (!g.this.f1970e.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            boolean z3 = menuItem instanceof o;
            if (z3) {
                o oVar = (o) menuItem;
            }
            if (this.r >= 2) {
                if (z3) {
                    ((o) menuItem).c(true);
                } else if (menuItem instanceof p) {
                    ((p) menuItem).a(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) a(str, g.f1966a, g.this.f1968c));
                z2 = true;
            }
            int i3 = this.w;
            if (i3 > 0) {
                if (!z2) {
                    menuItem.setActionView(i3);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            C0259b bVar = this.A;
            if (bVar != null) {
                C0264g.a(menuItem, bVar);
            }
            C0264g.a(menuItem, this.B);
            C0264g.b(menuItem, this.C);
            C0264g.a(menuItem, this.n, this.o);
            C0264g.b(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                C0264g.a(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                C0264g.a(menuItem, colorStateList);
            }
        }

        public SubMenu b() {
            this.f1982h = true;
            SubMenu addSubMenu = this.f1975a.addSubMenu(this.f1976b, this.f1983i, this.f1984j, this.f1985k);
            a(addSubMenu.getItem());
            return addSubMenu;
        }

        public void a() {
            this.f1982h = true;
            a(this.f1975a.add(this.f1976b, this.f1983i, this.f1984j, this.f1985k));
        }

        public final <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f1970e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }
    }

    public g(Context context) {
        super(context);
        this.f1970e = context;
        this.f1968c = new Object[]{context};
    }

    public final void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            } else {
                if (xmlPullParser.getName().equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + r15);
                }
            }
        }
        int i2 = eventType;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        String name = xmlPullParser.getName();
                        if (z2 && name.equals(str)) {
                            str = null;
                            z2 = false;
                        } else if (name.equals("group")) {
                            bVar.d();
                        } else if (name.equals("item")) {
                            if (!bVar.c()) {
                                C0259b bVar2 = bVar.A;
                                if (bVar2 == null || !bVar2.a()) {
                                    bVar.a();
                                } else {
                                    bVar.b();
                                }
                            }
                        } else if (name.equals("menu")) {
                            z = true;
                        }
                    }
                } else if (!z2) {
                    String name2 = xmlPullParser.getName();
                    if (name2.equals("group")) {
                        bVar.a(attributeSet);
                    } else if (name2.equals("item")) {
                        bVar.b(attributeSet);
                    } else if (name2.equals("menu")) {
                        a(xmlPullParser, attributeSet, bVar.b());
                    } else {
                        str = name2;
                        z2 = true;
                    }
                }
                i2 = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    public void inflate(int i2, Menu menu) {
        if (!(menu instanceof b.i.d.a.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            xmlResourceParser = this.f1970e.getResources().getLayout(i2);
            a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        } catch (XmlPullParserException e2) {
            throw new InflateException("Error inflating menu XML", e2);
        } catch (IOException e3) {
            throw new InflateException("Error inflating menu XML", e3);
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    public Object a() {
        if (this.f1971f == null) {
            this.f1971f = a(this.f1970e);
        }
        return this.f1971f;
    }

    public final Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            obj = a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }
}
