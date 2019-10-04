.class public final Lc/c/a/b/f/a/d;
.super Ljava/lang/Object;
.source "UpgradableAppsNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/f/a/d$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lc/c/a/b/f/a/d$a;


# instance fields
.field public final c:Lh/c;

.field public final d:Lh/c;

.field public final e:Lh/c;

.field public final f:Landroid/content/Context;

.field public final g:Lc/c/a/e/d/b/ba;

.field public final h:Lc/c/a/e/d/u/a;

.field public final i:Lc/c/a/e/d/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/d;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "tapIntent"

    const-string v4, "getTapIntent()Landroid/app/PendingIntent;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/d;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "maliciousTapIntent"

    const-string v4, "getMaliciousTapIntent()Landroid/app/PendingIntent;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/d;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "locale"

    const-string v4, "getLocale()Ljava/util/Locale;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/b/f/a/d;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/b/f/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/b/f/a/d$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/b/f/a/d;->b:Lc/c/a/b/f/a/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/b/ba;Lc/c/a/e/d/u/a;Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/b/f/a/d;->g:Lc/c/a/e/d/b/ba;

    iput-object p3, p0, Lc/c/a/b/f/a/d;->h:Lc/c/a/e/d/u/a;

    iput-object p4, p0, Lc/c/a/b/f/a/d;->i:Lc/c/a/e/d/a/a;

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$tapIntent$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$tapIntent$2;-><init>(Lc/c/a/b/f/a/d;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/d;->c:Lh/c;

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$maliciousTapIntent$2;-><init>(Lc/c/a/b/f/a/d;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/d;->d:Lh/c;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$locale$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$locale$2;-><init>(Lc/c/a/b/f/a/d;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/d;->e:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/f/a/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/b/f/a/d;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/f/a/d;->b()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/b/f/a/d;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/f/a/d;->c()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 35
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 39
    sget-object v2, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->Companion:Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;

    invoke-virtual {v2, v1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;->fromAppItem(Lcom/farsitel/bazaar/common/model/page/ListItem$App;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    const-class v2, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationClicked"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "upgradableItems"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    sget-object p1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "notificationType"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    .line 47
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v1

    const/high16 v2, 0x8000000

    .line 48
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026_UPDATE_CURRENT\n        )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;

    iget v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;-><init>(Lc/c/a/b/f/a/d;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-boolean v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->Z$0:Z

    iget-object v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/b/f/a/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-boolean v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->Z$0:Z

    iget-object v4, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lc/c/a/b/f/a/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v13, v5

    move v5, v2

    move-object v2, v13

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/b/f/a/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/b/f/a/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/b/f/a/d;->g:Lc/c/a/e/d/b/ba;

    iput-object p0, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/b/ba;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_8

    .line 8
    invoke-virtual {v2, p1}, Lc/c/a/b/f/a/d;->b(Ljava/util/List;)V

    .line 9
    iget-object v3, v2, Lc/c/a/b/f/a/d;->g:Lc/c/a/e/d/b/ba;

    iput-object v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    invoke-virtual {v3, v0}, Lc/c/a/e/d/b/ba;->d(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    return-object p1

    .line 10
    :cond_8
    iget-object v5, v2, Lc/c/a/b/f/a/d;->h:Lc/c/a/e/d/u/a;

    invoke-virtual {v5}, Lc/c/a/e/d/u/a;->G()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 11
    iget-object v7, v2, Lc/c/a/b/f/a/d;->g:Lc/c/a/e/d/b/ba;

    iput-object v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    iput-boolean v5, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->Z$0:Z

    iput v4, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    invoke-virtual {v7, v0}, Lc/c/a/e/d/b/ba;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_9

    return-object v1

    :cond_9
    move-object v13, v4

    move-object v4, p1

    move-object p1, v13

    .line 12
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 14
    invoke-virtual {v8}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v9

    sget-object v10, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v11, v2, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lc/c/a/b/f/a/d;->a()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v12}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    const-string v8, ""

    :goto_5
    invoke-virtual {v9, v8}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setAppName(Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_d

    .line 16
    iget-object v6, v2, Lc/c/a/b/f/a/d;->i:Lc/c/a/e/d/a/a;

    invoke-virtual {v6}, Lc/c/a/e/d/a/a;->x()Z

    move-result v6

    .line 17
    invoke-virtual {v2, p1, v6}, Lc/c/a/b/f/a/d;->a(Ljava/util/List;Z)V

    .line 18
    iget-object v6, v2, Lc/c/a/b/f/a/d;->g:Lc/c/a/e/d/b/ba;

    iput-object v2, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$1:Ljava/lang/Object;

    iput-boolean v5, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->Z$0:Z

    iput-object p1, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$requestToShow$1;->label:I

    invoke-virtual {v6, v0}, Lc/c/a/e/d/b/ba;->e(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    :goto_6
    return-object p1

    .line 19
    :cond_d
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a()Ljava/util/Locale;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/d;->e:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/d;->a:[Lh/i/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 21
    new-instance p2, Lb/i/a/n$a;

    const v0, 0x7f08012b

    .line 22
    iget-object v1, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    const v2, 0x7f10020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p0, p1}, Lc/c/a/b/f/a/d;->a(Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 24
    invoke-direct {p2, v0, v1, v2}, Lb/i/a/n$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 25
    invoke-interface {v12, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 27
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 28
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v3, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lc/c/a/b/f/a/d;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lc/c/a/b/f/a/d;->a()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lc/c/a/c/b/h;->a(Landroid/content/pm/PackageInfo;Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    move-object v2, p2

    const/4 v3, 0x0

    .line 30
    sget-object v4, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const-wide/16 v6, 0x0

    .line 31
    new-instance v9, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showNotification$1;

    invoke-direct {v9, p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showNotification$1;-><init>(Lc/c/a/b/f/a/d;)V

    const/16 v10, 0x24

    const/4 v11, 0x0

    const-string v8, "updates"

    move-object v5, v12

    .line 32
    invoke-static/range {v0 .. v11}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/d;->d:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/d;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 3
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 4
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    sget-object v5, Lcom/farsitel/bazaar/app/notification/NotificationType;->MALICIOUS_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 7
    new-instance v10, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;

    invoke-direct {v10, p0}, Lcom/farsitel/bazaar/app/notification/type/UpgradableAppsNotification$showMaliciousAppNotification$1;-><init>(Lc/c/a/b/f/a/d;)V

    const/16 v11, 0x34

    const/4 v12, 0x0

    const-string v9, "updates"

    .line 8
    invoke-static/range {v1 .. v12}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/d;->c:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/d;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method
