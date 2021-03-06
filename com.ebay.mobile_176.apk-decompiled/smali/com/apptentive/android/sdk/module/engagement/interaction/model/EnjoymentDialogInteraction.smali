.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.source "EnjoymentDialogInteraction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDismissText()Ljava/lang/String;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "dismiss_text"

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoText()Ljava/lang/String;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "no_text"

    .line 48
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no_text"

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .line 30
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "title"

    .line 31
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$string;->apptentive_do_you_love_this_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/model/Configuration;->getAppDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYesText()Ljava/lang/String;
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "yes_text"

    .line 40
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "yes_text"

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public showDismissButton()Z
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "show_dismiss_button"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
