.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.source "RatingDialogInteraction.java"


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
.method public getBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "body"

    .line 39
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "body"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/apptentive/android/sdk/R$string;->apptentive_rating_message_fs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/model/Configuration;->getAppDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeclineText()Ljava/lang/String;
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "decline_text"

    .line 63
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "decline_text"

    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getRateText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rate_text"

    .line 47
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "rate_text"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/apptentive/android/sdk/R$string;->apptentive_rate_this_app:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/model/Configuration;->getAppDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRemindText()Ljava/lang/String;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "remind_text"

    .line 55
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "remind_text"

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "title"

    .line 31
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "title"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
