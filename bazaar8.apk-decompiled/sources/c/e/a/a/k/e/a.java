package c.e.a.a.k.e;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import c.e.a.a.k.b;
import c.e.a.a.k.c;
import c.e.a.a.o.p;
import c.e.a.a.o.q;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SubripDecoder */
public final class a extends c {
    public static final Pattern o = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");
    public static final Pattern p = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder q = new StringBuilder();
    public final ArrayList<String> r = new ArrayList<>();

    public a() {
        super("SubripDecoder");
    }

    public static float b(int i2) {
        if (i2 == 0) {
            return 0.08f;
        }
        if (i2 == 1) {
            return 0.5f;
        }
        if (i2 == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    public b a(byte[] bArr, int i2, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        q qVar = new q();
        v vVar = new v(bArr, i2);
        while (true) {
            String k2 = vVar.k();
            if (k2 == null) {
                break;
            } else if (k2.length() != 0) {
                try {
                    Integer.parseInt(k2);
                    String k3 = vVar.k();
                    if (k3 == null) {
                        p.d("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = o.matcher(k3);
                    if (matcher.matches()) {
                        boolean z2 = true;
                        qVar.a(a(matcher, 1));
                        int i3 = 0;
                        if (!TextUtils.isEmpty(matcher.group(6))) {
                            qVar.a(a(matcher, 6));
                        } else {
                            z2 = false;
                        }
                        this.q.setLength(0);
                        this.r.clear();
                        while (true) {
                            String k4 = vVar.k();
                            if (TextUtils.isEmpty(k4)) {
                                break;
                            }
                            if (this.q.length() > 0) {
                                this.q.append("<br>");
                            }
                            this.q.append(a(k4, this.r));
                        }
                        Spanned fromHtml = Html.fromHtml(this.q.toString());
                        while (true) {
                            if (i3 >= this.r.size()) {
                                str = null;
                                break;
                            }
                            str = this.r.get(i3);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i3++;
                        }
                        arrayList.add(a(fromHtml, str));
                        if (z2) {
                            arrayList.add(null);
                        }
                    } else {
                        p.d("SubripDecoder", "Skipping invalid timing: " + k3);
                    }
                } catch (NumberFormatException unused) {
                    p.d("SubripDecoder", "Skipping invalid index: " + k2);
                }
            }
        }
        b[] bVarArr = new b[arrayList.size()];
        arrayList.toArray(bVarArr);
        return new b(bVarArr, qVar.b());
    }

    public final String a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = p.matcher(trim);
        int i2 = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i2;
            int length = group.length();
            sb.replace(start, start + length, "");
            i2 += length;
        }
        return sb.toString();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.a.k.b a(android.text.Spanned r18, java.lang.String r19) {
        /*
            r17 = this;
            r0 = r19
            if (r0 != 0) goto L_0x000c
            c.e.a.a.k.b r0 = new c.e.a.a.k.b
            r2 = r18
            r0.<init>(r2)
            return r0
        L_0x000c:
            r2 = r18
            int r1 = r19.hashCode()
            java.lang.String r3 = "{\\an8}"
            java.lang.String r4 = "{\\an7}"
            java.lang.String r5 = "{\\an6}"
            java.lang.String r6 = "{\\an5}"
            java.lang.String r7 = "{\\an4}"
            java.lang.String r8 = "{\\an3}"
            java.lang.String r9 = "{\\an2}"
            java.lang.String r10 = "{\\an1}"
            r13 = 5
            r14 = 4
            r15 = 3
            r11 = 2
            r12 = 1
            switch(r1) {
                case -685620710: goto L_0x006e;
                case -685620679: goto L_0x0066;
                case -685620648: goto L_0x005e;
                case -685620617: goto L_0x0056;
                case -685620586: goto L_0x004e;
                case -685620555: goto L_0x0046;
                case -685620524: goto L_0x003e;
                case -685620493: goto L_0x0035;
                case -685620462: goto L_0x002b;
                default: goto L_0x002a;
            }
        L_0x002a:
            goto L_0x0076
        L_0x002b:
            java.lang.String r1 = "{\\an9}"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L_0x0076
            r1 = 5
            goto L_0x0077
        L_0x0035:
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L_0x0076
            r1 = 8
            goto L_0x0077
        L_0x003e:
            boolean r1 = r0.equals(r4)
            if (r1 == 0) goto L_0x0076
            r1 = 2
            goto L_0x0077
        L_0x0046:
            boolean r1 = r0.equals(r5)
            if (r1 == 0) goto L_0x0076
            r1 = 4
            goto L_0x0077
        L_0x004e:
            boolean r1 = r0.equals(r6)
            if (r1 == 0) goto L_0x0076
            r1 = 7
            goto L_0x0077
        L_0x0056:
            boolean r1 = r0.equals(r7)
            if (r1 == 0) goto L_0x0076
            r1 = 1
            goto L_0x0077
        L_0x005e:
            boolean r1 = r0.equals(r8)
            if (r1 == 0) goto L_0x0076
            r1 = 3
            goto L_0x0077
        L_0x0066:
            boolean r1 = r0.equals(r9)
            if (r1 == 0) goto L_0x0076
            r1 = 6
            goto L_0x0077
        L_0x006e:
            boolean r1 = r0.equals(r10)
            if (r1 == 0) goto L_0x0076
            r1 = 0
            goto L_0x0077
        L_0x0076:
            r1 = -1
        L_0x0077:
            if (r1 == 0) goto L_0x0089
            if (r1 == r12) goto L_0x0089
            if (r1 == r11) goto L_0x0089
            if (r1 == r15) goto L_0x0086
            if (r1 == r14) goto L_0x0086
            if (r1 == r13) goto L_0x0086
            r16 = 1
            goto L_0x008b
        L_0x0086:
            r16 = 2
            goto L_0x008b
        L_0x0089:
            r16 = 0
        L_0x008b:
            int r1 = r19.hashCode()
            switch(r1) {
                case -685620710: goto L_0x00d6;
                case -685620679: goto L_0x00ce;
                case -685620648: goto L_0x00c6;
                case -685620617: goto L_0x00be;
                case -685620586: goto L_0x00b6;
                case -685620555: goto L_0x00ad;
                case -685620524: goto L_0x00a5;
                case -685620493: goto L_0x009d;
                case -685620462: goto L_0x0093;
                default: goto L_0x0092;
            }
        L_0x0092:
            goto L_0x00de
        L_0x0093:
            java.lang.String r1 = "{\\an9}"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00de
            r0 = 5
            goto L_0x00df
        L_0x009d:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x00de
            r0 = 4
            goto L_0x00df
        L_0x00a5:
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto L_0x00de
            r0 = 3
            goto L_0x00df
        L_0x00ad:
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L_0x00de
            r0 = 8
            goto L_0x00df
        L_0x00b6:
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L_0x00de
            r0 = 7
            goto L_0x00df
        L_0x00be:
            boolean r0 = r0.equals(r7)
            if (r0 == 0) goto L_0x00de
            r0 = 6
            goto L_0x00df
        L_0x00c6:
            boolean r0 = r0.equals(r8)
            if (r0 == 0) goto L_0x00de
            r0 = 2
            goto L_0x00df
        L_0x00ce:
            boolean r0 = r0.equals(r9)
            if (r0 == 0) goto L_0x00de
            r0 = 1
            goto L_0x00df
        L_0x00d6:
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x00de
            r0 = 0
            goto L_0x00df
        L_0x00de:
            r0 = -1
        L_0x00df:
            if (r0 == 0) goto L_0x00ef
            if (r0 == r12) goto L_0x00ef
            if (r0 == r11) goto L_0x00ef
            if (r0 == r15) goto L_0x00ed
            if (r0 == r14) goto L_0x00ed
            if (r0 == r13) goto L_0x00ed
            r6 = 1
            goto L_0x00f0
        L_0x00ed:
            r6 = 0
            goto L_0x00f0
        L_0x00ef:
            r6 = 2
        L_0x00f0:
            c.e.a.a.k.b r0 = new c.e.a.a.k.b
            r3 = 0
            float r4 = b(r6)
            r5 = 0
            float r7 = b(r16)
            r9 = 1
            r1 = r0
            r2 = r18
            r8 = r16
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.e.a.a(android.text.Spanned, java.lang.String):c.e.a.a.k.b");
    }

    public static long a(Matcher matcher, int i2) {
        return ((Long.parseLong(matcher.group(i2 + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i2 + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i2 + 3)) * 1000) + Long.parseLong(matcher.group(i2 + 4))) * 1000;
    }
}
