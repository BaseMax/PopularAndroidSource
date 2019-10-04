package cab.snapp.passenger.units.ride_rating.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cab.snapp.passenger.play.R;
import java.util.Locale;

public class RideRatingTabView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f1140a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f1141b;

    public RideRatingTabView(Context context) {
        super(context);
        a();
    }

    public RideRatingTabView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public RideRatingTabView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        if (getContext() != null) {
            LayoutInflater.from(getContext()).inflate(R.layout.view_ride_rating_tab_view, this, true);
            this.f1140a = (TextView) findViewById(R.id.view_ride_rating_tab_text);
            this.f1141b = (TextView) findViewById(R.id.view_ride_rating_tab_badge);
        }
    }

    public void setText(int i) {
        this.f1140a.setText(i);
    }

    public String getText() {
        if (this.f1140a.getText() != null) {
            return this.f1140a.getText().toString();
        }
        return null;
    }

    public void setBadge(int i) {
        this.f1141b.setText(String.format(Locale.getDefault(), "%d", new Object[]{Integer.valueOf(i)}));
    }

    public void setBadgeBackground(int i) {
        this.f1141b.setBackgroundResource(i);
    }

    public void showBadge() {
        this.f1141b.setVisibility(0);
    }

    public void hideBadge() {
        this.f1141b.setVisibility(8);
    }

    public void setTextColor(int i) {
        if (getContext() != null && getContext().getResources() != null) {
            this.f1140a.setTextColor(getContext().getResources().getColor(i));
            this.f1141b.setTextColor(getContext().getResources().getColor(R.color.white));
        }
    }
}
