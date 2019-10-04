package com.farsitel.bazaar.common.model.user;

import android.content.Context;
import c.c.a.c.a;
import c.c.a.c.b.i;
import h.f.b.f;
import h.f.b.j;

/* compiled from: User.kt */
public final class User {
    public final boolean isLoggedIn;
    public final String nickName;
    public final String phoneNumber;
    public final String uniqueUserName;

    public User(boolean z, String str, String str2, String str3) {
        this.isLoggedIn = z;
        this.nickName = str;
        this.phoneNumber = str2;
        this.uniqueUserName = str3;
    }

    private final String component2() {
        return this.nickName;
    }

    private final String component3() {
        return this.phoneNumber;
    }

    private final String component4() {
        return this.uniqueUserName;
    }

    public static /* synthetic */ User copy$default(User user, boolean z, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = user.isLoggedIn;
        }
        if ((i2 & 2) != 0) {
            str = user.nickName;
        }
        if ((i2 & 4) != 0) {
            str2 = user.phoneNumber;
        }
        if ((i2 & 8) != 0) {
            str3 = user.uniqueUserName;
        }
        return user.copy(z, str, str2, str3);
    }

    public final String accountName(Context context) {
        String str;
        j.b(context, "context");
        String str2 = this.phoneNumber;
        String a2 = str2 != null ? i.a(str2, context) : null;
        if (!this.isLoggedIn) {
            String string = context.getString(a.bazaar_account);
            j.a((Object) string, "context.getString(R.string.bazaar_account)");
            return string;
        }
        String str3 = this.nickName;
        if (str3 == null || str3.length() == 0) {
            if (a2 == null || a2.length() == 0) {
                str = context.getString(a.bazaar_account);
                j.a((Object) str, "if (nickName.isNullOrEmp…)\n            }\n        }");
                return str;
            }
        }
        if (a2 == null || a2.length() == 0) {
            str = this.nickName;
            if (str == null) {
                j.a();
                throw null;
            }
        } else {
            int i2 = a.logged_in_account_name;
            Object[] objArr = new Object[2];
            String str4 = this.nickName;
            if (str4 == null) {
                str4 = "";
            }
            objArr[0] = str4;
            objArr[1] = a2;
            str = context.getString(i2, objArr);
        }
        j.a((Object) str, "if (nickName.isNullOrEmp…)\n            }\n        }");
        return str;
    }

    public final boolean component1() {
        return this.isLoggedIn;
    }

    public final User copy(boolean z, String str, String str2, String str3) {
        return new User(z, str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof User) {
                User user = (User) obj;
                if (!(this.isLoggedIn == user.isLoggedIn) || !j.a((Object) this.nickName, (Object) user.nickName) || !j.a((Object) this.phoneNumber, (Object) user.phoneNumber) || !j.a((Object) this.uniqueUserName, (Object) user.uniqueUserName)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isLoggedIn;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        String str = this.nickName;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.phoneNumber;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.uniqueUserName;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return hashCode2 + i3;
    }

    public final boolean isLoggedIn() {
        return this.isLoggedIn;
    }

    public String toString() {
        return "User(isLoggedIn=" + this.isLoggedIn + ", nickName=" + this.nickName + ", phoneNumber=" + this.phoneNumber + ", uniqueUserName=" + this.uniqueUserName + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ User(boolean z, String str, String str2, String str3, int i2, f fVar) {
        this(z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3);
    }
}
