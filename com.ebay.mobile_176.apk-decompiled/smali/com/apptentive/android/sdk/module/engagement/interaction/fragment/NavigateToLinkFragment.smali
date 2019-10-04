.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "NavigateToLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;
    .locals 1

    .line 30
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$NavigateToLinkInteraction$Target:[I

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x10000000

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/Util;->canLaunchIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v2, "url"

    .line 73
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "target"

    .line 74
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->lowercaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "success"

    .line 75
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "Error creating Event data object."

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->logException(Ljava/lang/Exception;)V

    :goto_2
    const-string p1, "navigate"

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Exception in %s.onCreate()"

    .line 68
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-static {v1, v2, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string/jumbo v1, "url"

    .line 73
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "target"

    .line 74
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->lowercaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "success"

    .line 75
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_4
    const-string v1, "NavigateToLink Error: "

    .line 65
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->logException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "url"

    .line 73
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "target"

    .line 74
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->lowercaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "success"

    .line 75
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_3
    const-string v2, "Error creating Event data object."

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->logException(Ljava/lang/Exception;)V

    :goto_4
    const-string v0, "navigate"

    .line 80
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    .line 71
    :goto_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string/jumbo v2, "url"

    .line 73
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "target"

    .line 74
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->lowercaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "success"

    .line 75
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error creating Event data object."

    invoke-static {v2, v3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->logException(Ljava/lang/Exception;)V

    .line 80
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigate"

    invoke-virtual {p0, v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onPause()V

    .line 87
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->transit()V

    return-void
.end method

.method protected sendLaunchEvent(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
