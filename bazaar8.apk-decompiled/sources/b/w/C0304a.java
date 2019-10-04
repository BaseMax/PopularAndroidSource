package b.w;

import android.os.Bundle;

/* renamed from: b.w.a  reason: case insensitive filesystem */
/* compiled from: ActionOnlyNavDirections */
public final class C0304a implements p {

    /* renamed from: a  reason: collision with root package name */
    public final int f3258a;

    public C0304a(int i2) {
        this.f3258a = i2;
    }

    public Bundle a() {
        return new Bundle();
    }

    public int b() {
        return this.f3258a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C0304a.class == obj.getClass() && b() == ((C0304a) obj).b();
    }

    public int hashCode() {
        return 31 + b();
    }

    public String toString() {
        return "ActionOnlyNavDirections(actionId=" + b() + ")";
    }
}
