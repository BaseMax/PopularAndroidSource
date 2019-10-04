.class public abstract Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;
.super Lorg/json/JSONObject;
.source "BaseQuestion.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NAME:Ljava/lang/String; = "question"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    const-string v0, "error_message"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 2

    const-string v0, "instructions"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSelections()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMinSelections()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRequiredText()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "required_text"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequired()Z
    .locals 2

    const-string/jumbo v0, "required"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setRequiredText(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "required_text"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
