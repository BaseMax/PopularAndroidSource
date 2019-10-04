.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "AppStoreRatingFragment.java"

# interfaces
.implements Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/AppStoreRatingInteraction;",
        ">;",
        "Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method private displayError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 106
    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    .line 108
    sget v3, Lcom/apptentive/android/sdk/R$string;->apptentive_oops:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    .line 109
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "positive"

    .line 110
    sget v2, Lcom/apptentive/android/sdk/R$string;->apptentive_ok:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveAlertDialog;->show(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception while displaying an error"

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;
    .locals 1

    .line 30
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->transit()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 43
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$string;->apptentive_rating_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v2

    invoke-interface {v2}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getRatingProvider()Lcom/apptentive/android/sdk/module/rating/IRatingProvider;

    move-result-object v2

    .line 50
    invoke-interface {v2, p1}, Lcom/apptentive/android/sdk/module/rating/IRatingProvider;->activityNotFoundMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/apptentive/android/sdk/module/rating/InsufficientRatingArgumentsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/Configuration;->getAppDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v4

    invoke-interface {v4}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getRatingProviderArgs()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v4, "package"

    .line 61
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "package"

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "name"

    .line 64
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "name"

    .line 65
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    invoke-interface {v2, p1, v5}, Lcom/apptentive/android/sdk/module/rating/IRatingProvider;->startRating(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/apptentive/android/sdk/module/rating/InsufficientRatingArgumentsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Exception in %s.onCreate()"

    const/4 v2, 0x1

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->logException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/rating/InsufficientRatingArgumentsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget v0, Lcom/apptentive/android/sdk/R$string;->apptentive_rating_error:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->displayError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-object v3, v0

    .line 70
    :catch_3
    invoke-direct {p0, p1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->displayError(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDismissAlert()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->transit()V

    return-void
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onPause()V

    .line 90
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->transit()V

    return-void
.end method

.method protected sendLaunchEvent(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
