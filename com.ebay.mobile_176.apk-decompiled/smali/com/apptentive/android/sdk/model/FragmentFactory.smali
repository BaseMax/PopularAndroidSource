.class public Lcom/apptentive/android/sdk/model/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDisplayModeToFragmentBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "showAsModal"

    .line 73
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "fragmentType"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string v0, "interaction"

    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;->parseInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    sget-object v3, Lcom/apptentive/android/sdk/model/FragmentFactory$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v1, 0x1

    :pswitch_0
    const-string/jumbo v0, "showAsModal"

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createFragmentInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "fragmentType"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "interaction"

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;->parseInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    sget-object v1, Lcom/apptentive/android/sdk/model/FragmentFactory$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_1
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    move-result-object p0

    return-object p0

    .line 53
    :pswitch_2
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    move-result-object p0

    return-object p0

    .line 51
    :pswitch_3
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_4
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_5
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_6
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_7
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 65
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
