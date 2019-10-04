.class synthetic Lcom/apptentive/android/sdk/conversation/ConversationManager$11;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 842
    invoke-static {}, Lcom/apptentive/android/sdk/conversation/ConversationState;->values()[Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LEGACY_PENDING:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->ANONYMOUS:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationManager$11;->$SwitchMap$com$apptentive$android$sdk$conversation$ConversationState:[I

    sget-object v1, Lcom/apptentive/android/sdk/conversation/ConversationState;->LOGGED_IN:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
