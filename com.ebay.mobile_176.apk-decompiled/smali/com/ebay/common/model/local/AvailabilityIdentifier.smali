.class public final Lcom/ebay/common/model/local/AvailabilityIdentifier;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "AvailabilityIdentifier.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/local/AvailabilityIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final countryCode:Ljava/lang/String;

.field final ebnCheck:Z

.field final postalCode:Ljava/lang/String;

.field final quantity:I

.field final sellerID:Ljava/lang/String;

.field final sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/ebay/common/model/local/AvailabilityIdentifier$1;

    invoke-direct {v0}, Lcom/ebay/common/model/local/AvailabilityIdentifier$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/model/local/AvailabilityIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->ebnCheck:Z

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lt p5, v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->countryCode:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->postalCode:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sellerID:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sku:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->quantity:I

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "one or more invalid arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 73
    instance-of v1, p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/ebay/common/model/local/AvailabilityIdentifier;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 75
    check-cast p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;

    .line 77
    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->countryCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;->countryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->postalCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;->postalCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sellerID:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sellerID:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sku:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sku:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 61
    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->postalCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 62
    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sellerID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 63
    iget-object v1, p0, Lcom/ebay/common/model/local/AvailabilityIdentifier;->sku:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
