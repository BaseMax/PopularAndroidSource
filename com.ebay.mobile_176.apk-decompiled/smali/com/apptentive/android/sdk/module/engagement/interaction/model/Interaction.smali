.class public abstract Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.super Lorg/json/JSONObject;
.source "Interaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;,
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;,
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;
    }
.end annotation


# static fields
.field protected static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field public static final KEY_DISPLAY_TYPE:Ljava/lang/String; = "display_type"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NAME:Ljava/lang/String; = "interaction"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;
    .locals 2

    :try_start_0
    const-string v0, "configuration"

    .line 104
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    const-string v1, "configuration"

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;-><init>()V

    return-object v0
.end method

.method protected getDefaultDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;
    .locals 1

    .line 88
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    return-object v0
.end method

.method public getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;
    .locals 1

    :try_start_0
    const-string v0, "display_type"

    .line 77
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getDefaultDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "display_type"

    .line 80
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 84
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "id"

    .line 47
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 48
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "type"

    .line 66
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "type"

    .line 67
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 72
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "version"

    .line 93
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "version"

    .line 94
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isInRunnableState(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
