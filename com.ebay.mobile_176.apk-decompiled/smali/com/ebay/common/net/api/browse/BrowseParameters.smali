.class public final Lcom/ebay/common/net/api/browse/BrowseParameters;
.super Ljava/lang/Object;
.source "BrowseParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/browse/BrowseParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SUPPORTED_UX_COMPONENTS:[Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;


# instance fields
.field public category:Lcom/ebay/common/model/search/EbayCategorySummary;

.field public keywords:Ljava/lang/String;

.field public scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field public final supportedUxComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    .line 25
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->CATEGORY_NAV_VERTICAL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEMS_GRID_SRP:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_IMAGE_ANSWER_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PAGE_TITLE_BAR:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_IMAGE_ANSWER_VERTICAL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PRODUCTS_VERTICAL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->C2C_IMAGE_BANNER:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->EVENTS_IMAGE_BANNER:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_ANSWER_PILL_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->MULTI_QUERY_ANSWER_ACCORDION:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->DEFAULT_SUPPORTED_UX_COMPONENTS:[Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 172
    new-instance v0, Lcom/ebay/common/net/api/browse/BrowseParameters$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/browse/BrowseParameters$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    .line 110
    const-class v0, Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/EbayCategorySummary;

    iput-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 115
    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-static {}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->values()[Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    const-class v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/EbayAspectHistogram;

    iput-object p1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/net/api/browse/BrowseParameters$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/browse/BrowseParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/EbayCategorySummary;Ljava/util/List;Lcom/ebay/common/model/search/EbayAspectHistogram;)V
    .locals 2
    .param p1    # Lcom/ebay/common/model/search/EbayCategorySummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/model/search/EbayAspectHistogram;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/model/search/EbayCategorySummary;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;",
            ">;",
            "Lcom/ebay/common/model/search/EbayAspectHistogram;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 85
    iput-object p3, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    .line 88
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 90
    sget-object p3, Lcom/ebay/mobile/dcs/Dcs$Browse$S;->excludedUxComponentNames:Lcom/ebay/mobile/dcs/Dcs$Browse$S;

    invoke-interface {p1, p3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[,;]\\s*"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 96
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-eqz p3, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_3
    sget-object p2, Lcom/ebay/mobile/dcs/Dcs$Prp$B;->feature:Lcom/ebay/mobile/dcs/Dcs$Prp$B;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    sget-object p2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PRODUCTS_VERTICAL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    sget-object p2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PRODUCTS_VERTICAL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static getDefaultBrowseParameters(Lcom/ebay/common/model/search/EbayCategorySummary;Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/net/api/browse/BrowseParameters;
    .locals 2
    .param p0    # Lcom/ebay/common/model/search/EbayCategorySummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/common/model/search/EbayAspectHistogram;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    new-instance v0, Lcom/ebay/common/net/api/browse/BrowseParameters;

    sget-object v1, Lcom/ebay/common/net/api/browse/BrowseParameters;->DEFAULT_SUPPORTED_UX_COMPONENTS:[Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ebay/common/net/api/browse/BrowseParameters;-><init>(Lcom/ebay/common/model/search/EbayCategorySummary;Ljava/util/List;Lcom/ebay/common/model/search/EbayAspectHistogram;)V

    return-object v0
.end method

.method public static getEmptyBrowseParameters()Lcom/ebay/common/net/api/browse/BrowseParameters;
    .locals 3

    .line 53
    new-instance v0, Lcom/ebay/common/net/api/browse/BrowseParameters;

    sget-object v1, Lcom/ebay/common/net/api/browse/BrowseParameters;->DEFAULT_SUPPORTED_UX_COMPONENTS:[Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/ebay/common/net/api/browse/BrowseParameters;-><init>(Lcom/ebay/common/model/search/EbayCategorySummary;Ljava/util/List;Lcom/ebay/common/model/search/EbayAspectHistogram;)V

    return-object v0
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

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    check-cast p1, Lcom/ebay/common/net/api/browse/BrowseParameters;

    .line 145
    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v3, p1, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 146
    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    iget-object v3, p1, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    .line 147
    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object p1, p1, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 148
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
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v3, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v3}, Lcom/ebay/common/model/search/EbayCategorySummary;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget-object v3, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-object v2, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " supportedUxComponents:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scopedAspects:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    iget-object v1, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->supportedUxComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 132
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
