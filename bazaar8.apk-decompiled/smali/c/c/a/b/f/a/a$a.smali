.class public final Lc/c/a/b/f/a/a$a;
.super Ljava/lang/Object;
.source "AppDownloadNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/f/a/a;
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
    invoke-direct {p0}, Lc/c/a/b/f/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "bazaar://downloads"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(this)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 25
    invoke-static {p1, v0, v1, v2, v1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lc/c/a/b/d/b;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p2, p3}, Lc/c/a/b/d/b;->l(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;)V
    .locals 2

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 8
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {v0, p2}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "STOP"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "STOP_ALL"

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Lc/c/a/b/d/b;)V
    .locals 4

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {v0, p2}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    if-ne p2, v3, :cond_0

    .line 5
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;Lc/c/a/b/d/b;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    invoke-virtual {p2, p1, v2}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    invoke-virtual {p2, p1}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bazaar://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "Uri.parse(this)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 22
    invoke-static {p1, p2, v0, v1, v0}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/app/notification/NotificationType;)V
    .locals 3

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
