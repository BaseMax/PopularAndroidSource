.class public final Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;
.super Ljava/lang/Object;
.source "DownloadServiceNotifyModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;
    .locals 1

    const-string v0, "downloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/b/b/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->CONTINUING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->CHECKING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->PAUSE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 8
    :pswitch_5
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED_STORAGE:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAILED:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
