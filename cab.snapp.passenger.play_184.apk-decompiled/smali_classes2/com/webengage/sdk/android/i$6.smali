.class Lcom/webengage/sdk/android/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/i;->onPushNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

.field final synthetic b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

.field final synthetic c:Lcom/webengage/sdk/android/i;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/i$6;->c:Lcom/webengage/sdk/android/i;

    iput-object p2, p0, Lcom/webengage/sdk/android/i$6;->a:Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    iput-object p3, p0, Lcom/webengage/sdk/android/i$6;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/i$6;->a:Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i$6;->c:Lcom/webengage/sdk/android/i;

    iget-object v1, v1, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/i$6;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-interface {v0, v1, v2}, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;->onPushNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    :cond_0
    return-void
.end method
