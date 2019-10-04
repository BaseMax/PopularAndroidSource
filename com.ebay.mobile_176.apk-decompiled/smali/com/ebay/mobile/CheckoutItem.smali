.class public Lcom/ebay/mobile/CheckoutItem;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "CheckoutItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/CheckoutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final addedToCartAt:Ljava/util/Date;

.field public final autoPay:Z

.field public final bidCount:I

.field public final buyItNowAvailable:Z

.field public final currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public final ebayPaymentProcessEnabled:Z

.field public final endDate:Ljava/util/Date;

.field public final hasReservePrice:Z

.field public final id:J

.field public final isBidding:Z

.field public final isTransacted:Z

.field public final location:Ljava/lang/String;

.field public final primaryCategoryId:J

.field public quantity:I

.field public final reserveMet:Z

.field public final secondaryCategoryId:J

.field public final sellerFeedbackScore:J

.field public final sellerUserId:Ljava/lang/String;

.field public final shopCartLineItemId:J

.field public final site:Ljava/lang/String;

.field public final variationId:Ljava/lang/String;

.field public final variationOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public watched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/ebay/mobile/CheckoutItem$1;

    invoke-direct {v0}, Lcom/ebay/mobile/CheckoutItem$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/CheckoutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/Item;Ljava/lang/String;Z)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 50
    iget-wide v0, p1, Lcom/ebay/mobile/Item;->id:J

    iput-wide v0, p0, Lcom/ebay/mobile/CheckoutItem;->id:J

    .line 51
    iget-wide v0, p1, Lcom/ebay/mobile/Item;->primaryCategoryId:J

    iput-wide v0, p0, Lcom/ebay/mobile/CheckoutItem;->primaryCategoryId:J

    .line 52
    iget-wide v0, p1, Lcom/ebay/mobile/Item;->secondaryCategoryId:J

    iput-wide v0, p0, Lcom/ebay/mobile/CheckoutItem;->secondaryCategoryId:J

    .line 53
    iget v0, p1, Lcom/ebay/mobile/Item;->quantity:I

    iput v0, p0, Lcom/ebay/mobile/CheckoutItem;->quantity:I

    .line 54
    iget-object v0, p1, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->site:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/ebay/mobile/Item;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->location:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/ebay/mobile/Item;->sellerUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->sellerUserId:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/ebay/mobile/Item;->endDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->endDate:Ljava/util/Date;

    .line 58
    iget-object v0, p1, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 59
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/Item;->isWatched(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->watched:Z

    .line 60
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->autoPay:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->autoPay:Z

    .line 61
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->isReserveMet:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->reserveMet:Z

    .line 62
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->hasReservePrice:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->hasReservePrice:Z

    .line 63
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->buyItNowAvailable:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->buyItNowAvailable:Z

    .line 64
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->ebayPaymentProcessEnabled:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->ebayPaymentProcessEnabled:Z

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->addedToCartAt:Ljava/util/Date;

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/ebay/mobile/CheckoutItem;->shopCartLineItemId:J

    .line 68
    iget-object v0, p1, Lcom/ebay/mobile/Item;->sellerFeedbackScore:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ebay/mobile/CheckoutItem;->sellerFeedbackScore:J

    .line 69
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->isTransacted:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/CheckoutItem;->isTransacted:Z

    .line 70
    iget-object v0, p1, Lcom/ebay/mobile/Item;->variationSpecifics:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ebay/mobile/CheckoutItem;->variationOptions:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/ebay/mobile/CheckoutItem;->variationId:Ljava/lang/String;

    .line 72
    iget p1, p1, Lcom/ebay/mobile/Item;->bidCount:I

    iput p1, p0, Lcom/ebay/mobile/CheckoutItem;->bidCount:I

    .line 73
    iput-boolean p3, p0, Lcom/ebay/mobile/CheckoutItem;->isBidding:Z

    return-void
.end method
