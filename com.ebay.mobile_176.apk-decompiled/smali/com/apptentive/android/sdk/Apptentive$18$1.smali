.class Lcom/apptentive/android/sdk/Apptentive$18$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive$18;->execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/Apptentive$18;

.field final synthetic val$intent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$18;Landroid/app/PendingIntent;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$18$1;->this$0:Lcom/apptentive/android/sdk/Apptentive$18;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$18$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$18$1;->this$0:Lcom/apptentive/android/sdk/Apptentive$18;

    iget-object v0, v0, Lcom/apptentive/android/sdk/Apptentive$18;->val$callback:Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$18$1;->val$intent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/Apptentive$PendingIntentCallback;->onPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method
