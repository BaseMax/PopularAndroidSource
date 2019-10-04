.class public final enum Lcom/farsitel/bazaar/data/model/VideoDownloadStep;
.super Ljava/lang/Enum;
.source "VideoDownloadModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/model/VideoDownloadStep;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

.field public static final enum SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

.field public static final enum VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    new-instance v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    const/4 v2, 0x0

    const-string v3, "COVER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    const/4 v2, 0x1

    const-string v3, "SUBTITLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    const/4 v2, 0x2

    const-string v3, "VIDEO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->a:[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/model/VideoDownloadStep;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->a:[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    return-object v0
.end method
