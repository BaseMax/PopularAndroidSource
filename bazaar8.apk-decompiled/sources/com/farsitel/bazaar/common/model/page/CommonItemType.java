package com.farsitel.bazaar.common.model.page;

import com.crashlytics.android.answers.AnswersRetryFilesSender;

/* compiled from: PageType.kt */
public enum CommonItemType {
    VITRIN_PROMO(AnswersRetryFilesSender.BACKOFF_MS),
    VITRIN_HAMI_APP(1001),
    VITRIN_HAMI_INLINE(1002),
    VITRIN_VIDEO(1003),
    VITRIN_SERIAL(1004),
    VITRIN_APP(1005),
    VITRIN_EPISODE(1006),
    FEATURE_HEADER(1007),
    DESCRIPTION(1008),
    EDITOR_CHOICE_HEADER(1009),
    LIST_INLINE_APP(1010),
    LIST_EPISODE(1011);
    
    public final int value;

    /* access modifiers changed from: public */
    CommonItemType(int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }
}
