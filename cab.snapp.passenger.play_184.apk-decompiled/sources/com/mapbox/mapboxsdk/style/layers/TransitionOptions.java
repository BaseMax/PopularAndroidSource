package com.mapbox.mapboxsdk.style.layers;

public class TransitionOptions {
    private long delay;
    private long duration;
    private boolean enablePlacementTransitions;

    public TransitionOptions(long j, long j2) {
        this(j, j2, true);
    }

    public TransitionOptions(long j, long j2, boolean z) {
        this.duration = j;
        this.delay = j2;
        this.enablePlacementTransitions = z;
    }

    @Deprecated
    public static TransitionOptions fromTransitionOptions(long j, long j2) {
        return new TransitionOptions(j, j2);
    }

    static TransitionOptions fromTransitionOptions(long j, long j2, boolean z) {
        TransitionOptions transitionOptions = new TransitionOptions(j, j2, z);
        return transitionOptions;
    }

    public long getDuration() {
        return this.duration;
    }

    public long getDelay() {
        return this.delay;
    }

    public boolean isEnablePlacementTransitions() {
        return this.enablePlacementTransitions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TransitionOptions transitionOptions = (TransitionOptions) obj;
            if (this.duration == transitionOptions.duration && this.delay == transitionOptions.delay && this.enablePlacementTransitions == transitionOptions.enablePlacementTransitions) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.duration;
        long j2 = this.delay;
        return (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.enablePlacementTransitions ? 1 : 0);
    }

    public String toString() {
        return "TransitionOptions{duration=" + this.duration + ", delay=" + this.delay + ", enablePlacementTransitions=" + this.enablePlacementTransitions + '}';
    }
}
