.class public final synthetic Lc/c/a/b/d/f;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->values()[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAIL_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->INCOMPATIBLE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->UNKNOWN_ERROR:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x6

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x7

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->CHECKING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0x8

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0x9

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0xa

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0xb

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED_STORAGE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0xc

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP_ALL:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v6, 0xd

    aput v6, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->values()[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/d/f;->b:[I

    sget-object v0, Lc/c/a/b/d/f;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED_STORAGE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/d/f;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
