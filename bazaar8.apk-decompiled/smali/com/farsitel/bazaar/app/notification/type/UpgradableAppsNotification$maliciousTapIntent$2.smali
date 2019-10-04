.class public final Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UpgradableAppsNotification.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/f/a/d;-><init>(Landroid/content/Context;Lc/c/a/e/d/b/ba;Lc/c/a/e/d/u/a;Lc/c/a/e/d/a/a;)V
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
.field public final synthetic this$0:Lc/c/a/b/f/a/d;


# direct methods
.method public constructor <init>(Lc/c/a/b/f/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;->this$0:Lc/c/a/b/f/a/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/PendingIntent;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;->this$0:Lc/c/a/b/f/a/d;

    invoke-static {v0}, Lc/c/a/b/f/a/d;->a(Lc/c/a/b/f/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bazaar://page?slug=malicious"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(this)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 4
    invoke-static {v0, v1, v2, v3, v2}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;->invoke()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
