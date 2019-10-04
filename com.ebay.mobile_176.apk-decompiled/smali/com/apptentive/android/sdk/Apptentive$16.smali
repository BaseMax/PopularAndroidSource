.class final Lcom/apptentive/android/sdk/Apptentive$16;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->buildPendingIntentFromPushNotification(Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$16;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$16;->val$callback:Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$16;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->generatePendingIntentFromApptentivePushData(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 580
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$16$1;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$16$1;-><init>(Lcom/apptentive/android/sdk/Apptentive$16;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    const/4 p1, 0x1

    return p1
.end method
