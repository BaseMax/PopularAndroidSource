.class final Lcom/apptentive/android/sdk/Apptentive$19;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->showMessageCenter(Landroid/content/Context;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 954
    iput-object p3, p0, Lcom/apptentive/android/sdk/Apptentive$19;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/apptentive/android/sdk/Apptentive$19;->val$customData:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 2

    .line 957
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$19;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$19;->val$customData:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->showMessageCenterInternal(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
