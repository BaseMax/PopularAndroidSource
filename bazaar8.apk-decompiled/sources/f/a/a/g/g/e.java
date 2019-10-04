package f.a.a.g.g;

import f.a.a.d.a;
import ir.cafebazaar.inline.ux.permission.Permission;

/* compiled from: PermissionRequest */
public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    public String f14487a;

    /* renamed from: b  reason: collision with root package name */
    public Permission f14488b;

    public e(Permission permission, String str) {
        this.f14487a = str.replaceAll("\\s+", " ");
        this.f14488b = permission;
    }

    public String a() {
        return this.f14487a;
    }

    public Permission b() {
        return this.f14488b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e) || ((e) obj).b() != b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ("inline-permission-request" + b().hashCode()).hashCode();
    }
}
