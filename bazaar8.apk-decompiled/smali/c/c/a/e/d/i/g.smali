.class public final synthetic Lc/c/a/e/d/i/g;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->values()[Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->LINK_IS_NOT_VALID:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->CHECKING:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x5

    aput v5, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x6

    aput v5, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;->NETWORK_LOST:Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x7

    aput v5, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/data/entity/EntityType;->values()[Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/g;->b:[I

    sget-object v0, Lc/c/a/e/d/i/g;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->DIFF_APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/g;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
