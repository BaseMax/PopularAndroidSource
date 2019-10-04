.class public final Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;
.super Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;
.source "EbayCategoryHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayCategoryHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentCategory"
.end annotation


# instance fields
.field public final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;-><init>()V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;-><init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V

    .line 305
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;-><init>()V

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
