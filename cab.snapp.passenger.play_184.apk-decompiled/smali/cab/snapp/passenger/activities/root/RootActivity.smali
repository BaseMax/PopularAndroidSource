.class public Lcab/snapp/passenger/activities/root/RootActivity;
.super Lcab/snapp/passenger/activities/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field c:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcab/snapp/snappdialog/b;

.field private q:Z

.field private r:Landroidx/navigation/NavController;

.field private s:Lio/reactivex/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/activities/root/RootActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->i:Z

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    .line 46
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->n:Z

    .line 47
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->o:Z

    .line 50
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->q:Z

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->q:Z

    .line 460
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->handleRefreshedConfigForRideState(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string v1, "Map Screen"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v3, 0x7f0a020f

    if-eq v0, v3, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 107
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->g:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 112
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v2

    .line 125
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->g:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return v2
.end method

.method private b()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->n:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->o:Z

    if-nez v0, :cond_7

    .line 137
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a01ec

    if-ne v0, v1, :cond_5

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->stateUp()Z

    move-result v0

    if-nez v0, :cond_8

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->f:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 1095
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V

    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_3

    .line 2095
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V

    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3095
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V

    return-void

    .line 3197
    :cond_4
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onBackPressed()V

    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_6

    .line 4095
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V

    return-void

    .line 184
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->c:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    .line 5197
    :cond_7
    :goto_1
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onBackPressed()V

    :cond_8
    return-void
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 75
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/activities/root/RootActivity;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$1Q2sL2WSPYezX30V52A3skvOU6w(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/activities/root/RootActivity;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method


# virtual methods
.method public areInRideOptionsShown()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->o:Z

    return v0
.end method

.method public areOptionsShown()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->n:Z

    return v0
.end method

.method public final getContainerViewGroupId()I
    .locals 1

    const v0, 0x7f0a008b

    return v0
.end method

.method public getOverTheMapNavController()Landroidx/navigation/NavController;
    .locals 1

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7f0a008c

    .line 302
    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    return-object v0
.end method

.method public hideLoadingForSnappCabItemClickedFromSnappServices()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->p:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->p:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 404
    invoke-super {p0, p1, p2, p3}, Lcab/snapp/passenger/activities/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 405
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/activities/root/RootActivity;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/data/models/OnActivityResultModel;

    invoke-direct {v2, p1, p2, p3}, Lcab/snapp/passenger/data/models/OnActivityResultModel;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized onBackPressed()V
    .locals 1

    monitor-enter p0

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->j:Z

    if-nez v0, :cond_4

    .line 356
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->r:Landroidx/navigation/NavController;

    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6095
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 365
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->l:Z

    if-nez v0, :cond_4

    .line 371
    invoke-direct {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 376
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->resetStatusBarColor()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 381
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7095
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 385
    :cond_3
    :try_start_4
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->l:Z

    if-nez v0, :cond_4

    .line 391
    invoke-direct {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 397
    :cond_4
    :try_start_5
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onBackPressed()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreateFinished(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    .line 327
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->setupNotificationManager(Landroid/content/Context;)V

    .line 329
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v1

    invoke-interface {v1, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/activities/root/RootActivity;)V

    if-eqz p1, :cond_0

    .line 333
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->q:Z

    .line 334
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/root/RootActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->q:Z

    .line 5471
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 5475
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0f0000

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5476
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const v1, 0x7f120038

    invoke-virtual {p0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 5477
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    .line 414
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->s:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 418
    :cond_0
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onLayout()I
    .locals 1

    const v0, 0x7f0d001c

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcab/snapp/passenger/activities/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    .line 438
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 444
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onResume()V

    .line 7244
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/RootActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7245
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7247
    iget-object v1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->TECHNICAL:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->PLAY_SERVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7253
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 448
    :cond_0
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    .line 451
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    .line 452
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getMapBoxToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    .line 453
    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getMapBoxStyleUrl()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {p0, v0, v1, v2}, Lcab/snapp/passenger/f/k;->initMap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->q:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    if-nez v0, :cond_3

    .line 458
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->refreshConfigForRideState()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/activities/root/-$$Lambda$RootActivity$1Q2sL2WSPYezX30V52A3skvOU6w;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/activities/root/-$$Lambda$RootActivity$1Q2sL2WSPYezX30V52A3skvOU6w;-><init>(Lcab/snapp/passenger/activities/root/RootActivity;)V

    sget-object v2, Lcab/snapp/passenger/activities/root/-$$Lambda$0Zc8eoFUqMPXeC6GM8jq7_68cWI;->INSTANCE:Lcab/snapp/passenger/activities/root/-$$Lambda$0Zc8eoFUqMPXeC6GM8jq7_68cWI;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->s:Lio/reactivex/b/c;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->m:Z

    .line 427
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->s:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 431
    :cond_0
    invoke-super {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->onStop()V

    return-void
.end method

.method public resetStatusBarColor()V
    .locals 1

    const v0, 0x7f06012a

    .line 287
    invoke-static {p0, v0}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    return-void
.end method

.method public setAutoDayNightMode()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public setBottomSheetOpened(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->l:Z

    return-void
.end method

.method public setDayMode()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-static {p0, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public setInRideOptionsAreShown(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->o:Z

    return-void
.end method

.method public setIsDrawerOpened(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->j:Z

    return-void
.end method

.method public setJekBottomSheetOpened(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->k:Z

    return-void
.end method

.method public setNightMode()V
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-static {p0, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public setOptionsAreShown(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->n:Z

    return-void
.end method

.method public setShouldHandleBack(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->i:Z

    return-void
.end method

.method public showLoadingForSnappCabItemClickedFromSnappServices()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->p:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-direct {v0, p0}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/f$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;-><init>()V

    const v3, 0x7f12019f

    .line 264
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->build()Lcab/snapp/snappdialog/dialogViews/a/f;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->p:Lcab/snapp/snappdialog/b;

    .line 271
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/RootActivity;->p:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method
