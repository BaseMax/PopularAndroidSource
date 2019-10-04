package androidx.work;

import b.H.d;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public final class WorkInfo {

    /* renamed from: a  reason: collision with root package name */
    public UUID f1007a;

    /* renamed from: b  reason: collision with root package name */
    public State f1008b;

    /* renamed from: c  reason: collision with root package name */
    public d f1009c;

    /* renamed from: d  reason: collision with root package name */
    public Set<String> f1010d;

    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean f() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public WorkInfo(UUID uuid, State state, d dVar, List<String> list) {
        this.f1007a = uuid;
        this.f1008b = state;
        this.f1009c = dVar;
        this.f1010d = new HashSet(list);
    }

    public State a() {
        return this.f1008b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || WorkInfo.class != obj.getClass()) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        UUID uuid = this.f1007a;
        if (uuid == null ? workInfo.f1007a != null : !uuid.equals(workInfo.f1007a)) {
            return false;
        }
        if (this.f1008b != workInfo.f1008b) {
            return false;
        }
        d dVar = this.f1009c;
        if (dVar == null ? workInfo.f1009c != null : !dVar.equals(workInfo.f1009c)) {
            return false;
        }
        Set<String> set = this.f1010d;
        if (set != null) {
            z = set.equals(workInfo.f1010d);
        } else if (workInfo.f1010d != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        UUID uuid = this.f1007a;
        int i2 = 0;
        int hashCode = (uuid != null ? uuid.hashCode() : 0) * 31;
        State state = this.f1008b;
        int hashCode2 = (hashCode + (state != null ? state.hashCode() : 0)) * 31;
        d dVar = this.f1009c;
        int hashCode3 = (hashCode2 + (dVar != null ? dVar.hashCode() : 0)) * 31;
        Set<String> set = this.f1010d;
        if (set != null) {
            i2 = set.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.f1007a + '\'' + ", mState=" + this.f1008b + ", mOutputData=" + this.f1009c + ", mTags=" + this.f1010d + '}';
    }
}
