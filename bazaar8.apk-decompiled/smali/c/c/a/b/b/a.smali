.class public final synthetic Lc/c/a/b/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 10

    invoke-static {}, Lcom/farsitel/bazaar/common/model/DownloadStatus;->values()[Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v9, 0x8

    aput v9, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/common/model/DownloadStatus;->values()[Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v0, Lc/c/a/b/b/a;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
