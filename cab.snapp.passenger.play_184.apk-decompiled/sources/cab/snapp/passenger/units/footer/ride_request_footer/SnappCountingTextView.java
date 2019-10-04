package cab.snapp.passenger.units.footer.ride_request_footer;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.appcompat.widget.AppCompatTextView;
import cab.snapp.c.j;
import cab.snapp.passenger.f.g;
import cab.snapp.snappuikit.a;

public class SnappCountingTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private int f787a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f788b = 0;
    private int c = 1200;
    private String d = "%s";
    private TimeInterpolator e;
    private Animator.AnimatorListener f;

    public SnappCountingTextView(Context context) {
        super(context);
        a(null, 0);
    }

    public SnappCountingTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public SnappCountingTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    private void a(AttributeSet attributeSet, int i) {
        if (isInEditMode()) {
            setText(g.changeNumbersBasedOnCurrentLocale(getText().toString()));
        }
        this.c = getContext().obtainStyledAttributes(attributeSet, a.h.countingTextView, i, 0).getInt(0, 1200);
        this.e = new AccelerateDecelerateInterpolator();
    }

    public void animateFromZerotoCurrentValue(Integer num) {
        setDuration(num.intValue());
        animateText(0, Integer.valueOf(getEndValue()));
    }

    public void animateFromZerotoCurrentValue() {
        animateText(0, Integer.valueOf(getEndValue()));
    }

    public void animateFromZero(Integer num, Integer num2) {
        setDuration(num2.intValue());
        animateText(0, num);
    }

    public void animateFromZero(Integer num) {
        animateText(0, num);
    }

    public void animateText(Integer num) {
        setDuration(num.intValue());
        animateText(Integer.valueOf(getStartValue()), Integer.valueOf(getEndValue()));
    }

    public void animateText() {
        animateText(Integer.valueOf(getStartValue()), Integer.valueOf(getEndValue()));
    }

    public void animateText(Integer num, Integer num2) {
        setStartValue(num.intValue());
        setEndValue(num2.intValue());
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{num.intValue(), num2.intValue()});
        ofInt.setInterpolator(getInterpolator());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SnappCountingTextView snappCountingTextView = SnappCountingTextView.this;
                snappCountingTextView.setText(g.changeNumbersBasedOnCurrentLocale(String.format(snappCountingTextView.getFormat(), new Object[]{g.changeNumbersBasedOnCurrentLocale(j.formatInteger((Integer) valueAnimator.getAnimatedValue()))})));
            }
        });
        ofInt.setEvaluator(new TypeEvaluator<Integer>() {
            public final Integer evaluate(float f, Integer num, Integer num2) {
                return Integer.valueOf(Math.round(((float) num.intValue()) + (((float) (num2.intValue() - num.intValue())) * f)));
            }
        });
        Animator.AnimatorListener animatorListener = this.f;
        if (animatorListener != null) {
            ofInt.addListener(animatorListener);
        }
        ofInt.setDuration((long) getDuration());
        ofInt.start();
    }

    public int getStartValue() {
        return this.f787a;
    }

    public void setStartValue(int i) {
        this.f787a = i;
    }

    public int getEndValue() {
        return this.f788b;
    }

    public void setEndValue(int i) {
        this.f788b = i;
    }

    public int getDuration() {
        return this.c;
    }

    public void setDuration(int i) {
        this.c = i;
    }

    public String getFormat() {
        return this.d;
    }

    public void setFormat(String str) {
        this.d = str;
    }

    public TimeInterpolator getInterpolator() {
        return this.e;
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        this.e = timeInterpolator;
    }

    public void setAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f = animatorListener;
    }
}
