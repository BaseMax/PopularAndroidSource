.class public final enum Lcom/farsitel/bazaar/common/model/DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum NONE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum PAUSE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public static final enum PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/DownloadStatus;

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->NONE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x2

    const-string v3, "DOWNLOADING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x3

    const-string v3, "CONTINUING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x4

    const-string v3, "CHECKING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x5

    const-string v3, "COMPLETED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x6

    const-string v3, "PAUSE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/4 v2, 0x7

    const-string v3, "PAUSE_BY_SYSTEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/16 v2, 0x8

    const-string v3, "FAILED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    const/16 v2, 0x9

    const-string v3, "FAILED_STORAGE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;->$VALUES:[Lcom/farsitel/bazaar/common/model/DownloadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/DownloadStatus;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/DownloadStatus;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;->$VALUES:[Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/DownloadStatus;

    return-object v0
.end method
