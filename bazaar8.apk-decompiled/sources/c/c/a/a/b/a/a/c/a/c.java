package c.c.a.a.b.a.a.c.a;

import h.f.b.j;

/* compiled from: ActionLogRequestDto.kt */
public final class c {
    @c.e.d.a.c("agent")
    public final String agent;
    @c.e.d.a.c("what")
    public final String what;
    @c.e.d.a.c("when")
    public final long when;
    @c.e.d.a.c("where")
    public final String where;
    @c.e.d.a.c("who")
    public final String who;

    public c(long j2, String str, String str2, String str3, String str4) {
        j.b(str, "agent");
        j.b(str2, "what");
        j.b(str3, "where");
        j.b(str4, "who");
        this.when = j2;
        this.agent = str;
        this.what = str2;
        this.where = str3;
        this.who = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (!(this.when == cVar.when) || !j.a((Object) this.agent, (Object) cVar.agent) || !j.a((Object) this.what, (Object) cVar.what) || !j.a((Object) this.where, (Object) cVar.where) || !j.a((Object) this.who, (Object) cVar.who)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.when;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.agent;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.what;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.where;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.who;
        if (str4 != null) {
            i3 = str4.hashCode();
        }
        return hashCode3 + i3;
    }

    public String toString() {
        return "RemoteActionLog(when=" + this.when + ", agent=" + this.agent + ", what=" + this.what + ", where=" + this.where + ", who=" + this.who + ")";
    }
}
