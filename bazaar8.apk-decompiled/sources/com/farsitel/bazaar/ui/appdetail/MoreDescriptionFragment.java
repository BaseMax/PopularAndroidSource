package com.farsitel.bazaar.ui.appdetail;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import b.w.C0313j;
import c.c.a.c.b.h;
import c.c.a.c.b.i;
import c.c.a.c.d.c;
import c.c.a.c.d.e;
import c.c.a.d;
import c.c.a.d.a.a;
import c.c.a.f.C0436k;
import c.c.a.i.b;
import c.c.a.n.b.E;
import c.c.a.n.b.F;
import c.c.a.n.b.G;
import c.c.a.n.c.a.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.AppPermissionItemClick;
import com.farsitel.bazaar.analytics.model.what.AppUpgradeChangeLogItemClick;
import com.farsitel.bazaar.analytics.model.what.UrlItemClick;
import com.farsitel.bazaar.analytics.model.where.AppMoreDescriptionScreen;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;
import h.a.u;
import h.f.b.j;
import h.k.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: MoreDescriptionFragment.kt */
public final class MoreDescriptionFragment extends c implements G {
    public C0436k fa;
    public E ga;
    public HashMap ha;

    public void La() {
        HashMap hashMap = this.ha;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0436k a2 = C0436k.a(layoutInflater, viewGroup, false);
        E e2 = this.ga;
        if (e2 != null) {
            a2.a(4, (Object) e2.a());
            a2.a(37, (Object) this);
            j.a((Object) a2, "FragmentMoreDescriptionB…iptionFragment)\n        }");
            this.fa = a2;
            C0436k kVar = this.fa;
            if (kVar != null) {
                return kVar.h();
            }
            j.c("bindingView");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        E.a aVar = E.f6195a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ga = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.ha == null) {
            this.ha = new HashMap();
        }
        View view = (View) this.ha.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ha.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final ToolbarInfoModel f(int i2) {
        E e2 = this.ga;
        if (e2 != null) {
            String iconUrl = e2.a().getIconUrl();
            E e3 = this.ga;
            if (e3 != null) {
                String appName = e3.a().getAppName();
                String b2 = b(i2);
                j.a((Object) b2, "getString(pageDesc)");
                return new ToolbarInfoModel(iconUrl, appName, b2);
            }
            j.c("moreDescriptionArgs");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public void o() {
        E e2 = this.ga;
        if (e2 != null) {
            String shamedURL = e2.a().getShamedURL();
            if (shamedURL == null) {
                shamedURL = "";
            }
            E e3 = this.ga;
            if (e3 != null) {
                String referrer = e3.a().getReferrer();
                if (referrer == null) {
                    referrer = e.a();
                }
                c.a(this, new UrlItemClick(shamedURL, referrer), null, null, 6, null);
                E e4 = this.ga;
                if (e4 != null) {
                    String shamedURL2 = e4.a().getShamedURL();
                    if (shamedURL2 != null) {
                        Context Ha = Ha();
                        j.a((Object) Ha, "requireContext()");
                        b.a(Ha, shamedURL2, false, 2, null);
                        return;
                    }
                    return;
                }
                j.c("moreDescriptionArgs");
                throw null;
            }
            j.c("moreDescriptionArgs");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void r() {
        b.w.b.b.a(this).i();
    }

    public void s() {
        E e2 = this.ga;
        if (e2 != null) {
            String packageName = e2.a().getPackageName();
            E e3 = this.ga;
            if (e3 != null) {
                String referrer = e3.a().getReferrer();
                if (referrer == null) {
                    referrer = e.a();
                }
                c.a(this, new AppPermissionItemClick(referrer), null, null, 6, null);
                E e4 = this.ga;
                if (e4 != null) {
                    List<String> permissions = e4.a().getPermissions();
                    if (permissions != null) {
                        ArrayList arrayList = new ArrayList();
                        for (T next : permissions) {
                            boolean z = false;
                            if (!n.a((CharSequence) (String) next, (CharSequence) packageName, false, 2, (Object) null)) {
                                z = true;
                            }
                            if (z) {
                                arrayList.add(next);
                            }
                        }
                        c.c.a.i.c.a(b.w.b.b.a(this), F.f6197a.a(f(R.string.permissions), u.a(arrayList, "<br/>", null, null, 0, null, null, 62, null)));
                        return;
                    }
                    return;
                }
                j.c("moreDescriptionArgs");
                throw null;
            }
            j.c("moreDescriptionArgs");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public void t() {
        C0313j a2 = b.w.b.b.a(this);
        d.l lVar = d.f4738a;
        E e2 = this.ga;
        if (e2 != null) {
            String categorySlug = e2.a().getCategorySlug();
            E e3 = this.ga;
            if (e3 != null) {
                String categoryName = e3.a().getCategoryName();
                c.k kVar = new c.k();
                E e4 = this.ga;
                if (e4 != null) {
                    c.c.a.i.c.a(a2, d.l.a(lVar, categorySlug, false, categoryName, kVar.a(e4.a().getReferrer()), 2, null));
                } else {
                    j.c("moreDescriptionArgs");
                    throw null;
                }
            } else {
                j.c("moreDescriptionArgs");
                throw null;
            }
        } else {
            j.c("moreDescriptionArgs");
            throw null;
        }
    }

    public void u() {
        E e2 = this.ga;
        if (e2 != null) {
            String referrer = e2.a().getReferrer();
            if (referrer == null) {
                referrer = e.a();
            }
            c.c.a.n.c.a.c.a(this, new AppUpgradeChangeLogItemClick(referrer), null, null, 6, null);
            E e3 = this.ga;
            if (e3 != null) {
                String changeLog = e3.a().getChangeLog();
                if (changeLog != null) {
                    c.c.a.i.c.a(b.w.b.b.a(this), F.f6197a.a(f(R.string.changeLog), changeLog));
                    return;
                }
                return;
            }
            j.c("moreDescriptionArgs");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public AppMoreDescriptionScreen Qa() {
        E e2 = this.ga;
        if (e2 != null) {
            return new AppMoreDescriptionScreen(e2.a().getPackageName());
        }
        j.c("moreDescriptionArgs");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E e2 = this.ga;
        if (e2 != null) {
            AppMoreDescriptionItem a2 = e2.a();
            c.c.a.c.h.e eVar = c.c.a.c.h.e.f4731a;
            Context Ha = Ha();
            j.a((Object) Ha, "requireContext()");
            if (eVar.a(Ha, a2.getPackageName(), a2.getAppVersionCode())) {
                c.c.a.c.h.e eVar2 = c.c.a.c.h.e.f4731a;
                Context Ha2 = Ha();
                j.a((Object) Ha2, "requireContext()");
                PackageInfo e3 = eVar2.e(Ha2, a2.getPackageName());
                if (e3 != null) {
                    String str = e3.versionName;
                    String appVersion = a2.getAppVersion();
                    if (j.a((Object) str, (Object) appVersion)) {
                        long b2 = h.b(e3);
                        Long appVersionCode = a2.getAppVersionCode();
                        String a3 = a((int) R.string.app_version, str, Long.valueOf(b2));
                        appVersion = a((int) R.string.app_version, appVersion, appVersionCode);
                        str = a3;
                    }
                    C0436k kVar = this.fa;
                    if (kVar != null) {
                        TextView textView = kVar.Q;
                        j.a((Object) textView, "bindingView.informationVersionValue");
                        j.a((Object) str, "installedVersionName");
                        a.C0074a aVar = a.f4744b;
                        Context Ha3 = Ha();
                        j.a((Object) Ha3, "requireContext()");
                        textView.setText(i.a(str, aVar.a(Ha3).n()));
                        C0436k kVar2 = this.fa;
                        if (kVar2 != null) {
                            TextView textView2 = kVar2.P;
                            j.a((Object) textView2, "bindingView.informationUpdateToValue");
                            textView2.setText(appVersion);
                            C0436k kVar3 = this.fa;
                            if (kVar3 != null) {
                                Group group = kVar3.O;
                                j.a((Object) group, "bindingView.informationUpdateToGroup");
                                group.setVisibility(0);
                                return;
                            }
                            j.c("bindingView");
                            throw null;
                        }
                        j.c("bindingView");
                        throw null;
                    }
                    j.c("bindingView");
                    throw null;
                }
                j.a();
                throw null;
            }
            C0436k kVar4 = this.fa;
            if (kVar4 != null) {
                TextView textView3 = kVar4.Q;
                j.a((Object) textView3, "bindingView.informationVersionValue");
                textView3.setText(a2.getAppVersion());
                C0436k kVar5 = this.fa;
                if (kVar5 != null) {
                    Group group2 = kVar5.O;
                    j.a((Object) group2, "bindingView.informationUpdateToGroup");
                    group2.setVisibility(8);
                    return;
                }
                j.c("bindingView");
                throw null;
            }
            j.c("bindingView");
            throw null;
        }
        j.c("moreDescriptionArgs");
        throw null;
    }
}
