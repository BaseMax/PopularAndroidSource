package com.b.a;

import com.google.gson.e;

public final class d implements j {

    /* renamed from: a  reason: collision with root package name */
    private final r f1961a;

    /* renamed from: b  reason: collision with root package name */
    private final b f1962b;
    private final e c;
    private final p d;
    private final m e;

    public final void destroy() {
    }

    public final boolean isBuilt() {
        return true;
    }

    public d(h hVar) {
        if (hVar.e == null) {
            hVar.e = new a(hVar.f1965a);
            if (!hVar.e.init()) {
                hVar.e = new n();
            }
        }
        this.c = hVar.e;
        if (hVar.f1966b == null) {
            hVar.f1966b = new q(hVar.f1965a, "Hawk2");
        }
        this.f1961a = hVar.f1966b;
        if (hVar.c == null) {
            if (hVar.d == null) {
                hVar.d = new f(new e());
            }
            hVar.c = new i(hVar.d);
        }
        this.f1962b = hVar.c;
        if (hVar.f == null) {
            hVar.f = new k(hVar.a());
        }
        this.d = hVar.f;
        this.e = hVar.a();
        m mVar = this.e;
        mVar.onLog("Hawk.init -> Encryption : " + this.c.getClass().getSimpleName());
    }

    public final <T> boolean put(String str, T t) {
        l.checkNull("Key", str);
        a("Hawk.put -> key: " + str + ", value: " + t);
        if (t == null) {
            a("Hawk.put -> Value is null. Any existing value will be deleted with the given key");
            return delete(str);
        }
        String bVar = this.f1962b.toString(t);
        a("Hawk.put -> Converted to ".concat(String.valueOf(bVar)));
        if (bVar == null) {
            a("Hawk.put -> Converter failed");
            return false;
        }
        String str2 = null;
        try {
            str2 = this.c.encrypt(str, bVar);
            a("Hawk.put -> Encrypted to  ".concat(String.valueOf(str2)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (str2 == null) {
            a("Hawk.put -> Encryption failed");
            return false;
        }
        String serialize = this.d.serialize(str2, t);
        a("Hawk.put -> Serialized to".concat(String.valueOf(serialize)));
        if (serialize == null) {
            a("Hawk.put -> Serialization failed");
            return false;
        } else if (this.f1961a.put(str, serialize)) {
            a("Hawk.put -> Stored successfully");
            return true;
        } else {
            a("Hawk.put -> Store operation failed");
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x007d A[SYNTHETIC, Splitter:B:24:0x007d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T> T get(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = java.lang.String.valueOf(r6)
            java.lang.String r1 = "Hawk.get -> key: "
            java.lang.String r0 = r1.concat(r0)
            r5.a(r0)
            r0 = 0
            if (r6 != 0) goto L_0x0016
            java.lang.String r6 = "Hawk.get -> null key, returning null value "
            r5.a(r6)
            return r0
        L_0x0016:
            com.b.a.r r1 = r5.f1961a
            java.lang.Object r1 = r1.get(r6)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = java.lang.String.valueOf(r1)
            java.lang.String r3 = "Hawk.get -> Fetched from storage : "
            java.lang.String r2 = r3.concat(r2)
            r5.a(r2)
            if (r1 != 0) goto L_0x0033
            java.lang.String r6 = "Hawk.get -> Fetching from storage failed"
            r5.a(r6)
            return r0
        L_0x0033:
            com.b.a.p r2 = r5.d
            com.b.a.c r1 = r2.deserialize(r1)
            java.lang.String r2 = "Hawk.get -> Deserialized"
            r5.a(r2)
            if (r1 != 0) goto L_0x0046
            java.lang.String r6 = "Hawk.get -> Deserialization failed"
            r5.a(r6)
            return r0
        L_0x0046:
            com.b.a.e r2 = r5.c     // Catch:{ Exception -> 0x005e }
            java.lang.String r3 = r1.f1960b     // Catch:{ Exception -> 0x005e }
            java.lang.String r6 = r2.decrypt(r6, r3)     // Catch:{ Exception -> 0x005e }
            java.lang.String r2 = "Hawk.get -> Decrypted to : "
            java.lang.String r3 = java.lang.String.valueOf(r6)     // Catch:{ Exception -> 0x005c }
            java.lang.String r2 = r2.concat(r3)     // Catch:{ Exception -> 0x005c }
            r5.a(r2)     // Catch:{ Exception -> 0x005c }
            goto L_0x0075
        L_0x005c:
            r2 = move-exception
            goto L_0x0060
        L_0x005e:
            r2 = move-exception
            r6 = r0
        L_0x0060:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Hawk.get -> Decrypt failed: "
            r3.<init>(r4)
            java.lang.String r2 = r2.getMessage()
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r5.a(r2)
        L_0x0075:
            if (r6 != 0) goto L_0x007d
            java.lang.String r6 = "Hawk.get -> Decrypt failed"
            r5.a(r6)
            return r0
        L_0x007d:
            com.b.a.b r2 = r5.f1962b     // Catch:{ Exception -> 0x0091 }
            java.lang.Object r0 = r2.fromString(r6, r1)     // Catch:{ Exception -> 0x0091 }
            java.lang.String r6 = "Hawk.get -> Converted to : "
            java.lang.String r1 = java.lang.String.valueOf(r0)     // Catch:{ Exception -> 0x0091 }
            java.lang.String r6 = r6.concat(r1)     // Catch:{ Exception -> 0x0091 }
            r5.a(r6)     // Catch:{ Exception -> 0x0091 }
            goto L_0x0096
        L_0x0091:
            java.lang.String r6 = "Hawk.get -> Converter failed"
            r5.a(r6)
        L_0x0096:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.d.get(java.lang.String):java.lang.Object");
    }

    public final <T> T get(String str, T t) {
        T t2 = get(str);
        return t2 == null ? t : t2;
    }

    public final long count() {
        return this.f1961a.count();
    }

    public final boolean deleteAll() {
        return this.f1961a.deleteAll();
    }

    public final boolean delete(String str) {
        return this.f1961a.delete(str);
    }

    public final boolean contains(String str) {
        return this.f1961a.contains(str);
    }

    private void a(String str) {
        this.e.onLog(str);
    }
}
