package androidx.dynamicanimation.animation;

public final class FloatValueHolder {
    private float mValue = 0.0f;

    public FloatValueHolder() {
    }

    public FloatValueHolder(float f) {
        setValue(f);
    }

    public final void setValue(float f) {
        this.mValue = f;
    }

    public final float getValue() {
        return this.mValue;
    }
}
