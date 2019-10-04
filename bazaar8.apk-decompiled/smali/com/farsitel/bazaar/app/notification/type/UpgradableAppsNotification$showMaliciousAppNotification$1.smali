.class public final Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpgradableAppsNotification.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/f/a/d;->b(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;->this$0:Lc/c/a/b/f/a/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/PendingIntent;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;->this$0:Lc/c/a/b/f/a/d;

    invoke-static {v0}, Lc/c/a/b/f/a/d;->b(Lc/c/a/b/f/a/d;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;->invoke()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
