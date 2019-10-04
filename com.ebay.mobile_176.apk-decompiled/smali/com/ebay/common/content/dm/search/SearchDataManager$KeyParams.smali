.class public final Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;
.super Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;
.source "SearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams<",
        "Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/SearchDataManager;",
        ">;"
    }
.end annotation


# instance fields
.field final uniquifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 496
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;-><init>()V

    .line 497
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;
    .locals 2

    .line 550
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    const-class v1, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    invoke-interface {v0, p0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    return-object p0
.end method


# virtual methods
.method protected createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/search/SearchDataManager;
    .locals 2

    .line 513
    new-instance v0, Lcom/ebay/common/content/dm/search/SearchDataManager;

    const-class v1, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    invoke-direct {v0, p1, v1, p0}, Lcom/ebay/common/content/dm/search/SearchDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;)V

    return-object v0
.end method

.method protected bridge synthetic createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/DataManager;
    .locals 0

    .line 491
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/search/SearchDataManager;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    check-cast p1, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    .line 533
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getUniquifier()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 519
    invoke-super {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 520
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 542
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
