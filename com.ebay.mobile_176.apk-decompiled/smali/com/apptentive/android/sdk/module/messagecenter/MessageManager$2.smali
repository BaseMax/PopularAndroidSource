.class Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$2;
.super Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$1;)V

    return-void
.end method


# virtual methods
.method protected execute(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->notifyHostUnreadMessagesListeners(I)V

    return-void
.end method
