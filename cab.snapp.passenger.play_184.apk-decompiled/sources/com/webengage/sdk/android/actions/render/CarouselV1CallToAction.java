package com.webengage.sdk.android.actions.render;

public class CarouselV1CallToAction extends CallToAction {
    private String imageURL = null;

    public CarouselV1CallToAction(String str, String str2, String str3, String str4) {
        super(str, str2, str3, false, false);
        this.imageURL = str4;
    }

    public String getImageURL() {
        return this.imageURL;
    }

    public void setImageURL(String str) {
        this.imageURL = str;
    }
}
