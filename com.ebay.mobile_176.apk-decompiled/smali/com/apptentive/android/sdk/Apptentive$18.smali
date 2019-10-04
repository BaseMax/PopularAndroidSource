.class final Lcom/apptentive/android/sdk/Apptentive$18;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->buildPendingIntentFromPushNotification(Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$18;->val$data:Ljava/util/Map;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$18;->val$callback:Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$18;->val$data:Ljava/util/Map;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getApptentivePushNotificationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->generatePendingIntentFromApptentivePushData(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 659
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$18$1;

    invoke-direct {v1, p0, p1}, Lcom/apptentive/android/sdk/Apptentive$18$1;-><init>(Lcom/apptentive/android/sdk/Apptentive$18;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    const/4 p1, 0x1

    return p1
.end method
