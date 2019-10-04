.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;
.super Lorg/json/JSONObject;
.source "InteractionConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isShowPoweredBy()Z
    .locals 1

    :try_start_0
    const-string/jumbo v0, "show_powered_by"

    .line 25
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "show_powered_by"

    .line 26
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
