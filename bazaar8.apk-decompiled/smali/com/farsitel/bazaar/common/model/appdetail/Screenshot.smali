.class public final Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
.super Ljava/lang/Object;
.source "AppDetail.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;


# instance fields
.field public final isImage:Z

.field public final mainUrl:Ljava/lang/String;

.field public final thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->Companion:Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->mainUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->thumbnailUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->isImage:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getMainUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->mainUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->isImage:Z

    return v0
.end method

.method public final toScreenShotItem()Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
    .locals 3

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->Companion:Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->mainUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;->createImageScreenshot(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object v0

    return-object v0
.end method
