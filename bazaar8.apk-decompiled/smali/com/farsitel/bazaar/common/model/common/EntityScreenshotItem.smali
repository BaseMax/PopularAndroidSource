.class public abstract Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;
.super Ljava/lang/Object;
.source "EntityScreenshotItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;
.implements Landroid/os/Parcelable;


# instance fields
.field public final isImage:Z

.field public final mainUrl:Ljava/lang/String;

.field public final thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "mainUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->mainUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->thumbnailUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->isImage:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMainUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->mainUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getViewType()I
.end method

.method public isImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->isImage:Z

    return v0
.end method
