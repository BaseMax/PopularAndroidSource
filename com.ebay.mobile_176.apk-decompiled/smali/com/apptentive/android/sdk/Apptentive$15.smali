.class final Lcom/apptentive/android/sdk/Apptentive$15;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->setPushNotificationIntegration(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pushProvider:I

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$pushProvider:I

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 3

    .line 474
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getGlobalSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pushProvider"

    iget v2, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$pushProvider:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pushToken"

    iget-object v2, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$token:Ljava/lang/String;

    .line 476
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    iget v0, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$pushProvider:I

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$15;->val$token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/conversation/Conversation;->setPushIntegration(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
