package com.farsitel.bazaar.data.entity;

import h.f.b.j;

/* compiled from: LoginResponse.kt */
public final class LoginResponse {
    public final String accessToken;
    public final String refreshToken;

    public LoginResponse(String str, String str2) {
        j.b(str, "refreshToken");
        j.b(str2, "accessToken");
        this.refreshToken = str;
        this.accessToken = str2;
    }

    public static /* synthetic */ LoginResponse copy$default(LoginResponse loginResponse, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = loginResponse.refreshToken;
        }
        if ((i2 & 2) != 0) {
            str2 = loginResponse.accessToken;
        }
        return loginResponse.copy(str, str2);
    }

    public final String component1() {
        return this.refreshToken;
    }

    public final String component2() {
        return this.accessToken;
    }

    public final LoginResponse copy(String str, String str2) {
        j.b(str, "refreshToken");
        j.b(str2, "accessToken");
        return new LoginResponse(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.accessToken, (java.lang.Object) r3.accessToken) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.LoginResponse
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.LoginResponse r3 = (com.farsitel.bazaar.data.entity.LoginResponse) r3
            java.lang.String r0 = r2.refreshToken
            java.lang.String r1 = r3.refreshToken
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.accessToken
            java.lang.String r3 = r3.accessToken
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.LoginResponse.equals(java.lang.Object):boolean");
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public int hashCode() {
        String str = this.refreshToken;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.accessToken;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "LoginResponse(refreshToken=" + this.refreshToken + ", accessToken=" + this.accessToken + ")";
    }
}
