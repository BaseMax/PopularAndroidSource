package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

public class Guideline extends View {
    public Guideline(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public void draw(Canvas canvas) {
    }

    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i2) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        aVar.f540a = i2;
        setLayoutParams(aVar);
    }

    public void setGuidelineEnd(int i2) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        aVar.f541b = i2;
        setLayoutParams(aVar);
    }

    public void setGuidelinePercent(float f2) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        aVar.f542c = f2;
        setLayoutParams(aVar);
    }

    public void setVisibility(int i2) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }
}
