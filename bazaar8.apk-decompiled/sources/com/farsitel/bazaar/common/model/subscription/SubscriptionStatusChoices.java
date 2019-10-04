package com.farsitel.bazaar.common.model.subscription;

import h.f.b.f;

/* compiled from: SubscriptionItem.kt */
public enum SubscriptionStatusChoices {
    ACTIVE,
    CANCEL_BY_USER,
    CANCEL_BY_DEVELOPER,
    EXPIRE,
    UNKNOWN;
    
    public static final Companion Companion = null;

    /* compiled from: SubscriptionItem.kt */
    public static final class Companion {
        public Companion() {
        }

        public final SubscriptionStatusChoices getValue(int i2) {
            return i2 > SubscriptionStatusChoices.values().length ? SubscriptionStatusChoices.UNKNOWN : SubscriptionStatusChoices.values()[i2];
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    static {
        Companion = new Companion(null);
    }
}
