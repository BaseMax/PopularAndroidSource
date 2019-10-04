.class public Lcom/webengage/sdk/android/actions/render/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/actions/render/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

.field private final c:Lcom/webengage/sdk/android/actions/render/CallToAction;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/os/Bundle;

.field private final g:Landroid/os/Bundle;

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/actions/render/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->a(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->b(Lcom/webengage/sdk/android/actions/render/i$a;)Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->c(Lcom/webengage/sdk/android/actions/render/i$a;)Lcom/webengage/sdk/android/actions/render/CallToAction;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->d(Lcom/webengage/sdk/android/actions/render/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->e(Lcom/webengage/sdk/android/actions/render/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->f(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->f:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->g(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->g:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->h(Lcom/webengage/sdk/android/actions/render/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/i;->h:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->i(Lcom/webengage/sdk/android/actions/render/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/i;->i:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/i$a;->j(Lcom/webengage/sdk/android/actions/render/i$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/i;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/actions/render/i$a;Lcom/webengage/sdk/android/actions/render/i$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/render/i;-><init>(Lcom/webengage/sdk/android/actions/render/i$a;)V

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/webengage/sdk/android/NotificationClickHandlerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.webengage.sdk.android.intent.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/webengage/sdk/android/actions/render/i;->j:Z

    const-string v3, "action"

    if-eqz v2, :cond_0

    const-string v2, "push_rerender"

    goto :goto_0

    :cond_0
    const-string v2, "WebEngageDeeplink"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "event"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/webengage/sdk/android/actions/render/i;->h:Z

    const-string v3, "dismiss_flag"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/webengage/sdk/android/actions/render/i;->i:Z

    const-string v3, "launch_app_if_invalid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "hashed_notification_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "custom_data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->f:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v3, "event_data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v3, "extra_data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrimeAction()Z

    move-result v2

    const-string v3, "notification_main_intent"

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "call_to_action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getFullActionUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deeplink_uri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrimeAction()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/i;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/render/i;)Landroid/app/PendingIntent;
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/i;->a()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
