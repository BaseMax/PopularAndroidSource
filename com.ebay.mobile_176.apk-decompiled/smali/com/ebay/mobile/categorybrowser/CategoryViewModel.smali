.class public final Lcom/ebay/mobile/categorybrowser/CategoryViewModel;
.super Lcom/ebay/mobile/common/view/ViewModel;
.source "CategoryViewModel.java"


# static fields
.field public static final MOTORS_CAR_TRUCK_PARTS_ID:J = 0x178eL

.field public static final MOTORS_PARTS_AND_ACC_ID:J = 0x178cL


# instance fields
.field public final category:Lcom/ebay/nautilus/domain/data/EbayCategory;

.field public final ebaySite:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/domain/data/EbayCategory;Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p4}, Lcom/ebay/mobile/common/view/ViewModel;-><init>(ILcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V

    .line 29
    iput-object p3, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 30
    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    return-void
.end method

.method public static getCategoryImageUrl(J)Ljava/lang/String;
    .locals 6

    .line 35
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/ebay/mobile/dcs/DcsString;->categoryBrowseAssetHostURL:Lcom/ebay/mobile/dcs/DcsString;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Lcom/ebay/mobile/dcs/DcsString;->DCSCategoryBrowseAssetType:Lcom/ebay/mobile/dcs/DcsString;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%1$simg_category_%2$d.%3$s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "/"

    .line 40
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    const/4 p0, 0x2

    aput-object v0, v4, p0

    .line 39
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isCategorySearchInvalid()Z
    .locals 4

    .line 48
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v2, 0x178c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v2, 0x178e

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
