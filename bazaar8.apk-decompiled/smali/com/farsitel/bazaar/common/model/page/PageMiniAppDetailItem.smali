.class public final Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;
.super Ljava/lang/Object;
.source "AppItem.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final category:Ljava/lang/String;

.field public final installCountVerbose:Ljava/lang/String;

.field public final installCountVerboseDescription:Ljava/lang/String;

.field public final installCountVerboseLabel:Ljava/lang/String;

.field public final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;"
        }
    .end annotation
.end field

.field public final shortDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->shortDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerbose:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseDescription:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->screenshots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountVerbose()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerbose:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountVerboseDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountVerboseLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallLabelWithDescription()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerbose:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->installCountVerboseDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->screenshots:Ljava/util/List;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailScreenshotByIndex(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->screenshots:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->screenshots:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final showScreenshots()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->screenshots:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
