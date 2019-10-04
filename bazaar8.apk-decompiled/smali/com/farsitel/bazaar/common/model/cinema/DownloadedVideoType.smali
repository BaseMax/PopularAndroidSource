.class public final enum Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

.field public static final enum ITEM:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    const/4 v2, 0x0

    const-string v3, "ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;->ITEM:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    return-object v0
.end method
