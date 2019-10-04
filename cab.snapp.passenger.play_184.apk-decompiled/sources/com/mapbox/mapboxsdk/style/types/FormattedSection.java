package com.mapbox.mapboxsdk.style.types;

import com.mapbox.mapboxsdk.utils.ColorUtils;
import java.util.Arrays;
import java.util.HashMap;

public class FormattedSection {
    private Number fontScale;
    private String[] fontStack;
    private String text;
    private String textColor;

    public FormattedSection(String str) {
        this(str, null, null, null);
    }

    public FormattedSection(String str, Number number, String[] strArr, String str2) {
        this.text = str;
        this.fontScale = number;
        this.fontStack = strArr;
        this.textColor = str2;
    }

    @Deprecated
    public FormattedSection(String str, Number number, String[] strArr) {
        this(str, number, strArr, null);
    }

    @Deprecated
    public FormattedSection(String str, Number number) {
        this(str, number, null, null);
    }

    @Deprecated
    public FormattedSection(String str, String[] strArr) {
        this(str, null, strArr, null);
    }

    public String getText() {
        return this.text;
    }

    public Number getFontScale() {
        return this.fontScale;
    }

    public String[] getFontStack() {
        return this.fontStack;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public void setFontScale(Number number) {
        this.fontScale = number;
    }

    public void setFontStack(String[] strArr) {
        this.fontStack = strArr;
    }

    public void setTextColor(String str) {
        this.textColor = str;
    }

    public void setTextColor(int i) {
        this.textColor = ColorUtils.colorToRgbaString(i);
    }

    /* access modifiers changed from: package-private */
    public void setTextColor(Object obj) {
        setTextColor((String) obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FormattedSection formattedSection = (FormattedSection) obj;
            String str = this.text;
            if (str == null ? formattedSection.text != null : !str.equals(formattedSection.text)) {
                return false;
            }
            Number number = this.fontScale;
            if (number == null ? formattedSection.fontScale != null : !number.equals(formattedSection.fontScale)) {
                return false;
            }
            if (!Arrays.equals(this.fontStack, formattedSection.fontStack)) {
                return false;
            }
            String str2 = this.textColor;
            String str3 = formattedSection.textColor;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.text;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Number number = this.fontScale;
        int hashCode2 = (((hashCode + (number != null ? number.hashCode() : 0)) * 31) + Arrays.hashCode(this.fontStack)) * 31;
        String str2 = this.textColor;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode2 + i;
    }

    /* access modifiers changed from: package-private */
    public Object[] toArray() {
        HashMap hashMap = new HashMap();
        hashMap.put("font-scale", this.fontScale);
        hashMap.put("text-font", this.fontStack);
        hashMap.put("text-color", this.textColor);
        return new Object[]{this.text, hashMap};
    }

    public String toString() {
        return "FormattedSection{text='" + this.text + '\'' + ", fontScale=" + this.fontScale + ", fontStack=" + Arrays.toString(this.fontStack) + ", textColor='" + this.textColor + '\'' + '}';
    }
}
