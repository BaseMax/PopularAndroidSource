.class public Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;
.super Ljava/lang/Object;
.source "ShippingCostsTaxJurisdiction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isEbayCollectedTax:Z

.field public jurisdictionId:Ljava/lang/String;

.field public salesTaxPercent:F

.field public shippingIncludedInTax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction$1;

    invoke-direct {v0}, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->jurisdictionId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->salesTaxPercent:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->shippingIncludedInTax:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->isEbayCollectedTax:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/model/ShippingCostsTaxJurisdiction$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->jurisdictionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->salesTaxPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 28
    iget-boolean p2, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->shippingIncludedInTax:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-boolean p2, p0, Lcom/ebay/common/model/ShippingCostsTaxJurisdiction;->isEbayCollectedTax:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
