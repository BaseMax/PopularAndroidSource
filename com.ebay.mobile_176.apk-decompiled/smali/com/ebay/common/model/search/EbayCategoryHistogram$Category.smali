.class public Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;
.super Ljava/lang/Object;
.source "EbayCategoryHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayCategoryHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static UNINITIALIZED_LEVEL:I = -0x80000000


# instance fields
.field public count:I

.field public id:J

.field public isLeaf:Z

.field public level:I

.field public name:Ljava/lang/String;

.field public parentId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    const/4 v2, 0x0

    .line 257
    iput-object v2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    .line 260
    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    .line 266
    sget v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->UNINITIALIZED_LEVEL:I

    iput v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    .line 269
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V
    .locals 3

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    const/4 v2, 0x0

    .line 257
    iput-object v2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    .line 260
    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    .line 266
    sget v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->UNINITIALIZED_LEVEL:I

    iput v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    .line 269
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    .line 277
    iget-wide v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    .line 278
    iget-object v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    .line 279
    iget-wide v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    .line 280
    iget v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    iput v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    .line 281
    iget v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    iput v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    .line 282
    iget-boolean p1, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    iput-boolean p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    iget v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
