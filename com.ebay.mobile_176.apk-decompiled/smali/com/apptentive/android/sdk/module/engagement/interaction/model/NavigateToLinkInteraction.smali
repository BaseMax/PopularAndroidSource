.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
.source "NavigateToLinkInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;
    }
.end annotation


# static fields
.field public static final EVENT_KEY_SUCCESS:Ljava/lang/String; = "success"

.field public static final EVENT_NAME_NAVIGATE:Ljava/lang/String; = "navigate"

.field public static final KEY_TARGET:Ljava/lang/String; = "target"

.field public static final KEY_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTarget()Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "target"

    .line 36
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "target"

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;->New:Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction;->getConfiguration()Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "url"

    .line 28
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "url"

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
