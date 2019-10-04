.class public final Lc/c/a/b/f/a/f$a;
.super Ljava/lang/Object;
.source "VideoDownloadNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/f/a/f;
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
    invoke-direct {p0}, Lc/c/a/b/f/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "bazaar://download_videos"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(this)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 13
    invoke-static {p1, v0, v1, v2, v1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V
    .locals 1

    const-string p3, "notificationType"

    invoke-static {p2, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    sget-object p3, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {p3, p2}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 3
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "STOP"

    .line 5
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object v0, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "STOP_ALL"

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "Uri.parse(this)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 15
    invoke-static {p1, p2, v0, v1, v0}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/app/notification/NotificationType;)V
    .locals 3

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {v0, p2}, Lc/c/a/b/f/h;->b(Lcom/farsitel/bazaar/app/notification/NotificationType;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 2
    sget-object p2, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    invoke-virtual {p2, p1, p3}, Lc/c/a/b/f/a/f$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    invoke-virtual {p2, p1}, Lc/c/a/b/f/a/f$a;->a(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
