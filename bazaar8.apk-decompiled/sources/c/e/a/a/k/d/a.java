package c.e.a.a.k.d;

import c.e.a.a.k.b;
import c.e.a.a.k.c;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.q;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SsaDecoder */
public final class a extends c {
    public static final Pattern o = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)");
    public final boolean p;
    public int q;
    public int r;
    public int s;
    public int t;

    public a(List<byte[]> list) {
        super("SsaDecoder");
        if (list == null || list.isEmpty()) {
            this.p = false;
            return;
        }
        this.p = true;
        String a2 = I.a(list.get(0));
        C0737e.a(a2.startsWith("Format: "));
        a(a2);
        a(new v(list.get(1)));
    }

    public static long b(String str) {
        Matcher matcher = o.matcher(str);
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong(matcher.group(1)) * 60 * 60 * RetryManager.NANOSECONDS_IN_MS) + (Long.parseLong(matcher.group(2)) * 60 * RetryManager.NANOSECONDS_IN_MS) + (Long.parseLong(matcher.group(3)) * RetryManager.NANOSECONDS_IN_MS) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    public b a(byte[] bArr, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        q qVar = new q();
        v vVar = new v(bArr, i2);
        if (!this.p) {
            a(vVar);
        }
        a(vVar, (List<b>) arrayList, qVar);
        b[] bVarArr = new b[arrayList.size()];
        arrayList.toArray(bVarArr);
        return new b(bVarArr, qVar.b());
    }

    public final void a(v vVar) {
        String k2;
        do {
            k2 = vVar.k();
            if (k2 == null) {
                return;
            }
        } while (!k2.startsWith("[Events]"));
    }

    public final void a(v vVar, List<b> list, q qVar) {
        while (true) {
            String k2 = vVar.k();
            if (k2 == null) {
                return;
            }
            if (!this.p && k2.startsWith("Format: ")) {
                a(k2);
            } else if (k2.startsWith("Dialogue: ")) {
                a(k2, list, qVar);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0068  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 8
            java.lang.String r9 = r9.substring(r0)
            java.lang.String r0 = ","
            java.lang.String[] r9 = android.text.TextUtils.split(r9, r0)
            int r0 = r9.length
            r8.q = r0
            r0 = -1
            r8.r = r0
            r8.s = r0
            r8.t = r0
            r1 = 0
            r2 = 0
        L_0x0018:
            int r3 = r8.q
            if (r2 >= r3) goto L_0x006d
            r3 = r9[r2]
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = c.e.a.a.o.I.l(r3)
            int r4 = r3.hashCode()
            r5 = 100571(0x188db, float:1.4093E-40)
            r6 = 2
            r7 = 1
            if (r4 == r5) goto L_0x0050
            r5 = 3556653(0x36452d, float:4.983932E-39)
            if (r4 == r5) goto L_0x0046
            r5 = 109757538(0x68ac462, float:5.219839E-35)
            if (r4 == r5) goto L_0x003c
            goto L_0x005a
        L_0x003c:
            java.lang.String r4 = "start"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 0
            goto L_0x005b
        L_0x0046:
            java.lang.String r4 = "text"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 2
            goto L_0x005b
        L_0x0050:
            java.lang.String r4 = "end"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 1
            goto L_0x005b
        L_0x005a:
            r3 = -1
        L_0x005b:
            if (r3 == 0) goto L_0x0068
            if (r3 == r7) goto L_0x0065
            if (r3 == r6) goto L_0x0062
            goto L_0x006a
        L_0x0062:
            r8.t = r2
            goto L_0x006a
        L_0x0065:
            r8.s = r2
            goto L_0x006a
        L_0x0068:
            r8.r = r2
        L_0x006a:
            int r2 = r2 + 1
            goto L_0x0018
        L_0x006d:
            int r9 = r8.r
            if (r9 == r0) goto L_0x0079
            int r9 = r8.s
            if (r9 == r0) goto L_0x0079
            int r9 = r8.t
            if (r9 != r0) goto L_0x007b
        L_0x0079:
            r8.q = r1
        L_0x007b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.d.a.a(java.lang.String):void");
    }

    public final void a(String str, List<b> list, q qVar) {
        long j2;
        if (this.q == 0) {
            p.d("SsaDecoder", "Skipping dialogue line before complete format: " + str);
            return;
        }
        String[] split = str.substring(10).split(",", this.q);
        if (split.length != this.q) {
            p.d("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long b2 = b(split[this.r]);
        if (b2 == -9223372036854775807L) {
            p.d("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        String str2 = split[this.s];
        if (!str2.trim().isEmpty()) {
            j2 = b(str2);
            if (j2 == -9223372036854775807L) {
                p.d("SsaDecoder", "Skipping invalid timing: " + str);
                return;
            }
        } else {
            j2 = -9223372036854775807L;
        }
        list.add(new b(split[this.t].replaceAll("\\{.*?\\}", "").replaceAll("\\\\N", "\n").replaceAll("\\\\n", "\n")));
        qVar.a(b2);
        if (j2 != -9223372036854775807L) {
            list.add(null);
            qVar.a(j2);
        }
    }
}
