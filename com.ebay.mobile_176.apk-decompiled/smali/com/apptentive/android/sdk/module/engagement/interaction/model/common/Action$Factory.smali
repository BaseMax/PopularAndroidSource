.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Factory;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;
    .locals 3

    .line 59
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    .line 61
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "action"

    .line 62
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object v0

    .line 64
    :cond_0
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 66
    :pswitch_1
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/DismissAction;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/DismissAction;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
