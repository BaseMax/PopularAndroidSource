package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ColorStateListInflaterCompat {
    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception unused) {
            return null;
        }
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* JADX WARNING: type inference failed for: r2v5, types: [java.lang.Object[]] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.content.res.ColorStateList inflate(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r0 = r19
            int r1 = r18.getDepth()
            r2 = 1
            int r1 = r1 + r2
            r3 = 20
            int[][] r4 = new int[r3][]
            int[] r3 = new int[r3]
            r5 = 0
            r6 = r3
            r3 = 0
        L_0x0011:
            int r7 = r18.next()
            if (r7 == r2) goto L_0x00b0
            int r8 = r18.getDepth()
            if (r8 >= r1) goto L_0x0020
            r9 = 3
            if (r7 == r9) goto L_0x00b0
        L_0x0020:
            r9 = 2
            if (r7 != r9) goto L_0x00a9
            if (r8 > r1) goto L_0x00a9
            java.lang.String r7 = r18.getName()
            java.lang.String r8 = "item"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x00a9
            int[] r7 = androidx.core.R.styleable.ColorStateListItem
            r8 = r17
            r9 = r20
            android.content.res.TypedArray r7 = obtainAttributes(r8, r9, r0, r7)
            int r10 = androidx.core.R.styleable.ColorStateListItem_android_color
            r11 = -65281(0xffffffffffff00ff, float:NaN)
            int r10 = r7.getColor(r10, r11)
            int r11 = androidx.core.R.styleable.ColorStateListItem_android_alpha
            boolean r11 = r7.hasValue(r11)
            r12 = 1065353216(0x3f800000, float:1.0)
            if (r11 == 0) goto L_0x0055
            int r11 = androidx.core.R.styleable.ColorStateListItem_android_alpha
            float r12 = r7.getFloat(r11, r12)
            goto L_0x0063
        L_0x0055:
            int r11 = androidx.core.R.styleable.ColorStateListItem_alpha
            boolean r11 = r7.hasValue(r11)
            if (r11 == 0) goto L_0x0063
            int r11 = androidx.core.R.styleable.ColorStateListItem_alpha
            float r12 = r7.getFloat(r11, r12)
        L_0x0063:
            r7.recycle()
            int r7 = r19.getAttributeCount()
            int[] r11 = new int[r7]
            r13 = 0
            r14 = 0
        L_0x006e:
            if (r13 >= r7) goto L_0x0093
            int r15 = r0.getAttributeNameResource(r13)
            r2 = 16843173(0x10101a5, float:2.3694738E-38)
            if (r15 == r2) goto L_0x008f
            r2 = 16843551(0x101031f, float:2.3695797E-38)
            if (r15 == r2) goto L_0x008f
            int r2 = androidx.core.R.attr.alpha
            if (r15 == r2) goto L_0x008f
            int r2 = r14 + 1
            boolean r16 = r0.getAttributeBooleanValue(r13, r5)
            if (r16 == 0) goto L_0x008b
            goto L_0x008c
        L_0x008b:
            int r15 = -r15
        L_0x008c:
            r11[r14] = r15
            r14 = r2
        L_0x008f:
            int r13 = r13 + 1
            r2 = 1
            goto L_0x006e
        L_0x0093:
            int[] r2 = android.util.StateSet.trimStateSet(r11, r14)
            int r7 = modulateColorAlpha(r10, r12)
            int[] r6 = androidx.core.content.res.GrowingArrayUtils.append((int[]) r6, (int) r3, (int) r7)
            java.lang.Object[] r2 = androidx.core.content.res.GrowingArrayUtils.append((T[]) r4, (int) r3, r2)
            r4 = r2
            int[][] r4 = (int[][]) r4
            int r3 = r3 + 1
            goto L_0x00ad
        L_0x00a9:
            r8 = r17
            r9 = r20
        L_0x00ad:
            r2 = 1
            goto L_0x0011
        L_0x00b0:
            int[] r0 = new int[r3]
            int[][] r1 = new int[r3][]
            java.lang.System.arraycopy(r6, r5, r0, r5, r3)
            java.lang.System.arraycopy(r4, r5, r1, r5, r3)
            android.content.res.ColorStateList r2 = new android.content.res.ColorStateList
            r2.<init>(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ColorStateListInflaterCompat.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private static int modulateColorAlpha(int i, float f) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (Math.round(((float) Color.alpha(i)) * f) << 24);
    }
}
