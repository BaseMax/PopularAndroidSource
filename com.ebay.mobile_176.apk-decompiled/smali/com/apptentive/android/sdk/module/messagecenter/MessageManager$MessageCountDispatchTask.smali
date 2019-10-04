.class abstract Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MessageCountDispatchTask"
.end annotation


# instance fields
.field private messageCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$1;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 656
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;->messageCount:I

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;->execute(I)V

    return-void
.end method

.method protected abstract execute(I)V
.end method

.method setMessageCount(I)Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;
    .locals 0

    .line 660
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask;->messageCount:I

    return-object p0
.end method
