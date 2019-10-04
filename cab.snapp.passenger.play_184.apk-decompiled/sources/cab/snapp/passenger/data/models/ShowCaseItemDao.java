package cab.snapp.passenger.data.models;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Handler;
import android.view.View;
import cab.snapp.passenger.play.R;

public class ShowCaseItemDao {
    Activity activity;
    int descTextColor = R.color.white;
    int descTextSize = 15;
    String description;
    Handler handler;
    int outerCircleColor = R.color.colorPrimary;
    int targetCircleColor = R.color.white;
    String title;
    int titleTextColor = R.color.white;
    int titleTextSize = 25;
    Typeface typeface;
    View view;

    public Activity getActivity() {
        return this.activity;
    }

    public void setActivity(Activity activity2) {
        this.activity = activity2;
    }

    public View getView() {
        return this.view;
    }

    public void setView(View view2) {
        this.view = view2;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }

    public void setTypeface(Typeface typeface2) {
        this.typeface = typeface2;
    }

    public int getOuterCircleColor() {
        return this.outerCircleColor;
    }

    public void setOuterCircleColor(int i) {
        this.outerCircleColor = i;
    }

    public int getTargetCircleColor() {
        return this.targetCircleColor;
    }

    public void setTargetCircleColor(int i) {
        this.targetCircleColor = i;
    }

    public int getTitleTextColor() {
        return this.titleTextColor;
    }

    public void setTitleTextColor(int i) {
        this.titleTextColor = i;
    }

    public int getTitleTextSize() {
        return this.titleTextSize;
    }

    public void setTitleTextSize(int i) {
        this.titleTextSize = i;
    }

    public int getDescTextColor() {
        return this.descTextColor;
    }

    public void setDescTextColor(int i) {
        this.descTextColor = i;
    }

    public int getDescTextSize() {
        return this.descTextSize;
    }

    public void setDescTextSize(int i) {
        this.descTextSize = i;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public void setHandler(Handler handler2) {
        this.handler = handler2;
    }
}
