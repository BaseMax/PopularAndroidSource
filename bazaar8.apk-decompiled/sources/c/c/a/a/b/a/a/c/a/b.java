package c.c.a.a.b.a.a.c.a;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: ActionLogRequestDto.kt */
public final class b {
    @c("actions")
    public final List<c> actions;
    @c("device")
    public final a device;
    @c("deviceTime")
    public final long deviceTime;

    public b(a aVar, List<c> list, long j2) {
        j.b(aVar, "device");
        j.b(list, "actions");
        this.device = aVar;
        this.actions = list;
        this.deviceTime = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (j.a((Object) this.device, (Object) bVar.device) && j.a((Object) this.actions, (Object) bVar.actions)) {
                    if (this.deviceTime == bVar.deviceTime) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        a aVar = this.device;
        int i2 = 0;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        List<c> list = this.actions;
        if (list != null) {
            i2 = list.hashCode();
        }
        long j2 = this.deviceTime;
        return ((hashCode + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "Log(device=" + this.device + ", actions=" + this.actions + ", deviceTime=" + this.deviceTime + ")";
    }
}
