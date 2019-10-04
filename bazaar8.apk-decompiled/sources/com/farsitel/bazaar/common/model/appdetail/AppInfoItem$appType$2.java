package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: ViewHolderItem.kt */
final class AppInfoItem$appType$2 extends Lambda implements a<AppInfoItem.AppType> {
    public final /* synthetic */ AppInfoItem this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppInfoItem$appType$2(AppInfoItem appInfoItem) {
        super(0);
        this.this$0 = appInfoItem;
    }

    public final AppInfoItem.AppType invoke() {
        Integer access$getApplicationType$p = this.this$0.applicationType;
        int value = AppInfoItem.AppType.INLINE.getValue();
        if (access$getApplicationType$p != null && access$getApplicationType$p.intValue() == value) {
            return AppInfoItem.AppType.INLINE;
        }
        int value2 = AppInfoItem.AppType.DUAL.getValue();
        if (access$getApplicationType$p != null && access$getApplicationType$p.intValue() == value2) {
            return AppInfoItem.AppType.DUAL;
        }
        return AppInfoItem.AppType.APP;
    }
}
