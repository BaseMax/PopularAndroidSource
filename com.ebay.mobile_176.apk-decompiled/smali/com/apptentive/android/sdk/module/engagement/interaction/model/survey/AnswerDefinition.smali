.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;
.super Lorg/json/JSONObject;
.source "AnswerDefinition.java"


# static fields
.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_OPTION:Ljava/lang/String; = "select_option"

.field public static final TYPE_OTHER:Ljava/lang/String; = "select_other"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHint()Ljava/lang/String;
    .locals 2

    const-string v0, "hint"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    const-string v1, "none"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
