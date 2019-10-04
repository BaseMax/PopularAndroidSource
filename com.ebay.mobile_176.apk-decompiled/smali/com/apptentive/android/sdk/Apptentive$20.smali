.class final Lcom/apptentive/android/sdk/Apptentive$20;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->canShowMessageCenter(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V
    .locals 0

    .line 971
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 0

    .line 974
    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->canShowMessageCenterInternal(Lcom/apptentive/android/sdk/conversation/Conversation;)Z

    move-result p1

    return p1
.end method
