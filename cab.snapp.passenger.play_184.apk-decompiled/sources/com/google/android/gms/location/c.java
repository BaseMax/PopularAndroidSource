package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.zzcfs;

public interface c {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f3645a = null;

        /* renamed from: b  reason: collision with root package name */
        private int f3646b = 0;
        private long c = Long.MIN_VALUE;
        private short d = -1;
        private double e;
        private double f;
        private float g;
        private int h = 0;
        private int i = -1;

        public final c build() {
            if (this.f3645a != null) {
                int i2 = this.f3646b;
                if (i2 == 0) {
                    throw new IllegalArgumentException("Transitions types not set.");
                } else if ((i2 & 4) == 0 || this.i >= 0) {
                    long j = this.c;
                    if (j == Long.MIN_VALUE) {
                        throw new IllegalArgumentException("Expiration not set.");
                    } else if (this.d != -1) {
                        int i3 = this.h;
                        if (i3 >= 0) {
                            zzcfs zzcfs = new zzcfs(this.f3645a, this.f3646b, 1, this.e, this.f, this.g, j, i3, this.i);
                            return zzcfs;
                        }
                        throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
                    } else {
                        throw new IllegalArgumentException("Geofence region not set.");
                    }
                } else {
                    throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
                }
            } else {
                throw new IllegalArgumentException("Request ID not set.");
            }
        }

        public final a setCircularRegion(double d2, double d3, float f2) {
            this.d = 1;
            this.e = d2;
            this.f = d3;
            this.g = f2;
            return this;
        }

        public final a setExpirationDuration(long j) {
            if (j < 0) {
                this.c = -1;
            } else {
                this.c = SystemClock.elapsedRealtime() + j;
            }
            return this;
        }

        public final a setLoiteringDelay(int i2) {
            this.i = i2;
            return this;
        }

        public final a setNotificationResponsiveness(int i2) {
            this.h = i2;
            return this;
        }

        public final a setRequestId(String str) {
            this.f3645a = str;
            return this;
        }

        public final a setTransitionTypes(int i2) {
            this.f3646b = i2;
            return this;
        }
    }

    String getRequestId();
}
