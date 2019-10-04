.class public final Lcom/ebay/common/net/api/search/SellerOfferParameters;
.super Ljava/lang/Object;
.source "SellerOfferParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/search/SellerOfferParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final offerId:Ljava/lang/String;

.field public final offerType:Ljava/lang/String;

.field public final seedCategoryId:Ljava/lang/String;

.field public final sellerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/ebay/common/net/api/search/SellerOfferParameters$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SellerOfferParameters$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/net/api/search/SellerOfferParameters$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/search/SellerOfferParameters;)V
    .locals 3

    .line 31
    iget-object v0, p1, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    iget-object v1, p1, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/ebay/common/net/api/search/SellerOfferParameters;
    .locals 5

    .line 65
    new-instance v0, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SellerOfferParameters;->clone()Lcom/ebay/common/net/api/search/SellerOfferParameters;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
