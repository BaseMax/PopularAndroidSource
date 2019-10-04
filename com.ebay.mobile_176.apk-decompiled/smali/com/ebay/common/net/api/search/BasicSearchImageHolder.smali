.class public Lcom/ebay/common/net/api/search/BasicSearchImageHolder;
.super Ljava/lang/Object;
.source "BasicSearchImageHolder.java"

# interfaces
.implements Lcom/ebay/common/net/api/search/SearchImageHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;
    }
.end annotation


# static fields
.field static imageDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->imageDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ebay/common/net/api/search/BasicSearchImageHolder;
    .locals 1

    .line 21
    sget-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->instance:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->instance:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

    .line 23
    :cond_0
    sget-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->instance:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

    return-object v0
.end method


# virtual methods
.method public getImageBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ImageId cannot be empty"

    .line 30
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->imageDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->getImageBytes()[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getImageThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ImageId cannot be empty"

    .line 47
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->imageDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public putImageBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->putImageBytes(Ljava/lang/String;[BLandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public putImageBytes(Ljava/lang/String;[BLandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ImageBytes cannot be empty"

    .line 59
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ImageId cannot be empty"

    .line 60
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder;->imageDataMap:Ljava/util/HashMap;

    new-instance v1, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;-><init>(Lcom/ebay/common/net/api/search/BasicSearchImageHolder;[BLandroid/graphics/drawable/Drawable;Lcom/ebay/common/net/api/search/BasicSearchImageHolder$1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
