.class public final Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createImageScreenshot(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
    .locals 3

    const-string v0, "mainUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh/f/b/f;)V

    return-object v0
.end method

.method public final createVideoScreenshot(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
    .locals 3

    const-string v0, "mainUrl"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh/f/b/f;)V

    return-object v0
.end method
