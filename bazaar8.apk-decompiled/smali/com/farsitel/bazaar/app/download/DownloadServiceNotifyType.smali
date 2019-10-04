.class public final enum Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
.super Ljava/lang/Enum;
.source "DownloadServiceNotifyModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECKING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum CONTINUING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

.field public static final enum DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum FAILED:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum FAILED_STORAGE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum FAIL_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum INCOMPATIBLE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum PAUSE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum STOP:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum STOP_ALL:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum SUCCESS_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final enum UNKNOWN_ERROR:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;


# instance fields
.field public final actionLogValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x0

    const-string v3, "STOP"

    const-string v4, "stop"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x1

    const-string v3, "FAIL_DOWNLOAD_INFO"

    const-string v4, "fail_download_info"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAIL_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x2

    const-string v3, "SUCCESS_DOWNLOAD_INFO"

    const-string v4, "success_download_info"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x3

    const-string v3, "INCOMPATIBLE"

    const-string v4, "incompatible"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->INCOMPATIBLE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x4

    const-string v3, "UNKNOWN_ERROR"

    const-string v4, "unknown_error"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->UNKNOWN_ERROR:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x5

    const-string v3, "SUCCESS_DOWNLOAD"

    const-string v4, "success_download"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x6

    const-string v3, "CONTINUING"

    const-string v4, "continue_download"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->CONTINUING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v2, 0x7

    const-string v3, "CHECKING"

    const-string v4, "checking"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->CHECKING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0x8

    const-string v3, "DOWNLOADING"

    const-string v4, "downloading"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0x9

    const-string v3, "PAUSE"

    const-string v4, "pause"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0xa

    const-string v3, "PAUSE_BY_SYSTEM"

    const-string v4, "pause_by_system"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0xb

    const-string v3, "FAILED"

    const-string v4, "failed"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0xc

    const-string v3, "FAILED_STORAGE"

    const-string v4, "failed_storage"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED_STORAGE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/16 v2, 0xd

    const-string v3, "STOP_ALL"

    const-string v4, "stop_all"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP_ALL:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->a:[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    new-instance v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->actionLogValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->a:[Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->actionLogValue:Ljava/lang/String;

    return-object v0
.end method
