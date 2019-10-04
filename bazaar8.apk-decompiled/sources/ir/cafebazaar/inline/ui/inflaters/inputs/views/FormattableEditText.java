package ir.cafebazaar.inline.ui.inflaters.inputs.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;

public class FormattableEditText extends AppCompatEditText {

    /* renamed from: d  reason: collision with root package name */
    public a f15037d;

    public interface a {
        int a(String str, int i2);

        String a(String str);
    }

    public FormattableEditText(Context context) {
        super(context);
    }

    public String getFormattedText() {
        String obj = getText().toString();
        if (obj.length() <= 0) {
            return obj;
        }
        a aVar = this.f15037d;
        return aVar != null ? aVar.a(obj) : obj;
    }

    public void onDraw(Canvas canvas) {
        if (this.f15037d != null) {
            String obj = getText().toString();
            setGravity(3);
            setSelection(obj.length());
            TextPaint paint = getPaint();
            String formattedText = getFormattedText();
            float width = (((float) canvas.getWidth()) - paint.measureText(formattedText)) - ((float) getPaddingRight());
            int baseline = getBaseline();
            paint.setAlpha(255);
            float f2 = (float) baseline;
            canvas.drawText(formattedText, width, f2, paint);
            if ((getDrawingTime() / 500) % 2 == 0 && formattedText.length() > 0 && isFocused()) {
                paint.setAlpha(64);
                float width2 = (((float) canvas.getWidth()) - paint.measureText(formattedText.substring(0, this.f15037d.a(obj, getSelectionStart())))) - ((float) getPaddingRight());
                paint.setStyle(Paint.Style.FILL);
                canvas.drawRect(width2 - 2.0f, f2 + paint.getFontMetrics().top, width2 + 1.0f, f2 + paint.getFontMetrics().bottom, paint);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    public void setFormatter(a aVar) {
        this.f15037d = aVar;
    }

    public FormattableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FormattableEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
