.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "UpgradeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method private getIconDrawableResourceId()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Error loading app icon."

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->logException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 42
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_upgrade_message_interaction:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    :try_start_0
    sget p2, Lcom/apptentive/android/sdk/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 46
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->getIconDrawableResourceId()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    sget p2, Lcom/apptentive/android/sdk/R$id;->webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    .line 53
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;->getBody()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {p2, p3, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 57
    sget p2, Lcom/apptentive/android/sdk/R$id;->apptentive_branding_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 59
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction;->isShowPoweredBy()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object p3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/apptentive/android/sdk/model/Configuration;->isHideBranding(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 60
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Exception in %s.onCreateView()"

    const/4 v1, 0x1

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, p3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->logException(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 1

    const-string v0, "dismiss"

    .line 73
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
