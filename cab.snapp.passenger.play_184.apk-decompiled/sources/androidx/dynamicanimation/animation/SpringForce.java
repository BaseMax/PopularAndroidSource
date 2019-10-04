package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;

public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    double mDampingRatio = 0.5d;
    private double mFinalPosition = Double.MAX_VALUE;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized = false;
    private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
    double mNaturalFreq = Math.sqrt(1500.0d);
    private double mValueThreshold;
    private double mVelocityThreshold;

    public SpringForce() {
    }

    public SpringForce(float f) {
        this.mFinalPosition = (double) f;
    }

    public final SpringForce setStiffness(float f) {
        if (f > 0.0f) {
            this.mNaturalFreq = Math.sqrt((double) f);
            this.mInitialized = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    public final float getStiffness() {
        double d = this.mNaturalFreq;
        return (float) (d * d);
    }

    public final SpringForce setDampingRatio(float f) {
        if (f >= 0.0f) {
            this.mDampingRatio = (double) f;
            this.mInitialized = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    public final float getDampingRatio() {
        return (float) this.mDampingRatio;
    }

    public final SpringForce setFinalPosition(float f) {
        this.mFinalPosition = (double) f;
        return this;
    }

    public final float getFinalPosition() {
        return (float) this.mFinalPosition;
    }

    public final float getAcceleration(float f, float f2) {
        float finalPosition = f - getFinalPosition();
        double d = this.mNaturalFreq;
        double d2 = d * d;
        double d3 = d * 2.0d * this.mDampingRatio;
        double d4 = (double) finalPosition;
        Double.isNaN(d4);
        double d5 = (double) f2;
        Double.isNaN(d5);
        return (float) (((-d2) * d4) - (d3 * d5));
    }

    public final boolean isAtEquilibrium(float f, float f2) {
        return ((double) Math.abs(f2)) < this.mVelocityThreshold && ((double) Math.abs(f - getFinalPosition())) < this.mValueThreshold;
    }

    private void init() {
        if (!this.mInitialized) {
            if (this.mFinalPosition != Double.MAX_VALUE) {
                double d = this.mDampingRatio;
                if (d > 1.0d) {
                    double d2 = this.mNaturalFreq;
                    this.mGammaPlus = ((-d) * d2) + (d2 * Math.sqrt((d * d) - 1.0d));
                    double d3 = this.mDampingRatio;
                    double d4 = this.mNaturalFreq;
                    this.mGammaMinus = ((-d3) * d4) - (d4 * Math.sqrt((d3 * d3) - 1.0d));
                } else if (d >= 0.0d && d < 1.0d) {
                    this.mDampedFreq = this.mNaturalFreq * Math.sqrt(1.0d - (d * d));
                }
                this.mInitialized = true;
                return;
            }
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
    }

    /* access modifiers changed from: package-private */
    public final DynamicAnimation.MassState updateValues(double d, double d2, long j) {
        double d3;
        double d4;
        init();
        double d5 = (double) j;
        Double.isNaN(d5);
        double d6 = d5 / 1000.0d;
        double d7 = d - this.mFinalPosition;
        double d8 = this.mDampingRatio;
        if (d8 > 1.0d) {
            double d9 = this.mGammaMinus;
            double d10 = this.mGammaPlus;
            double d11 = d7 - (((d9 * d7) - d2) / (d9 - d10));
            double d12 = ((d7 * d9) - d2) / (d9 - d10);
            d4 = (Math.pow(2.718281828459045d, d9 * d6) * d11) + (Math.pow(2.718281828459045d, this.mGammaPlus * d6) * d12);
            double d13 = this.mGammaMinus;
            double pow = d11 * d13 * Math.pow(2.718281828459045d, d13 * d6);
            double d14 = this.mGammaPlus;
            d3 = pow + (d12 * d14 * Math.pow(2.718281828459045d, d14 * d6));
        } else if (d8 == 1.0d) {
            double d15 = this.mNaturalFreq;
            double d16 = d2 + (d15 * d7);
            double d17 = d7 + (d16 * d6);
            d4 = Math.pow(2.718281828459045d, (-d15) * d6) * d17;
            double pow2 = d17 * Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d6);
            double d18 = this.mNaturalFreq;
            d3 = (d16 * Math.pow(2.718281828459045d, (-d18) * d6)) + (pow2 * (-d18));
        } else {
            double d19 = 1.0d / this.mDampedFreq;
            double d20 = this.mNaturalFreq;
            double d21 = d19 * ((d8 * d20 * d7) + d2);
            double pow3 = Math.pow(2.718281828459045d, (-d8) * d20 * d6) * ((Math.cos(this.mDampedFreq * d6) * d7) + (Math.sin(this.mDampedFreq * d6) * d21));
            double d22 = this.mNaturalFreq;
            double d23 = this.mDampingRatio;
            double d24 = (-d22) * pow3 * d23;
            double pow4 = Math.pow(2.718281828459045d, (-d23) * d22 * d6);
            double d25 = this.mDampedFreq;
            double d26 = pow3;
            double sin = (-d25) * d7 * Math.sin(d25 * d6);
            double d27 = this.mDampedFreq;
            d3 = d24 + (pow4 * (sin + (d21 * d27 * Math.cos(d27 * d6))));
            d4 = d26;
        }
        DynamicAnimation.MassState massState = this.mMassState;
        massState.mValue = (float) (d4 + this.mFinalPosition);
        massState.mVelocity = (float) d3;
        return massState;
    }

    /* access modifiers changed from: package-private */
    public final void setValueThreshold(double d) {
        this.mValueThreshold = Math.abs(d);
        this.mVelocityThreshold = this.mValueThreshold * VELOCITY_THRESHOLD_MULTIPLIER;
    }
}
