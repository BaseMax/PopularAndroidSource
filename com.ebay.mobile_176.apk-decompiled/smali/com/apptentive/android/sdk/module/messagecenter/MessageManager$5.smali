.class Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->notifyHostUnreadMessagesListeners(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

.field final synthetic val$listener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

.field final synthetic val$unreadMessages:I


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;I)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

    iput p3, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;->val$unreadMessages:I

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;->val$listener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

    iget v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$5;->val$unreadMessages:I

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;->onUnreadMessageCountChanged(I)V

    return-void
.end method
