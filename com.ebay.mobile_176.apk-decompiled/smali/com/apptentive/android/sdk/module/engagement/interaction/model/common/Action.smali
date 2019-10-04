.class public abstract Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;
.super Lorg/json/JSONObject;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Factory;,
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;",
        ">",
        "Lorg/json/JSONObject;"
    }
.end annotation


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_LABEL:Ljava/lang/String; = "label"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    const-string v0, "label"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
    .locals 2

    const-string v0, "action"

    .line 29
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object v0

    return-object v0
.end method
