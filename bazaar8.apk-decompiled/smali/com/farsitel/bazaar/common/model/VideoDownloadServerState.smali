.class public final enum Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;
.super Ljava/lang/Enum;
.source "VideoDownloadServerState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

.field public static final enum PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

.field public static final enum SENT:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    new-instance v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    const/4 v2, 0x0

    const-string v3, "PENDING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    const/4 v2, 0x1

    const-string v3, "SENT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->SENT:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->$VALUES:[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->$VALUES:[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    return-object v0
.end method
