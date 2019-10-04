.class abstract Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MessageDispatchTask"
.end annotation


# instance fields
.field private message:Lcom/apptentive/android/sdk/model/CompoundMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$1;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    const/4 v0, 0x0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;->message:Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;->execute(Lcom/apptentive/android/sdk/model/CompoundMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;->message:Lcom/apptentive/android/sdk/model/CompoundMessage;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;->message:Lcom/apptentive/android/sdk/model/CompoundMessage;

    throw v1
.end method

.method protected abstract execute(Lcom/apptentive/android/sdk/model/CompoundMessage;)V
.end method

.method setMessage(Lcom/apptentive/android/sdk/model/CompoundMessage;)Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask;->message:Lcom/apptentive/android/sdk/model/CompoundMessage;

    return-object p0
.end method
