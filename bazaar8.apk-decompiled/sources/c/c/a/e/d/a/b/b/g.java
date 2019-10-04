package c.c.a.e.d.a.b.b;

import c.e.d.a.c;

/* compiled from: RegisterDeviceAndGetInfoResponseDto.kt */
public final class g {
    @c("isVisible")
    public final boolean isVisible;

    public final boolean a() {
        return this.isVisible;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                if (this.isVisible == ((g) obj).isVisible) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isVisible;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "KidsPreferencesDto(isVisible=" + this.isVisible + ")";
    }
}
