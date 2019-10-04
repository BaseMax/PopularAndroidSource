package com.farsitel.bazaar.app.receiver;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import c.c.a.a.a;
import c.c.a.b.d.b;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.analytics.model.what.PackageChangeEvent;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.common.model.ui.PackageChangeType;
import d.a.e;
import h.f.b.j;

/* compiled from: PackageChangeReceiver.kt */
public final class PackageChangeReceiver extends e {

    /* renamed from: a  reason: collision with root package name */
    public b f12143a;

    public void onReceive(Context context, Intent intent) {
        PackageChangeType packageChangeType;
        super.onReceive(context, intent);
        if (intent != null) {
            Uri data = intent.getData();
            if (data != null) {
                String schemeSpecificPart = data.getSchemeSpecificPart();
                if (schemeSpecificPart != null) {
                    String action = intent.getAction();
                    if (action != null) {
                        int hashCode = action.hashCode();
                        if (hashCode != -810471698) {
                            if (hashCode != 525384130) {
                                if (hashCode == 1544582882 && action.equals("android.intent.action.PACKAGE_ADDED")) {
                                    packageChangeType = PackageChangeType.ADD;
                                }
                            } else if (action.equals("android.intent.action.PACKAGE_REMOVED")) {
                                packageChangeType = PackageChangeType.REMOVE;
                            }
                        } else if (action.equals("android.intent.action.PACKAGE_REPLACED")) {
                            packageChangeType = PackageChangeType.REPLACE;
                        }
                        b bVar = this.f12143a;
                        if (bVar != null) {
                            bVar.a(new PackageChangeModel(schemeSpecificPart, packageChangeType));
                            a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new PackageChangeEvent(schemeSpecificPart, packageChangeType), new com.farsitel.bazaar.analytics.model.where.PackageChangeReceiver()));
                            return;
                        }
                        j.c("appManager");
                        throw null;
                    }
                }
            }
        }
    }
}
