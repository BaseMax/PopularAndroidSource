package cab.snapp.passenger.data.models.price;

import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import com.google.gson.a.c;
import java.util.List;

public class PriceModel {
    @c("distance")
    private String distance;
    @c("is_discounted_price")
    private boolean isDiscountedPrice;
    @c("is_free_ride")
    private boolean isFreeRide;
    @c("is_surged")
    private boolean isSurged;
    @c("options")
    private Options options;
    @c("items")
    private List<PriceItem> priceItems;
    @c("texts")
    private PriceTexts priceTexts;
    @c("service")
    private ServiceTypeModel service;
    @c("final")
    private int totalPrice;

    public List<PriceItem> getPriceItems() {
        return this.priceItems;
    }

    public void setPriceItems(List<PriceItem> list) {
        this.priceItems = list;
    }

    public int getTotalPrice() {
        return this.totalPrice;
    }

    public void setTotalPrice(int i) {
        this.totalPrice = i;
    }

    public String getDistance() {
        return this.distance;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public boolean isSurged() {
        return this.isSurged;
    }

    public void setSurged(boolean z) {
        this.isSurged = z;
    }

    public boolean isFreeRide() {
        return this.isFreeRide;
    }

    public void setFreeRide(boolean z) {
        this.isFreeRide = z;
    }

    public boolean isDiscountedPrice() {
        return this.isDiscountedPrice;
    }

    public void setDiscountedPrice(boolean z) {
        this.isDiscountedPrice = z;
    }

    public PriceTexts getPriceTexts() {
        return this.priceTexts;
    }

    public void setPriceTexts(PriceTexts priceTexts2) {
        this.priceTexts = priceTexts2;
    }

    public Options getOptions() {
        return this.options;
    }

    public void setOptions(Options options2) {
        this.options = options2;
    }

    public ServiceTypeModel getService() {
        return this.service;
    }

    public void setService(ServiceTypeModel serviceTypeModel) {
        this.service = serviceTypeModel;
    }
}
