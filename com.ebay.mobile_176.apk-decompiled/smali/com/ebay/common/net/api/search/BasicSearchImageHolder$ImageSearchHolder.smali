.class public final Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;
.super Ljava/lang/Object;
.source "BasicSearchImageHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/BasicSearchImageHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageSearchHolder"
.end annotation


# instance fields
.field private final imageBytes:[B

.field final synthetic this$0:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

.field private final thumbnail:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/search/BasicSearchImageHolder;[BLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->this$0:Lcom/ebay/common/net/api/search/BasicSearchImageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->imageBytes:[B

    .line 73
    iput-object p3, p0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/search/BasicSearchImageHolder;[BLandroid/graphics/drawable/Drawable;Lcom/ebay/common/net/api/search/BasicSearchImageHolder$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;-><init>(Lcom/ebay/common/net/api/search/BasicSearchImageHolder;[BLandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getImageBytes()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->imageBytes:[B

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ebay/common/net/api/search/BasicSearchImageHolder$ImageSearchHolder;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
