.class Lcom/webengage/sdk/android/actions/render/b;
.super Ljava/lang/Object;


# instance fields
.field private amplified:Z

.field private channelId:Ljava/lang/String;

.field private customData:Landroid/os/Bundle;

.field private experimentId:Ljava/lang/String;

.field private jsonObject:Lorg/a/c;

.field private ledColor:I

.field private license_code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private priority:I

.field private render:Z

.field private sound:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private variationId:Ljava/lang/String;

.field private vibrate:Z


# direct methods
.method public constructor <init>(Lorg/a/c;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->variationId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/b;->render:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->sound:Landroid/net/Uri;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->customData:Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/webengage/sdk/android/actions/render/b;->vibrate:Z

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/b;->ledColor:I

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->jsonObject:Lorg/a/c;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->experimentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->license_code:Ljava/lang/String;

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/b;->priority:I

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->channelId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/webengage/sdk/android/actions/render/b;->amplified:Z

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    :cond_1
    const-string v3, "license_code"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->license_code:Ljava/lang/String;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/b;->license_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->message:Ljava/lang/String;

    const-string v3, "experimentId"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/b;->experimentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/b;->render:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->sound:Landroid/net/Uri;

    const-string v1, "vib"

    invoke-virtual {p1, v1, v2}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/b;->vibrate:Z

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/b;->ledColor:I

    const-string v1, "snd"

    invoke-virtual {p1, v1}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    invoke-static {p3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/b;->sound:Landroid/net/Uri;

    :cond_3
    const-string p3, "prt"

    invoke-virtual {p1, p3, v2}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/webengage/sdk/android/actions/render/b;->priority:I

    const-string p3, "chId"

    invoke-virtual {p1, p3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/b;->channelId:Ljava/lang/String;

    :cond_4
    const-string p3, "identifier"

    invoke-virtual {p1, p3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, p3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/b;->variationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/b;->type:Ljava/lang/String;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/b;->customData:Landroid/os/Bundle;

    const-string p2, "custom"

    invoke-virtual {p1, p2}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Lorg/a/c;->optJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v0}, Lorg/a/a;->length()I

    move-result p2

    if-ge v2, p2, :cond_6

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object p2

    iget-object p3, p0, Lcom/webengage/sdk/android/actions/render/b;->customData:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {p2, v1}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {p2, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const-string p2, "amplified"

    invoke-virtual {p1, p2}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/b;->amplified:Z

    return-void

    :cond_7
    new-instance p1, Lorg/a/b;

    const-string p2, "Notification ID is Null"

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/a/b;

    const-string p2, "experimentId is null"

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lorg/a/b;

    const-string p2, "message is Null"

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "license_code mismatch , received license_code : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/webengage/sdk/android/actions/render/b;->license_code:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", integrated license code : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/a/b;

    const-string p2, "license_code is null"

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->customData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method public getLedColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/b;->ledColor:I

    return v0
.end method

.method getNotificationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/b;->priority:I

    return v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->sound:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/b;->variationId:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/b;->vibrate:Z

    return v0
.end method

.method public isAmplified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/b;->amplified:Z

    return v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/b;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/b;->message:Ljava/lang/String;

    return-void
.end method

.method public setCustomData(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/b;->customData:Landroid/os/Bundle;

    return-void
.end method

.method public setLedLight(I)V
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/b;->ledColor:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/b;->priority:I

    return-void
.end method

.method public setShouldRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/b;->render:Z

    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/b;->sound:Landroid/net/Uri;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/b;->title:Ljava/lang/String;

    return-void
.end method

.method public setVibrateFlag(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/b;->vibrate:Z

    return-void
.end method

.method public shouldRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/b;->render:Z

    return v0
.end method
