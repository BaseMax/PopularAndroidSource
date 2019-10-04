package com.farsitel.bazaar.ui.settings;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import b.o.a.C0290n;
import b.r.E;
import b.r.F;
import b.r.G;
import b.x.r;
import b.x.y;
import c.c.a.d.a.a;
import c.c.a.d.a.d;
import c.c.a.d.b.h;
import c.c.a.d.d.c;
import c.c.a.d.g.b;
import c.c.a.n.x.a.c;
import c.c.a.n.x.e;
import c.c.a.n.x.i;
import c.c.a.n.x.j;
import c.c.a.n.x.k;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.BazaarApp;
import com.farsitel.bazaar.core.app.Permission;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.home.MainActivity;
import com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference;
import h.f.b.f;
import h.k.m;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: SettingsFragment.kt */
public final class SettingsFragment extends r implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final a ia = new a(null);
    public F.b ja;
    public c ka;
    public c.c.a.n.x.a la;
    public d ma;
    public final k na = new k(this);
    public final Preference.b oa = c.f7072a;
    public final j pa = new j(this);
    public final i qa = new i(this);
    public HashMap ra;

    /* compiled from: SettingsFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public static final /* synthetic */ d c(SettingsFragment settingsFragment) {
        d dVar = settingsFragment.ma;
        if (dVar != null) {
            return dVar;
        }
        h.f.b.j.c("permissionManager");
        throw null;
    }

    public void Wa() {
        HashMap hashMap = this.ra;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Xa() {
        Preference a2 = a((CharSequence) "about_bazaar");
        h.f.b.j.a((Object) a2, "findPreference(KEY_ABOUT_BAZAAR)");
        a2.b((CharSequence) a((int) R.string.about_bazaar_title_with_version, "8.3.7"));
    }

    public final void Ya() {
        Preference a2 = a((CharSequence) "client_id");
        h.f.b.j.a((Object) a2, "findPreference(KEY_DEVICE_IDENTIFIER)");
        Preference a3 = a((CharSequence) "client_id");
        h.f.b.j.a((Object) a3, "findPreference(KEY_DEVICE_IDENTIFIER)");
        a2.b((CharSequence) a((int) R.string.your_device_id, d(a3)));
    }

    public final void Za() {
        d dVar = this.ma;
        if (dVar == null) {
            h.f.b.j.c("permissionManager");
            throw null;
        } else if (!dVar.a(Permission.WRITE_EXTERNAL_STORAGE, (Fragment) this)) {
            Preference a2 = a((CharSequence) "keep_backup_of_apps");
            if (a2 != null) {
                ((CheckBoxPreference) a2).d(false);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        }
    }

    public final void _a() {
        d dVar = this.ma;
        if (dVar == null) {
            h.f.b.j.c("permissionManager");
            throw null;
        } else if (!dVar.a(Permission.ACCESS_COARSE_LOCATION, (Fragment) this)) {
            Preference a2 = a((CharSequence) "location_base_offer");
            if (a2 != null) {
                ((CheckBoxPreference) a2).d(false);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.preference.CheckBoxPreference");
        }
    }

    public final void ab() {
        Preference a2 = a((CharSequence) "update_scheduling");
        if (a2 != null) {
            ScheduleUpdatePreference scheduleUpdatePreference = (ScheduleUpdatePreference) a2;
            scheduleUpdatePreference.b(cb());
            scheduleUpdatePreference.a(bb());
            scheduleUpdatePreference.b((ScheduleUpdatePreference.b) new c.c.a.n.x.d(this));
            scheduleUpdatePreference.a((ScheduleUpdatePreference.b) new e(this));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference");
    }

    public final Calendar bb() {
        c.c.a.n.x.a aVar = this.la;
        if (aVar != null) {
            return aVar.n();
        }
        h.f.b.j.c("viewModel");
        throw null;
    }

    public final Calendar cb() {
        c.c.a.n.x.a aVar = this.la;
        if (aVar != null) {
            return aVar.m();
        }
        h.f.b.j.c("viewModel");
        throw null;
    }

    public final c.c.a.n.x.a db() {
        c.c.a.n.x.a aVar = this.la;
        if (aVar != null) {
            return aVar;
        }
        h.f.b.j.c("viewModel");
        throw null;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        h.f.b.j.b(sharedPreferences, "sharedPreferences");
        h.f.b.j.b(str, "key");
        if (str.hashCode() == -1097462182 && str.equals("locale")) {
            String string = sharedPreferences.getString(str, "fa");
            if (string == null) {
                string = "fa";
            }
            b bVar = b.f4814b;
            Context Ha = Ha();
            h.f.b.j.a((Object) Ha, "requireContext()");
            bVar.a(Ha, string);
            BazaarApp.f12104i.a().a(true);
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Wa();
    }

    public void sa() {
        super.sa();
        PreferenceScreen Pa = Pa();
        h.f.b.j.a((Object) Pa, "preferenceScreen");
        Pa.r().unregisterOnSharedPreferenceChangeListener(this);
    }

    public void ta() {
        super.ta();
        PreferenceScreen Pa = Pa();
        h.f.b.j.a((Object) Pa, "preferenceScreen");
        Pa.r().registerOnSharedPreferenceChangeListener(this);
    }

    public final void b(View view) {
        if (view.findViewById(R.id.appBarLayout) == null) {
            Context Ha = Ha();
            h.f.b.j.a((Object) Ha, "requireContext()");
            LayoutInflater c2 = c.c.a.d.b.d.c(Ha);
            if (view != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                View inflate = c2.inflate(R.layout.fragment_setting_appbar, linearLayout, false);
                ((TextView) inflate.findViewById(R.id.titleTextView)).setText(R.string.settings);
                ((ImageView) inflate.findViewById(R.id.backButton)).setOnClickListener(new l(this, view));
                linearLayout.addView(inflate, 0);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
    }

    public final void c(Preference preference) {
        preference.a(this.oa);
        Preference.b bVar = this.oa;
        y Oa = Oa();
        h.f.b.j.a((Object) Oa, "preferenceManager");
        bVar.a(preference, Oa.h().getString(preference.m(), ""));
    }

    public final String d(Preference preference) {
        y Oa = Oa();
        h.f.b.j.a((Object) Oa, "preferenceManager");
        return Oa.h().getString(preference.m(), "");
    }

    public void a(Context context) {
        h.f.b.j.b(context, "context");
        d.a.a.a.b(this);
        super.a(context);
    }

    public void a(View view, Bundle bundle) {
        h.f.b.j.b(view, "view");
        super.a(view, bundle);
        F.b bVar = this.ja;
        if (bVar != null) {
            E a2 = G.a((Fragment) this, bVar).a(c.c.a.n.x.a.class);
            h.f.b.j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
            c.c.a.n.x.a aVar = (c.c.a.n.x.a) a2;
            h.a(this, aVar.g(), new SettingsFragment$onViewCreated$1$1(this));
            this.la = aVar;
            this.ma = new d(this.na);
            ab();
            Za();
            _a();
            b(view);
            return;
        }
        h.f.b.j.c("viewModelFactory");
        throw null;
    }

    public boolean b(MenuItem menuItem) {
        h.f.b.j.b(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            return super.b(menuItem);
        }
        a(new Intent(x(), MainActivity.class));
        return true;
    }

    public boolean b(Preference preference) {
        String m = preference != null ? preference.m() : null;
        if (m != null) {
            boolean z = false;
            switch (m.hashCode()) {
                case -2126414545:
                    if (m.equals("clear_search_history")) {
                        c.c.a.n.x.a aVar = this.la;
                        if (aVar != null) {
                            aVar.h();
                            break;
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
                case -2083367419:
                    if (m.equals("terms_of_service")) {
                        Context Ha = Ha();
                        h.f.b.j.a((Object) Ha, "requireContext()");
                        c.c.a.n.x.a aVar2 = this.la;
                        if (aVar2 != null) {
                            c.c.a.i.b.a(Ha, aVar2.o(), false, 2, null);
                            break;
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
                case -1904089585:
                    if (m.equals("client_id")) {
                        Preference a2 = a((CharSequence) "client_id");
                        h.f.b.j.a((Object) a2, "findPreference(KEY_DEVICE_IDENTIFIER)");
                        String d2 = d(a2);
                        if (d2 == null || m.a(d2)) {
                            z = true;
                        }
                        if (!z) {
                            Context E = E();
                            if (E != null) {
                                c.c.a.d.b.d.a(E, d2);
                            }
                            c cVar = this.ka;
                            if (cVar != null) {
                                cVar.a(b((int) R.string.device_id_copied_to_clipboard));
                                break;
                            } else {
                                h.f.b.j.c("messageManager");
                                throw null;
                            }
                        }
                    }
                    break;
                case -1863356540:
                    if (m.equals("suggest")) {
                        Context Ha2 = Ha();
                        h.f.b.j.a((Object) Ha2, "requireContext()");
                        String string = S().getString(R.string.suggest_desc);
                        h.f.b.j.a((Object) string, "resources.getString(R.string.suggest_desc)");
                        String string2 = S().getString(R.string.suggest_subject);
                        h.f.b.j.a((Object) string2, "resources.getString(R.string.suggest_subject)");
                        c.c.a.c.g.c.a(Ha2, string, string2);
                        break;
                    }
                    break;
                case -802326391:
                    if (m.equals("release_notes")) {
                        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.d.f4738a.j());
                        break;
                    }
                    break;
                case -314498168:
                    if (m.equals("privacy")) {
                        Context Ha3 = Ha();
                        h.f.b.j.a((Object) Ha3, "requireContext()");
                        c.c.a.n.x.a aVar3 = this.la;
                        if (aVar3 != null) {
                            c.c.a.i.b.a(Ha3, aVar3.l(), false, 2, null);
                            break;
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
                case -113380535:
                    if (m.equals("about_bazaar")) {
                        Context Ha4 = Ha();
                        h.f.b.j.a((Object) Ha4, "requireContext()");
                        c.c.a.n.x.a aVar4 = this.la;
                        if (aVar4 != null) {
                            c.c.a.i.b.a(Ha4, aVar4.i(), false, 2, null);
                            break;
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
                case 1438910750:
                    if (m.equals("see_bazaar_in_system_setting")) {
                        a(c.c.a.c.h.e.f4731a.a("com.farsitel.bazaar"));
                        break;
                    }
                    break;
                case 1522889671:
                    if (m.equals("copyright")) {
                        Context Ha5 = Ha();
                        h.f.b.j.a((Object) Ha5, "requireContext()");
                        c.c.a.n.x.a aVar5 = this.la;
                        if (aVar5 != null) {
                            c.c.a.i.b.a(Ha5, aVar5.j(), false, 2, null);
                            break;
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
                case 1888639690:
                    if (m.equals("update_scheduling")) {
                        c.c.a.n.x.a aVar6 = this.la;
                        if (aVar6 != null) {
                            c.c.a.n.x.a.a(aVar6, 0, 0, 0, 0, 15, null);
                            c.c.a.n.x.a aVar7 = this.la;
                            if (aVar7 != null) {
                                aVar7.f();
                                break;
                            } else {
                                h.f.b.j.c("viewModel");
                                throw null;
                            }
                        } else {
                            h.f.b.j.c("viewModel");
                            throw null;
                        }
                    }
                    break;
            }
        }
        return super.b(preference);
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (h.f.b.j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                c cVar = this.ka;
                if (cVar != null) {
                    cVar.a(b((int) R.string.search_history_cleared));
                } else {
                    h.f.b.j.c("messageManager");
                    throw null;
                }
            } else if (h.f.b.j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                c cVar2 = this.ka;
                if (cVar2 != null) {
                    cVar2.a(b((int) R.string.clear_search_history_failed));
                } else {
                    h.f.b.j.c("messageManager");
                    throw null;
                }
            } else {
                c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
                aVar.a((Throwable) new IllegalStateException("Invalid state of setting clear search state:" + resource.d()));
            }
        }
    }

    public void a(Bundle bundle, String str) {
        y Oa = Oa();
        h.f.b.j.a((Object) Oa, "preferenceManager");
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha = Ha();
        h.f.b.j.a((Object) Ha, "requireContext()");
        Oa.a(aVar.a(Ha).p());
        e((int) R.xml.settings);
        g(true);
        Preference a2 = a((CharSequence) "locale");
        h.f.b.j.a((Object) a2, "findPreference(KEY_LOCALE)");
        c(a2);
        Preference a3 = a((CharSequence) "update_network_type");
        h.f.b.j.a((Object) a3, "findPreference(KEY_UPDATE_NETWORK_TYPE)");
        c(a3);
        Ya();
        Xa();
        a((CharSequence) "keep_backup_of_apps").a((Preference.b) new f(this));
        a((CharSequence) "location_base_offer").a((Preference.b) new g(this));
        a((CharSequence) "bandwidth_optimization").a((Preference.b) new h(this));
    }

    public final void a(Calendar calendar, c.b bVar) {
        c.c.a.n.x.a.c a2 = c.c.a.n.x.a.c.ja.a(new c.C0104c(calendar.get(11), calendar.get(12)));
        a2.a(bVar);
        C0290n J = J();
        if (J != null) {
            a2.a(J, "update_scheduling");
        }
    }

    public void a(int i2, String[] strArr, int[] iArr) {
        h.f.b.j.b(strArr, "permissions");
        h.f.b.j.b(iArr, "grantResults");
        super.a(i2, strArr, iArr);
        d dVar = this.ma;
        if (dVar != null) {
            dVar.a(i2, strArr, iArr, (Fragment) this);
        } else {
            h.f.b.j.c("permissionManager");
            throw null;
        }
    }
}
