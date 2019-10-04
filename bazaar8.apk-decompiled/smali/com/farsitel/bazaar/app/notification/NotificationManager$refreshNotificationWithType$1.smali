.class public final Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationManager.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Lc/c/a/b/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $data:Lc/c/a/b/f/d;

.field public final synthetic $notificationType:Lcom/farsitel/bazaar/app/notification/NotificationType;


# direct methods
.method public constructor <init>(Lc/c/a/b/f/d;Lcom/farsitel/bazaar/app/notification/NotificationType;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->$data:Lc/c/a/b/f/d;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->$notificationType:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid refreshing data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->$data:Lc/c/a/b/f/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->$notificationType:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
