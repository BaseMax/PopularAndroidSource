package cab.snapp.notificationmanager.models;

public final class NotificationChannelOptions {

    /* renamed from: a  reason: collision with root package name */
    private boolean f340a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f341b;
    private boolean c;
    private int d;
    private LockScreenVisibility e;
    private String f;

    public enum LockScreenVisibility {
        SHOWING_COMPLETELY(1),
        HIDING_SENSITIVE_CONTENT(0),
        NOT_SHOWING(-1);
        

        /* renamed from: a  reason: collision with root package name */
        private int f342a;

        private LockScreenVisibility(int i) {
            this.f342a = i;
        }

        public final int getValue() {
            return this.f342a;
        }
    }

    public NotificationChannelOptions() {
    }

    public NotificationChannelOptions(boolean z, boolean z2, boolean z3, int i, LockScreenVisibility lockScreenVisibility, String str) {
        this.f340a = z;
        this.f341b = z2;
        this.c = z3;
        this.d = i;
        this.e = lockScreenVisibility;
        this.f = str;
    }

    public final boolean isEnableLights() {
        return this.f340a;
    }

    public final void setEnableLights(boolean z) {
        this.f340a = z;
    }

    public final boolean isEnableVibration() {
        return this.f341b;
    }

    public final void setEnableVibration(boolean z) {
        this.f341b = z;
    }

    public final boolean isShowBadge() {
        return this.c;
    }

    public final void setShowBadge(boolean z) {
        this.c = z;
    }

    public final int getLightColor() {
        return this.d;
    }

    public final void setLightColor(int i) {
        this.d = i;
    }

    public final LockScreenVisibility getLockScreenVisibility() {
        return this.e;
    }

    public final void setLockScreenVisibility(LockScreenVisibility lockScreenVisibility) {
        this.e = lockScreenVisibility;
    }

    public final String getDescription() {
        return this.f;
    }

    public final void setDescription(String str) {
        this.f = str;
    }
}
