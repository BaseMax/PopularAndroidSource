package com.farsitel.bazaar.common.model.subscription;

import android.content.Context;
import c.c.a.c.a;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SubscriptionItem.kt */
public enum SubscriptionKind {
    MONTHLY,
    ANNUALLY,
    UNKNOWN;
    
    public static final Companion Companion = null;

    /* compiled from: SubscriptionItem.kt */
    public static final class Companion {
        public Companion() {
        }

        public final SubscriptionKind getValue(int i2) {
            return i2 > SubscriptionKind.values().length ? SubscriptionKind.UNKNOWN : SubscriptionKind.values()[i2];
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = null;

        static {
            $EnumSwitchMapping$0 = new int[SubscriptionKind.values().length];
            $EnumSwitchMapping$0[SubscriptionKind.MONTHLY.ordinal()] = 1;
            $EnumSwitchMapping$0[SubscriptionKind.ANNUALLY.ordinal()] = 2;
        }
    }

    static {
        Companion = new Companion(null);
    }

    public final String getString(Context context) {
        j.b(context, "context");
        int i2 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i2 == 1) {
            String string = context.getString(a.monthly);
            j.a((Object) string, "context.getString(R.string.monthly)");
            return string;
        } else if (i2 != 2) {
            return "";
        } else {
            String string2 = context.getString(a.annually);
            j.a((Object) string2, "context.getString(R.string.annually)");
            return string2;
        }
    }
}
