.class public final Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDownloadNotification.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/f/a/a;-><init>(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/b/f/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/b/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;->this$0:Lc/c/a/b/f/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/PendingIntent;
    .locals 4

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;->this$0:Lc/c/a/b/f/a/a;

    invoke-static {v1}, Lc/c/a/b/f/a/a;->b(Lc/c/a/b/f/a/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationClicked"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;->this$0:Lc/c/a/b/f/a/a;

    invoke-static {v1}, Lc/c/a/b/f/a/a;->a(Lc/c/a/b/f/a/a;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "notificationType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;->this$0:Lc/c/a/b/f/a/a;

    invoke-static {v1}, Lc/c/a/b/f/a/a;->b(Lc/c/a/b/f/a/a;)Landroid/content/Context;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v2

    const/high16 v3, 0x8000000

    .line 8
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/type/AppDownloadNotification$downloadCompleteTapIntent$2;->invoke()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
