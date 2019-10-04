.class public final synthetic Lc/c/a/b/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/DownloadStatus;->values()[Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/c;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    return-void
.end method
