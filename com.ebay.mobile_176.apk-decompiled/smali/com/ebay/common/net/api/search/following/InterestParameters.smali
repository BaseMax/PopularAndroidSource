.class public Lcom/ebay/common/net/api/search/following/InterestParameters;
.super Ljava/lang/Object;
.source "InterestParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/search/following/InterestParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final country:Lcom/ebay/nautilus/domain/EbayCountry;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/ebay/common/net/api/search/following/InterestParameters$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/InterestParameters$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/following/InterestParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/ebay/nautilus/domain/EbayCountry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/EbayCountry;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 42
    iput-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 43
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    goto :goto_1

    .line 47
    :cond_1
    sget-object v0, Lcom/ebay/common/net/api/search/SearchParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 48
    iput-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 1
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 25
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/EbayCountry;Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 33
    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    check-cast p1, Lcom/ebay/common/net/api/search/following/InterestParameters;

    .line 71
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 72
    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    .line 73
    invoke-static {v2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->hashCode()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchParameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/EbayCountry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/net/api/search/SearchParameters;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    :goto_1
    return-void
.end method
