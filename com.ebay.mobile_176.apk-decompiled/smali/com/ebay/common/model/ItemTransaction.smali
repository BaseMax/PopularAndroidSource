.class public Lcom/ebay/common/model/ItemTransaction;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "ItemTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/ItemTransaction$UnpaidItem;,
        Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;
    }
.end annotation


# static fields
.field public static final AfterSalesInactive:Ljava/lang/String; = "NotApplicable"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/ItemTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final CheckoutPaymentMethodUsedCashOnPickup:Ljava/lang/String; = "CashOnPickup"

.field public static final CheckoutPaymentMethodUsedMoneyTransferAccepted:Ljava/lang/String; = "MoneyXferAccepted"

.field public static final CheckoutPaymentMethodUsedMoneyTransferAcceptedInCheckout:Ljava/lang/String; = "MoneyXferAcceptedInCheckout"

.field public static final CheckoutPaymentMethodUsedPayPal:Ljava/lang/String; = "PayPal"

.field public static final CheckoutStatusComplete:Ljava/lang/String; = "CheckoutComplete"

.field public static final CompleteStatusComplete:Ljava/lang/String; = "Complete"

.field public static final CompleteStatusPending:Ljava/lang/String; = "Pending"

.field public static final PaymentHoldStatusPaymentHold:Ljava/lang/String; = "PaymentHold"

.field private static final unmarshalLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field public amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public buyerCheckoutMessage:Ljava/lang/String;

.field public buyerCityName:Ljava/lang/String;

.field public buyerCountry:Ljava/lang/String;

.field public buyerCountryName:Ljava/lang/String;

.field public buyerFeedbackPrivate:Z

.field public buyerFeedbackRatingStar:Ljava/lang/String;

.field public buyerFeedbackScore:Ljava/lang/Integer;

.field public buyerName:Ljava/lang/String;

.field public buyerPhone:Ljava/lang/String;

.field public buyerPositiveFeedbackPercent:Ljava/lang/Float;

.field public buyerPostalCode:Ljava/lang/String;

.field public buyerStateOrProvince:Ljava/lang/String;

.field public buyerStreet:Ljava/lang/String;

.field public buyerStreet1:Ljava/lang/String;

.field public buyerStreet2:Ljava/lang/String;

.field public buyerUserId:Ljava/lang/String;

.field public cancelStatus:Ljava/lang/String;

.field public checkoutStatus:Ljava/lang/String;

.field public completeStatus:Ljava/lang/String;

.field public convertedAmountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public convertedTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public createdDate:Ljava/util/Date;

.field public ebayPaymentStatus:Ljava/lang/String;

.field public expectedReleaseDate:Ljava/util/Date;

.field public inquiryStatus:Ljava/lang/String;

.field public merchantPickupCode:Ljava/lang/String;

.field public multiLeg:Z

.field public multiLegAddressId:Ljava/lang/String;

.field public multiLegAddressOwner:Ljava/lang/String;

.field public multiLegAddressUsage:Ljava/lang/String;

.field public multiLegCityName:Ljava/lang/String;

.field public multiLegCountry:Ljava/lang/String;

.field public multiLegCountryName:Ljava/lang/String;

.field public multiLegExternalAddressId:Ljava/lang/String;

.field public multiLegName:Ljava/lang/String;

.field public multiLegPhone:Ljava/lang/String;

.field public multiLegPostalCode:Ljava/lang/String;

.field public multiLegReferenceId:Ljava/lang/String;

.field public multiLegServiceName:Ljava/lang/String;

.field public multiLegStateOrProvince:Ljava/lang/String;

.field public multiLegStreet1:Ljava/lang/String;

.field public multiLegStreet2:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public orderLineItemId:Ljava/lang/String;

.field public orderShippingInfo:Lcom/ebay/common/model/OrderShippingInfo;

.field public orderStatus:Ljava/lang/String;

.field public paidTime:Ljava/util/Date;

.field public paymentHoldStatus:Ljava/lang/String;

.field public paymentMethodUsed:Ljava/lang/String;

.field public paymentMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/Payment;",
            ">;"
        }
    .end annotation
.end field

.field public pickupMethod:Ljava/lang/String;

.field public pickupPriority:Ljava/lang/String;

.field public pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

.field public quantityPurchased:I

.field public refunds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/Refund;",
            ">;"
        }
    .end annotation
.end field

.field public requiredSellerActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public returnStatus:Ljava/lang/String;

.field public salesTaxAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public salesTaxPercent:F

.field public salesTaxShippingIncludedInTax:Z

