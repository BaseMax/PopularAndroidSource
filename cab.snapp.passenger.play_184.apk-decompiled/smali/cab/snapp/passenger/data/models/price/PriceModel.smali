.class public Lcab/snapp/passenger/data/models/price/PriceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private distance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "distance"
    .end annotation
.end field

.field private isDiscountedPrice:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_discounted_price"
    .end annotation
.end field

.field private isFreeRide:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_free_ride"
    .end annotation
.end field

.field private isSurged:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_surged"
    .end annotation
.end field

.field private options:Lcab/snapp/passenger/data/models/Options;
    .annotation runtime Lcom/google/gson/a/c;
        value = "options"
    .end annotation
.end field

.field private priceItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceItem;",
            ">;"
        }
    .end annotation
.end field

.field private priceTexts:Lcab/snapp/passenger/data/models/price/PriceTexts;
    .annotation runtime Lcom/google/gson/a/c;
        value = "texts"
    .end annotation
.end field

.field private service:Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .annotation runtime Lcom/google/gson/a/c;
        value = "service"
    .end annotation
.end field

.field private totalPrice:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "final"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->options:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getPriceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->priceItems:Ljava/util/List;

    return-object v0
.end method

.method public getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;
    .locals 1

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->priceTexts:Lcab/snapp/passenger/data/models/price/PriceTexts;

    return-object v0
.end method

.method public getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .locals 1

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->service:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-object v0
.end method

.method public getTotalPrice()I
    .locals 1

    .line 52
    iget v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->totalPrice:I

    return v0
.end method

.method public isDiscountedPrice()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice:Z

    return v0
.end method

.method public isFreeRide()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isFreeRide:Z

    return v0
.end method

.method public isSurged()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged:Z

    return v0
.end method

.method public setDiscountedPrice(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice:Z

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->distance:Ljava/lang/String;

    return-void
.end method

.method public setFreeRide(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isFreeRide:Z

    return-void
.end method

.method public setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->options:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setPriceItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->priceItems:Ljava/util/List;

    return-void
.end method

.method public setPriceTexts(Lcab/snapp/passenger/data/models/price/PriceTexts;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->priceTexts:Lcab/snapp/passenger/data/models/price/PriceTexts;

    return-void
.end method

.method public setService(Lcab/snapp/passenger/data/models/ServiceTypeModel;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->service:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-void
.end method

.method public setSurged(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged:Z

    return-void
.end method

.method public setTotalPrice(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcab/snapp/passenger/data/models/price/PriceModel;->totalPrice:I

    return-void
.end method
