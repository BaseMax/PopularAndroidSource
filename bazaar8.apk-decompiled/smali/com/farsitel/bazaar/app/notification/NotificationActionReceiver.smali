.class public final Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;
.super Ld/a/e;
.source "NotificationActionReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver$a;


# instance fields
.field public b:Lc/c/a/b/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;->a:Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Ld/a/e;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5e8d7835

    const-string v3, "notificationType"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_b

    const v2, 0x7153d0bc

    if-eq v1, v2, :cond_3

    const p1, 0x78985e76

    if-eq v1, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "notificationDelete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, -0x1

    if-eqz p2, :cond_2

    const-string v0, "notificationId"

    .line 5
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    :cond_2
    sget-object p2, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {p2, p1}, Lc/c/a/b/f/h;->a(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "notificationClicked"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 8
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-static {}, Lcom/farsitel/bazaar/app/notification/NotificationType;->values()[Lcom/farsitel/bazaar/app/notification/NotificationType;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lc/c/a/b/f/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "appManager"

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    const-string v3, "shareLink"

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    goto/16 :goto_0

    .line 10
    :cond_4
    sget-object v1, Lc/c/a/b/f/a/d;->b:Lc/c/a/b/f/a/d$a;

    invoke-virtual {v1, v0}, Lc/c/a/b/f/a/d$a;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)V

    .line 11
    sget-object v0, Lc/c/a/b/f/a/d;->b:Lc/c/a/b/f/a/d$a;

    const-string v1, "upgradableItems"

    .line 12
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lc/c/a/b/f/a/d$a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v1, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    invoke-virtual {v1, v0}, Lc/c/a/b/f/a/f$a;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)V

    .line 15
    sget-object v1, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    .line 16
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {v1, p1, v0, p2}, Lc/c/a/b/f/a/f$a;->b(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_6
    sget-object v1, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    .line 19
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v1, p1, v0, p2}, Lc/c/a/b/f/a/f$a;->b(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_7
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    .line 22
    iget-object v1, p0, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;->b:Lc/c/a/b/d/b;

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {p2, p1, v0, v1}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Lc/c/a/b/d/b;)V

    goto :goto_0

    .line 24
    :cond_8
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v4

    .line 25
    :cond_9
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    invoke-virtual {p2, v0}, Lc/c/a/b/f/a/a$a;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;)V

    .line 26
    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    .line 27
    iget-object v1, p0, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;->b:Lc/c/a/b/d/b;

    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {p2, p1, v0, v1}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Lc/c/a/b/d/b;)V

    goto :goto_0

    .line 29
    :cond_a
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v4

    :cond_b
    const-string v1, "notificationPause"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_c

    const-string v0, "entityId"

    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    if-eqz p2, :cond_e

    .line 32
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 33
    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_d

    sget-object p2, Lc/c/a/b/f/a/a;->b:Lc/c/a/b/f/a/a$a;

    .line 34
    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 35
    invoke-virtual {p2, p1, v0}, Lc/c/a/b/f/a/a$a;->a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;)V

    goto :goto_0

    .line 36
    :cond_d
    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_e

    sget-object p2, Lc/c/a/b/f/a/f;->b:Lc/c/a/b/f/a/f$a;

    .line 37
    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 38
    invoke-virtual {p2, p1, v0, v4}, Lc/c/a/b/f/a/f$a;->a(Landroid/content/Context;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    :cond_e
    :goto_0
    return-void
.end method
