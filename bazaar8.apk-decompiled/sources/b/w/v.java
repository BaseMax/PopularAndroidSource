package b.w;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import b.w.C0310g;
import b.w.w;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: NavInflater */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f3333a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    public Context f3334b;

    /* renamed from: c  reason: collision with root package name */
    public L f3335c;

    public v(Context context, L l2) {
        this.f3334b = context;
        this.f3335c = l2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0049 A[Catch:{ Exception -> 0x0053, all -> 0x0051 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001b A[Catch:{ Exception -> 0x0053, all -> 0x0051 }] */
    @android.annotation.SuppressLint({"ResourceType"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b.w.r a(int r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f3334b
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.XmlResourceParser r1 = r0.getXml(r7)
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r1)
        L_0x000e:
            int r3 = r1.next()     // Catch:{ Exception -> 0x0053 }
            r4 = 2
            if (r3 == r4) goto L_0x0019
            r5 = 1
            if (r3 == r5) goto L_0x0019
            goto L_0x000e
        L_0x0019:
            if (r3 != r4) goto L_0x0049
            java.lang.String r3 = r1.getName()     // Catch:{ Exception -> 0x0053 }
            b.w.o r2 = r6.a((android.content.res.Resources) r0, (android.content.res.XmlResourceParser) r1, (android.util.AttributeSet) r2, (int) r7)     // Catch:{ Exception -> 0x0053 }
            boolean r4 = r2 instanceof b.w.r     // Catch:{ Exception -> 0x0053 }
            if (r4 == 0) goto L_0x002d
            b.w.r r2 = (b.w.r) r2     // Catch:{ Exception -> 0x0053 }
            r1.close()
            return r2
        L_0x002d:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ Exception -> 0x0053 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0053 }
            r4.<init>()     // Catch:{ Exception -> 0x0053 }
            java.lang.String r5 = "Root element <"
            r4.append(r5)     // Catch:{ Exception -> 0x0053 }
            r4.append(r3)     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = "> did not inflate into a NavGraph"
            r4.append(r3)     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = r4.toString()     // Catch:{ Exception -> 0x0053 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0053 }
            throw r2     // Catch:{ Exception -> 0x0053 }
        L_0x0049:
            org.xmlpull.v1.XmlPullParserException r2 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = "No start tag found"
            r2.<init>(r3)     // Catch:{ Exception -> 0x0053 }
            throw r2     // Catch:{ Exception -> 0x0053 }
        L_0x0051:
            r7 = move-exception
            goto L_0x007b
        L_0x0053:
            r2 = move-exception
            java.lang.RuntimeException r3 = new java.lang.RuntimeException     // Catch:{ all -> 0x0051 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0051 }
            r4.<init>()     // Catch:{ all -> 0x0051 }
            java.lang.String r5 = "Exception inflating "
            r4.append(r5)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = r0.getResourceName(r7)     // Catch:{ all -> 0x0051 }
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = " line "
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            int r7 = r1.getLineNumber()     // Catch:{ all -> 0x0051 }
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = r4.toString()     // Catch:{ all -> 0x0051 }
            r3.<init>(r7, r2)     // Catch:{ all -> 0x0051 }
            throw r3     // Catch:{ all -> 0x0051 }
        L_0x007b:
            r1.close()
            goto L_0x0080
        L_0x007f:
            throw r7
        L_0x0080:
            goto L_0x007f
        */
        throw new UnsupportedOperationException("Method not decompiled: b.w.v.a(int):b.w.r");
    }

    public final o a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i2) {
        o a2 = this.f3335c.a(xmlResourceParser.getName()).a();
        a2.a(this.f3334b, attributeSet);
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                break;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                break;
            } else if (next == 2 && depth2 <= depth) {
                String name = xmlResourceParser.getName();
                if ("argument".equals(name)) {
                    a(resources, a2, attributeSet, i2);
                } else if ("deepLink".equals(name)) {
                    a(resources, a2, attributeSet);
                } else if ("action".equals(name)) {
                    a(resources, a2, attributeSet, xmlResourceParser, i2);
                } else if ("include".equals(name) && (a2 instanceof r)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, N.NavInclude);
                    ((r) a2).a((o) a(obtainAttributes.getResourceId(N.NavInclude_graph, 0)));
                    obtainAttributes.recycle();
                } else if (a2 instanceof r) {
                    ((r) a2).a(a(resources, xmlResourceParser, attributeSet, i2));
                }
            }
        }
        return a2;
    }

    public final void a(Resources resources, o oVar, AttributeSet attributeSet, int i2) {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, N.NavArgument);
        String string = obtainAttributes.getString(N.NavArgument_android_name);
        if (string != null) {
            oVar.a(string, a(obtainAttributes, resources, i2));
            obtainAttributes.recycle();
            return;
        }
        throw new XmlPullParserException("Arguments must have a name");
    }

    public final void a(Resources resources, Bundle bundle, AttributeSet attributeSet, int i2) {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, N.NavArgument);
        String string = obtainAttributes.getString(N.NavArgument_android_name);
        if (string != null) {
            C0310g a2 = a(obtainAttributes, resources, i2);
            if (a2.b()) {
                a2.a(string, bundle);
            }
            obtainAttributes.recycle();
            return;
        }
        throw new XmlPullParserException("Arguments must have a name");
    }

    public final C0310g a(TypedArray typedArray, Resources resources, int i2) {
        C0310g.a aVar = new C0310g.a();
        boolean z = false;
        aVar.a(typedArray.getBoolean(N.NavArgument_nullable, false));
        TypedValue typedValue = f3333a.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            f3333a.set(typedValue);
        }
        String string = typedArray.getString(N.NavArgument_argType);
        int i3 = null;
        I<Integer> a2 = string != null ? I.a(string, resources.getResourcePackageName(i2)) : null;
        if (typedArray.getValue(N.NavArgument_android_defaultValue, typedValue)) {
            I<Integer> i4 = I.f3245b;
            if (a2 == i4) {
                int i5 = typedValue.resourceId;
                if (i5 != 0) {
                    i3 = Integer.valueOf(i5);
                } else if (typedValue.type == 16 && typedValue.data == 0) {
                    i3 = 0;
                } else {
                    throw new XmlPullParserException("unsupported value '" + typedValue.string + "' for " + a2.a() + ". Must be a reference to a resource.");
                }
            } else {
                int i6 = typedValue.resourceId;
                if (i6 != 0) {
                    if (a2 == null) {
                        a2 = i4;
                        i3 = Integer.valueOf(i6);
                    } else {
                        throw new XmlPullParserException("unsupported value '" + typedValue.string + "' for " + a2.a() + ". You must use a \"" + I.f3245b.a() + "\" type to reference other resources.");
                    }
                } else if (a2 == I.f3253j) {
                    i3 = typedArray.getString(N.NavArgument_android_defaultValue);
                } else {
                    int i7 = typedValue.type;
                    if (i7 == 3) {
                        String charSequence = typedValue.string.toString();
                        if (a2 == null) {
                            a2 = I.a(charSequence);
                        }
                        i3 = a2.b(charSequence);
                    } else if (i7 == 4) {
                        a2 = a(typedValue, a2, (I) I.f3249f, string, "float");
                        i3 = Float.valueOf(typedValue.getFloat());
                    } else if (i7 == 5) {
                        a2 = a(typedValue, a2, (I) I.f3244a, string, "dimension");
                        i3 = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i7 == 18) {
                        a2 = a(typedValue, a2, (I) I.f3251h, string, "boolean");
                        if (typedValue.data != 0) {
                            z = true;
                        }
                        i3 = Boolean.valueOf(z);
                    } else if (i7 < 16 || i7 > 31) {
                        throw new XmlPullParserException("unsupported argument type " + typedValue.type);
                    } else {
                        a2 = a(typedValue, a2, (I) I.f3244a, string, "integer");
                        i3 = Integer.valueOf(typedValue.data);
                    }
                }
            }
        }
        if (i3 != null) {
            aVar.a(i3);
        }
        if (a2 != null) {
            aVar.a((I<?>) a2);
        }
        return aVar.a();
    }

    public static I a(TypedValue typedValue, I i2, I i3, String str, String str2) {
        if (i2 == null || i2 == i3) {
            return i2 != null ? i2 : i3;
        }
        throw new XmlPullParserException("Type is " + str + " but found " + str2 + ": " + typedValue.data);
    }

    public final void a(Resources resources, o oVar, AttributeSet attributeSet) {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, N.NavDeepLink);
        String string = obtainAttributes.getString(N.NavDeepLink_uri);
        if (!TextUtils.isEmpty(string)) {
            oVar.a(string.replace("${applicationId}", this.f3334b.getPackageName()));
            obtainAttributes.recycle();
            return;
        }
        throw new IllegalArgumentException("Every <deepLink> must include an app:uri");
    }

    public final void a(Resources resources, o oVar, AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i2) {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, N.NavAction);
        int resourceId = obtainAttributes.getResourceId(N.NavAction_android_id, 0);
        C0308e eVar = new C0308e(obtainAttributes.getResourceId(N.NavAction_destination, 0));
        w.a aVar = new w.a();
        aVar.a(obtainAttributes.getBoolean(N.NavAction_launchSingleTop, false));
        aVar.a(obtainAttributes.getResourceId(N.NavAction_popUpTo, -1), obtainAttributes.getBoolean(N.NavAction_popUpToInclusive, false));
        aVar.a(obtainAttributes.getResourceId(N.NavAction_enterAnim, -1));
        aVar.b(obtainAttributes.getResourceId(N.NavAction_exitAnim, -1));
        aVar.c(obtainAttributes.getResourceId(N.NavAction_popEnterAnim, -1));
        aVar.d(obtainAttributes.getResourceId(N.NavAction_popExitAnim, -1));
        eVar.a(aVar.a());
        Bundle bundle = new Bundle();
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                break;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                break;
            } else if (next == 2 && depth2 <= depth && "argument".equals(xmlResourceParser.getName())) {
                a(resources, bundle, attributeSet, i2);
            }
        }
        if (!bundle.isEmpty()) {
            eVar.a(bundle);
        }
        oVar.a(resourceId, eVar);
        obtainAttributes.recycle();
    }
}
