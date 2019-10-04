package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class AppDetailsInline {
    public final InlineDemo inlineDemo;
    public final String kashanID;
    public final int minInlinePlatformVersion;

    public AppDetailsInline(String str, int i2, InlineDemo inlineDemo2) {
        j.b(str, "kashanID");
        this.kashanID = str;
        this.minInlinePlatformVersion = i2;
        this.inlineDemo = inlineDemo2;
    }

    public final InlineDemo getInlineDemo() {
        return this.inlineDemo;
    }

    public final String getKashanID() {
        return this.kashanID;
    }

    public final int getMinInlinePlatformVersion() {
        return this.minInlinePlatformVersion;
    }
}
