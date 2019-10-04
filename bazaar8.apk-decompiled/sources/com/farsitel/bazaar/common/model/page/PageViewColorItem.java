package com.farsitel.bazaar.common.model.page;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import c.c.a.c.h.c;
import h.f.b.f;
import java.io.Serializable;

/* compiled from: PageItem.kt */
public final class PageViewColorItem implements Serializable {
    public final String _backgroundColor;
    public final String _endGradientColor;
    public final String _startGradientColor;
    public final String _textColor;
    public final String backgroundColor;
    public final String endGradientColor;
    public final String startGradientColor;
    public final String textColor;

    public PageViewColorItem(String str, String str2, String str3, String str4) {
        this._backgroundColor = str;
        this._textColor = str2;
        this._startGradientColor = str3;
        this._endGradientColor = str4;
        this.backgroundColor = c.a(this._backgroundColor);
        this.startGradientColor = c.a(this._startGradientColor);
        this.endGradientColor = c.a(this._endGradientColor);
        this.textColor = c.a(this._textColor);
    }

    private final String component1() {
        return this._backgroundColor;
    }

    private final String component2() {
        return this._textColor;
    }

    private final String component3() {
        return this._startGradientColor;
    }

    private final String component4() {
        return this._endGradientColor;
    }

    public static /* synthetic */ PageViewColorItem copy$default(PageViewColorItem pageViewColorItem, String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageViewColorItem._backgroundColor;
        }
        if ((i2 & 2) != 0) {
            str2 = pageViewColorItem._textColor;
        }
        if ((i2 & 4) != 0) {
            str3 = pageViewColorItem._startGradientColor;
        }
        if ((i2 & 8) != 0) {
            str4 = pageViewColorItem._endGradientColor;
        }
        return pageViewColorItem.copy(str, str2, str3, str4);
    }

    public final PageViewColorItem copy(String str, String str2, String str3, String str4) {
        return new PageViewColorItem(str, str2, str3, str4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2._endGradientColor, (java.lang.Object) r3._endGradientColor) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.PageViewColorItem
            if (r0 == 0) goto L_0x0031
            com.farsitel.bazaar.common.model.page.PageViewColorItem r3 = (com.farsitel.bazaar.common.model.page.PageViewColorItem) r3
            java.lang.String r0 = r2._backgroundColor
            java.lang.String r1 = r3._backgroundColor
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2._textColor
            java.lang.String r1 = r3._textColor
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2._startGradientColor
            java.lang.String r1 = r3._startGradientColor
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2._endGradientColor
            java.lang.String r3 = r3._endGradientColor
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.PageViewColorItem.equals(java.lang.Object):boolean");
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final Drawable getBackgroundDrawable() {
        String str = this.startGradientColor;
        if (str == null || this.endGradientColor == null) {
            String str2 = this.backgroundColor;
            if (str2 != null) {
                return new ColorDrawable(Color.parseColor(str2));
            }
            return null;
        }
        return new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor(str), Color.parseColor(this.endGradientColor)});
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this._backgroundColor;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this._textColor;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this._startGradientColor;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this._endGradientColor;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "PageViewColorItem(_backgroundColor=" + this._backgroundColor + ", _textColor=" + this._textColor + ", _startGradientColor=" + this._startGradientColor + ", _endGradientColor=" + this._endGradientColor + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageViewColorItem(String str, String str2, String str3, String str4, int i2, f fVar) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4);
    }
}