.field public salesTaxState:Ljava/lang/String;

.field public selectedMethod:Ljava/lang/String;

.field public selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

.field public sellerUserId:Ljava/lang/String;

.field public shipmentTrackingDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;",
            ">;"
        }
    .end annotation
.end field

.field public shippedTime:Ljava/util/Date;

.field public shippingOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;",
            ">;"
        }
    .end annotation
.end field

.field public shippingTimeMax:I

.field public shippingTimeMin:I

.field public shippingType:Ljava/lang/String;

.field public storeId:Ljava/lang/String;

.field public thirdPartyCheckout:Z

.field public transactionId:Ljava/lang/String;

.field public transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

.field public variation:Lcom/ebay/common/model/ItemTransactionVariation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ItemTxUnmarshal"

    const-string v2, "Parcel unmarshal lifecycle details"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/ItemTransaction;->unmarshalLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 391
    new-instance v0, Lcom/ebay/common/model/ItemTransaction$1;

    invoke-direct {v0}, Lcom/ebay/common/model/ItemTransaction$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/ItemTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    .line 29
    new-instance v0, Lcom/ebay/common/model/ItemTransactionVariation;

    invoke-direct {v0}, Lcom/ebay/common/model/ItemTransactionVariation;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    .line 54
    new-instance v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMin:I

    .line 65
    iput v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMax:I

    .line 66
    new-instance v0, Lcom/ebay/common/model/OrderShippingInfo;

    invoke-direct {v0}, Lcom/ebay/common/model/OrderShippingInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->orderShippingInfo:Lcom/ebay/common/model/OrderShippingInfo;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethods:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->requiredSellerActions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLeg:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 407
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    .line 29
    new-instance v1, Lcom/ebay/common/model/ItemTransactionVariation;

    invoke-direct {v1}, Lcom/ebay/common/model/ItemTransactionVariation;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    .line 54
    new-instance v1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMin:I

    .line 65
    iput v1, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMax:I

    .line 66
    new-instance v2, Lcom/ebay/common/model/OrderShippingInfo;

    invoke-direct {v2}, Lcom/ebay/common/model/OrderShippingInfo;-><init>()V

    iput-object v2, p0, Lcom/ebay/common/model/ItemTransaction;->orderShippingInfo:Lcom/ebay/common/model/OrderShippingInfo;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethods:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ebay/common/model/ItemTransaction;->requiredSellerActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lcom/ebay/common/model/ItemTransaction;->multiLeg:Z

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    .line 408
    sget-object v3, Lcom/ebay/common/model/ItemTransaction;->unmarshalLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v3, v3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v3, :cond_0

    .line 409
    sget-object v3, Lcom/ebay/common/model/ItemTransaction;->unmarshalLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->transactionId:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->orderId:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->orderLineItemId:Ljava/lang/String;

    .line 418
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/ItemTransactionVariation;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerUserId:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackRatingStar:Ljava/lang/String;

    .line 421
    invoke-static {p1}, Lcom/ebay/common/model/ItemTransaction;->readOptInt(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackScore:Ljava/lang/Integer;

    .line 422
    invoke-static {p1}, Lcom/ebay/common/model/ItemTransaction;->readOptFloat(Landroid/os/Parcel;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPositiveFeedbackPercent:Ljava/lang/Float;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCityName:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet1:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet2:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCountry:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCountryName:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerName:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPhone:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPostalCode:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStateOrProvince:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->completeStatus:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->ebayPaymentStatus:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethodUsed:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->shippingType:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/ebay/common/model/ItemTransaction;->thirdPartyCheckout:Z

    .line 438
    iget-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    sget-object v5, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 439
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 440
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 441
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->convertedTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 442
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 443
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->convertedAmountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 445
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->paidTime:Ljava/util/Date;

    .line 446
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 447
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    .line 448
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 451
    new-instance v6, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    invoke-direct {v6, p0}, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;-><init>(Lcom/ebay/common/model/ItemTransaction;)V

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    .line 454
    iget-object v7, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 456
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMin:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMax:I

    .line 458
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/OrderShippingInfo;

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->orderShippingInfo:Lcom/ebay/common/model/OrderShippingInfo;

    .line 459
    iget-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethods:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->orderStatus:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 463
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->expectedReleaseDate:Ljava/util/Date;

    .line 464
    :cond_5
    iget-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->requiredSellerActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->paymentHoldStatus:Ljava/lang/String;

    .line 467
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxPercent:F

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxState:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxShippingIncludedInTax:Z

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLeg:Z

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressId:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressOwner:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressUsage:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCityName:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCountry:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCountryName:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegExternalAddressId:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegName:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegPhone:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegPostalCode:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegReferenceId:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStateOrProvince:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStreet1:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStreet2:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->checkoutStatus:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 490
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->shippedTime:Ljava/util/Date;

    .line 492
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->pickupMethod:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->pickupPriority:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->selectedMethod:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->storeId:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v1, :cond_9

    .line 499
    invoke-static {}, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->values()[Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    .line 500
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->merchantPickupCode:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_a

    .line 505
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_a

    .line 507
    iget-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    sget-object v5, Lcom/ebay/common/model/Refund;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 510
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCheckoutMessage:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_b

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_b

    .line 517
    iget-object v4, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    sget-object v5, Lcom/ebay/common/model/Payment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 520
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_c

    .line 523
    sget-object v1, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    iput-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    .line 526
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackPrivate:Z

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->inquiryStatus:Ljava/lang/String;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->returnStatus:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->cancelStatus:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShipmentTrackingNumber()Ljava/lang/String;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShippingCarrierUsed()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isInProcess()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    sget-object v1, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->PendingMerchantConfirmation:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ebay/common/model/ItemTransaction;->isInStoreCredit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/ebay/common/model/ItemTransaction;->isPaymentRefund()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInStoreCredit()Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/Refund;

    const-string v2, "StoreCredit"

    .line 174
    iget-object v1, v1, Lcom/ebay/common/model/Refund;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPaymentRefund()Z
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/Refund;

    const-string v2, "PaymentRefund"

    .line 192
    iget-object v1, v1, Lcom/ebay/common/model/Refund;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setShipmentTrackingNumber(Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    invoke-direct {v0, p0}, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;-><init>(Lcom/ebay/common/model/ItemTransaction;)V

    .line 232
    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setShippingCarrierUsed(Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    invoke-direct {v0, p0}, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;-><init>(Lcom/ebay/common/model/ItemTransaction;)V

    .line 251
    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    .line 252
    iget-object p1, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->orderLineItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 273
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackRatingStar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackScore:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/ebay/common/model/ItemTransaction;->writeOptInt(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 276
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPositiveFeedbackPercent:Ljava/lang/Float;

    invoke-static {p1, v0}, Lcom/ebay/common/model/ItemTransaction;->writeOptFloat(Landroid/os/Parcel;Ljava/lang/Float;)V

    .line 277
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStreet2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerStateOrProvince:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->completeStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->ebayPaymentStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethodUsed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/ebay/common/model/ItemTransaction;->thirdPartyCheckout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 293
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 295
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->convertedTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 297
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->convertedAmountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 298
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paidTime:Ljava/util/Date;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paidTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paidTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->createdDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    .line 307
    iget-object v4, v3, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shipmentTrackingNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v3, v3, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->shippingCarrierUsed:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 310
    :cond_4
    iget v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippingTimeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->orderShippingInfo:Lcom/ebay/common/model/OrderShippingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paymentMethods:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->orderStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->expectedReleaseDate:Ljava/util/Date;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->expectedReleaseDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->expectedReleaseDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->requiredSellerActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->paymentHoldStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 323
    iget v0, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 324
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/ebay/common/model/ItemTransaction;->salesTaxShippingIncludedInTax:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-boolean v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLeg:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegAddressUsage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegExternalAddressId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegReferenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStateOrProvince:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStreet1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegStreet2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->checkoutStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippedTime:Ljava/util/Date;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippedTime:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 345
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->shippedTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    :cond_8
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupPriority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->selectedMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->storeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->ordinal()I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->merchantPickupCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 359
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/Refund;

    .line 361
    invoke-virtual {v3, p1, p2}, Lcom/ebay/common/model/Refund;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 364
    :cond_c
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->buyerCheckoutMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 369
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/Payment;

    .line 371
    invoke-virtual {v3, p1, p2}, Lcom/ebay/common/model/Payment;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 375
    :cond_f
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    if-eqz v0, :cond_11

    .line 377
    iget-object v0, p0, Lcom/ebay/common/model/ItemTransaction;->unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :cond_11
    iget-boolean p2, p0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackPrivate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object p2, p0, Lcom/ebay/common/model/ItemTransaction;->inquiryStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/ebay/common/model/ItemTransaction;->returnStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object p2, p0, Lcom/ebay/common/model/ItemTransaction;->cancelStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/ebay/common/model/ItemTransaction;->multiLegServiceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
