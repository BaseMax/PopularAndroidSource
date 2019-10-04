.class final Lcom/apptentive/android/sdk/Apptentive$29;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->queryCanShowInteraction(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Ljava/lang/String;)V
    .locals 0

    .line 1379
    iput-object p3, p0, Lcom/apptentive/android/sdk/Apptentive$29;->val$event:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$29;->val$event:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/Apptentive;->access$000(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
