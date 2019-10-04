.class public final Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;
.super Ljava/lang/Object;
.source "BookmarkModel.kt"


# instance fields
.field public final appName:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final isBookmarked:Z

.field public final packageName:Ljava/lang/String;

.field public final price:I

.field public final priceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->iconUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->appName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->isBookmarked:Z

    iput p5, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->price:I

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->priceString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->price:I

    return v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final isBookmarked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->isBookmarked:Z

    return v0
.end method
