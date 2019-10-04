.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;
.source "LaunchInteractionAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInvocations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "invokes"

    .line 33
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "invokes"

    .line 34
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 38
    new-instance v4, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 44
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method
