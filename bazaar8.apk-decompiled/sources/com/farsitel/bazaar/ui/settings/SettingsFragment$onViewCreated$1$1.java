package com.farsitel.bazaar.ui.settings;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: SettingsFragment.kt */
final /* synthetic */ class SettingsFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends None>, h> {
    public SettingsFragment$onViewCreated$1$1(SettingsFragment settingsFragment) {
        super(1, settingsFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<None>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(SettingsFragment.class);
    }

    public final String g() {
        return "handleClearSearch(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleClearSearch";
    }

    public final void a(Resource<None> resource) {
        ((SettingsFragment) this.receiver).a(resource);
    }
}
