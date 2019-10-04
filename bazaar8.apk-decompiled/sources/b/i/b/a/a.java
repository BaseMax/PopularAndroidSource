package b.i.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ColorStateListInflaterCompat */
public final class a {
    public static ColorStateList a(Resources resources, int i2, Resources.Theme theme) {
        try {
            return a(resources, (XmlPullParser) resources.getXml(i2), theme);
        } catch (Exception e2) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e2);
            return null;
        }
    }

    /* JADX WARNING: type inference failed for: r2v5, types: [java.lang.Object[]] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.res.ColorStateList b(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) {
        /*
            r0 = r19
            int r1 = r18.getDepth()
            r2 = 1
            int r1 = r1 + r2
            r3 = 20
            int[][] r3 = new int[r3][]
            int r4 = r3.length
            int[] r4 = new int[r4]
            r5 = 0
            r6 = 0
        L_0x0011:
            int r7 = r18.next()
            if (r7 == r2) goto L_0x00b2
            int r8 = r18.getDepth()
            if (r8 >= r1) goto L_0x0020
            r9 = 3
            if (r7 == r9) goto L_0x00b2
        L_0x0020:
            r9 = 2
            if (r7 != r9) goto L_0x00ab
            if (r8 > r1) goto L_0x00ab
            java.lang.String r7 = r18.getName()
            java.lang.String r8 = "item"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L_0x0033
            goto L_0x00ab
        L_0x0033:
            int[] r7 = b.i.g.ColorStateListItem
            r8 = r17
            r9 = r20
            android.content.res.TypedArray r7 = a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r9, (android.util.AttributeSet) r0, (int[]) r7)
            int r10 = b.i.g.ColorStateListItem_android_color
            r11 = -65281(0xffffffffffff00ff, float:NaN)
            int r10 = r7.getColor(r10, r11)
            r11 = 1065353216(0x3f800000, float:1.0)
            int r12 = b.i.g.ColorStateListItem_android_alpha
            boolean r12 = r7.hasValue(r12)
            if (r12 == 0) goto L_0x0057
            int r12 = b.i.g.ColorStateListItem_android_alpha
            float r11 = r7.getFloat(r12, r11)
            goto L_0x0065
        L_0x0057:
            int r12 = b.i.g.ColorStateListItem_alpha
            boolean r12 = r7.hasValue(r12)
            if (r12 == 0) goto L_0x0065
            int r12 = b.i.g.ColorStateListItem_alpha
            float r11 = r7.getFloat(r12, r11)
        L_0x0065:
            r7.recycle()
            int r7 = r19.getAttributeCount()
            int[] r12 = new int[r7]
            r13 = 0
            r14 = 0
        L_0x0070:
            if (r13 >= r7) goto L_0x0095
            int r15 = r0.getAttributeNameResource(r13)
            r2 = 16843173(0x10101a5, float:2.3694738E-38)
            if (r15 == r2) goto L_0x0091
            r2 = 16843551(0x101031f, float:2.3695797E-38)
            if (r15 == r2) goto L_0x0091
            int r2 = b.i.a.alpha
            if (r15 == r2) goto L_0x0091
            int r2 = r14 + 1
            boolean r16 = r0.getAttributeBooleanValue(r13, r5)
            if (r16 == 0) goto L_0x008d
            goto L_0x008e
        L_0x008d:
            int r15 = -r15
        L_0x008e:
            r12[r14] = r15
            r14 = r2
        L_0x0091:
            int r13 = r13 + 1
            r2 = 1
            goto L_0x0070
        L_0x0095:
            int[] r2 = android.util.StateSet.trimStateSet(r12, r14)
            int r7 = a(r10, r11)
            int[] r4 = b.i.b.a.e.a((int[]) r4, (int) r6, (int) r7)
            java.lang.Object[] r2 = b.i.b.a.e.a((T[]) r3, (int) r6, r2)
            r3 = r2
            int[][] r3 = (int[][]) r3
            int r6 = r6 + 1
            goto L_0x00af
        L_0x00ab:
            r8 = r17
            r9 = r20
        L_0x00af:
            r2 = 1
            goto L_0x0011
        L_0x00b2:
            int[] r0 = new int[r6]
            int[][] r1 = new int[r6][]
            java.lang.System.arraycopy(r4, r5, r0, r5, r6)
            java.lang.System.arraycopy(r3, r5, r1, r5, r6)
            android.content.res.ColorStateList r2 = new android.content.res.ColorStateList
            r2.<init>(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.b.a.a.b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return a(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return b(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static int a(int i2, float f2) {
        return (i2 & 16777215) | (Math.round(((float) Color.alpha(i2)) * f2) << 24);
    }
}
