package cab.snapp.passenger.data.models.price;

import com.google.gson.a.c;

public class PriceTexts {
    @c("discounted_price_footer")
    private String discountedFooterText;
    @c("discounted_price")
    private String discountedText;
    @c("free_ride_footer")
    private String freeRideFooterText;
    @c("free_ride")
    private String freeRideText;
    @c("surge_footer")
    private String surgeFooterText;
    @c("surge")
    private String surgeText;

    public String getFreeRideText() {
        return this.freeRideText;
    }

    public void setFreeRideText(String str) {
        this.freeRideText = str;
    }

    public String getFreeRideFooterText() {
        return this.freeRideFooterText;
    }

    public void setFreeRideFooterText(String str) {
        this.freeRideFooterText = str;
    }

    public String getSurgeText() {
        return this.surgeText;
    }

    public void setSurgeText(String str) {
        this.surgeText = str;
    }

    public String getSurgeFooterText() {
        return this.surgeFooterText;
    }

    public void setSurgeFooterText(String str) {
        this.surgeFooterText = str;
    }

    public String getDiscountedText() {
        return this.discountedText;
    }

    public void setDiscountedText(String str) {
        this.discountedText = str;
    }

    public String getDiscountedFooterText() {
        return this.discountedFooterText;
    }

    public void setDiscountedFooterText(String str) {
        this.discountedFooterText = str;
    }
}
