.class Lcom/apptentive/android/sdk/conversation/ConversationManager$7;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/conversation/ConversationManager;->requestLoggedInConversation(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/conversation/ConversationManager;Ljava/lang/String;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$7;->this$0:Lcom/apptentive/android/sdk/conversation/ConversationManager;

    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$7;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Z
    .locals 1

    .line 828
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationManager$7;->val$userId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
