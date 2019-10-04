package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;

public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce = new DragForce();

    static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        DragForce() {
        }

        /* access modifiers changed from: package-private */
        public final void setFrictionScalar(float f) {
            this.mFriction = f * DEFAULT_FRICTION;
        }

        /* access modifiers changed from: package-private */
        public final float getFrictionScalar() {
            return this.mFriction / DEFAULT_FRICTION;
        }

        /* access modifiers changed from: package-private */
        public final DynamicAnimation.MassState updateValueAndVelocity(float f, float f2, long j) {
            DynamicAnimation.MassState massState = this.mMassState;
            double d = (double) f2;
            float f3 = (float) j;
            double exp = Math.exp((double) ((f3 / 1000.0f) * this.mFriction));
            Double.isNaN(d);
            massState.mVelocity = (float) (d * exp);
            DynamicAnimation.MassState massState2 = this.mMassState;
            float f4 = this.mFriction;
            double d2 = (double) (f - (f2 / f4));
            double d3 = (double) (f2 / f4);
            double exp2 = Math.exp((double) ((f4 * f3) / 1000.0f));
            Double.isNaN(d3);
            Double.isNaN(d2);
            massState2.mValue = (float) (d2 + (d3 * exp2));
            if (isAtEquilibrium(this.mMassState.mValue, this.mMassState.mVelocity)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }

        public final float getAcceleration(float f, float f2) {
            return f2 * this.mFriction;
        }

        public final boolean isAtEquilibrium(float f, float f2) {
            return Math.abs(f2) < this.mVelocityThreshold;
        }

        /* access modifiers changed from: package-private */
        public final void setValueThreshold(float f) {
            this.mVelocityThreshold = f * VELOCITY_THRESHOLD_MULTIPLIER;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.mFlingForce.setValueThreshold(getValueThreshold());
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.mFlingForce.setValueThreshold(getValueThreshold());
    }

    public final FlingAnimation setFriction(float f) {
        if (f > 0.0f) {
            this.mFlingForce.setFrictionScalar(f);
            return this;
        }
        throw new IllegalArgumentException("Friction must be positive");
    }

    public final float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    public final FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    public final FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    public final FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }

    /* access modifiers changed from: package-private */
    public final boolean updateValueAndVelocity(long j) {
        DynamicAnimation.MassState updateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j);
        this.mValue = updateValueAndVelocity.mValue;
        this.mVelocity = updateValueAndVelocity.mVelocity;
        if (this.mValue < this.mMinValue) {
            this.mValue = this.mMinValue;
            return true;
        } else if (this.mValue > this.mMaxValue) {
            this.mValue = this.mMaxValue;
            return true;
        } else if (isAtEquilibrium(this.mValue, this.mVelocity)) {
            return true;
        } else {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final float getAcceleration(float f, float f2) {
        return this.mFlingForce.getAcceleration(f, f2);
    }

    /* access modifiers changed from: package-private */
    public final boolean isAtEquilibrium(float f, float f2) {
        return f >= this.mMaxValue || f <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f, f2);
    }

    /* access modifiers changed from: package-private */
    public final void setValueThreshold(float f) {
        this.mFlingForce.setValueThreshold(f);
    }
}
