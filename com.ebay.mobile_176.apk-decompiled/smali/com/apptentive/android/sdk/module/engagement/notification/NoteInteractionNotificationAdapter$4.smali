.class Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "NoteInteractionNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;->actionDelete(Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lorg/json/JSONObject;

.field final synthetic val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;Landroid/content/Context;Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;Lorg/json/JSONObject;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->this$0:Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    iput-object p4, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    const-string v2, "cancel"

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$4;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->engageInternal(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
