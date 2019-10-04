package c.c.a.e.d.a.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.setNicknameRequest")
/* compiled from: SetNickNameRequestDto.kt */
public final class i {
    @c("nickname")
    public final String nickName;

    public i(String str) {
        j.b(str, "nickName");
        this.nickName = str;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof i) && j.a((Object) this.nickName, (Object) ((i) obj).nickName));
    }

    public int hashCode() {
        String str = this.nickName;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "SetNickNameRequestDto(nickName=" + this.nickName + ")";
    }
}
