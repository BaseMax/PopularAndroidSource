.class public final enum Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;
.super Ljava/lang/Enum;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECKING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum COMPLETED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum DOWNLOADING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum FAILED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum LINK_IS_NOT_VALID:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final enum NETWORK_LOST:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x0

    const-string v3, "LINK_IS_NOT_VALID"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->LINK_IS_NOT_VALID:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x2

    const-string v3, "NETWORK_LOST"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->NETWORK_LOST:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x3

    const-string v3, "FAILED_STORAGE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x4

    const-string v3, "DOWNLOADING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x5

    const-string v3, "CHECKING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->CHECKING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    const/4 v2, 0x6

    const-string v3, "COMPLETED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->a:[Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->a:[Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    return-object v0
.end method
