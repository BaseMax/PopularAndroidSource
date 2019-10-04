package b.d.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import b.i.a.j;
import java.util.ArrayList;

/* compiled from: CustomTabsIntent */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f2293a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f2294b;

    /* renamed from: b.d.a.a$a  reason: collision with other inner class name */
    /* compiled from: CustomTabsIntent */
    public static final class C0026a {

        /* renamed from: a  reason: collision with root package name */
        public final Intent f2295a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<Bundle> f2296b;

        /* renamed from: c  reason: collision with root package name */
        public Bundle f2297c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<Bundle> f2298d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f2299e;

        public C0026a() {
            this(null);
        }

        public C0026a a(int i2) {
            this.f2295a.putExtra("android.support.customtabs.extra.TOOLBAR_COLOR", i2);
            return this;
        }

        public C0026a(b bVar) {
            this.f2295a = new Intent("android.intent.action.VIEW");
            this.f2296b = null;
            this.f2297c = null;
            this.f2298d = null;
            this.f2299e = true;
            if (bVar == null) {
                Bundle bundle = new Bundle();
                if (bVar == null) {
                    j.a(bundle, "android.support.customtabs.extra.SESSION", null);
                    this.f2295a.putExtras(bundle);
                    return;
                }
                bVar.a();
                throw null;
            }
            Intent intent = this.f2295a;
            bVar.b();
            throw null;
        }

        public C0026a a(boolean z) {
            this.f2295a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", z ? 1 : 0);
            return this;
        }

        public a a() {
            ArrayList<Bundle> arrayList = this.f2296b;
            if (arrayList != null) {
                this.f2295a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f2298d;
            if (arrayList2 != null) {
                this.f2295a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f2295a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f2299e);
            return new a(this.f2295a, this.f2297c);
        }
    }

    public a(Intent intent, Bundle bundle) {
        this.f2293a = intent;
        this.f2294b = bundle;
    }

    public void a(Context context, Uri uri) {
        this.f2293a.setData(uri);
        b.i.b.a.a(context, this.f2293a, this.f2294b);
    }
}
