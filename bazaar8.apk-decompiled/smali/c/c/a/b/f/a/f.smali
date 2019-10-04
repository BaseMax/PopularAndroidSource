.class public final Lc/c/a/b/f/a/f;
.super Lc/c/a/b/f/a/b;
.source "VideoDownloadNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/f/a/f$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lc/c/a/b/f/a/f$a;


# instance fields
.field public final c:Lh/c;

.field public final d:Lh/c;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/f;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "downloadingTapIntent"

    const-string v4, "getDownloadingTapIntent()Landroid/app/PendingIntent;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/f;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "downloadCompleteTapIntent"

    const-string v4, "getDownloadCompleteTapIntent()Landroid/app/PendingIntent;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/b/f/a/f;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/b/f/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/b/f/a/f$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloaderModel"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/b/f/a/b;-><init>()V

    iput-object p1, p0, Lc/c/a/b/f/a/f;->e:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$downloadingTapIntent$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$downloadingTapIntent$2;-><init>(Lc/c/a/b/f/a/f;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/f;->c:Lh/c;

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$downloadCompleteTapIntent$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$downloadCompleteTapIntent$2;-><init>(Lc/c/a/b/f/a/f;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/f;->d:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/f/a/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/f/a/f;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/b/f/a/f;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/f/a/f;->b()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/b/f/a/f;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/f/a/f;->c()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/b/f/a/f;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 8

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/b/f/a/f;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lb/i/a/n$a;

    .line 5
    iget-object v2, p0, Lc/c/a/b/f/a/f;->e:Landroid/content/Context;

    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080115

    .line 6
    invoke-direct {v1, v3, v2, v0}, Lb/i/a/n$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v2, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 9
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 10
    iget-object v0, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoName()Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v7, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$showDownloading$1;

    invoke-direct {v7, p0}, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$showDownloading$1;-><init>(Lc/c/a/b/f/a/f;)V

    move-object v3, p1

    move v5, p2

    .line 12
    invoke-virtual/range {v1 .. v7}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lh/f/a/a;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 14
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc/c/a/b/f/a/f;->e:Landroid/content/Context;

    const-class v2, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationPause"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "entityId"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget-object p1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "notificationType"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Lc/c/a/b/f/a/f;->e:Landroid/content/Context;

    .line 20
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v1

    const/high16 v2, 0x8000000

    .line 21
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026_UPDATE_CURRENT\n        )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/f;->d:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/f;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/f;->c:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/f;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()V
    .locals 15

    .line 2
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 4
    iget-object v2, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 7
    iget-object v0, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v0, p0, Lc/c/a/b/f/a/f;->f:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoName()Ljava/lang/String;

    move-result-object v5

    .line 9
    sget-object v7, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 10
    new-instance v12, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$showCompleted$1;

    invoke-direct {v12, p0}, Lcom/farsitel/bazaar/app/notification/type/VideoDownloadNotification$showCompleted$1;-><init>(Lc/c/a/b/f/a/f;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x74

    const/4 v14, 0x0

    .line 11
    invoke-static/range {v3 .. v14}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V

    return-void
.end method
