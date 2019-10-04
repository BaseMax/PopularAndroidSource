.class final Lcom/apptentive/android/sdk/Apptentive$27;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->engage(Landroid/content/Context;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customData:Ljava/util/Map;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$extendedData:[Lcom/apptentive/android/sdk/model/ExtendedData;

.field final synthetic val$preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;Ljava/util/Map;Landroid/content/Context;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    .locals 0

    .line 1341
    iput-object p3, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;

    iput-object p5, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$customData:Ljava/util/Map;

    iput-object p6, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$extendedData:[Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>(Lcom/apptentive/android/sdk/Apptentive$BooleanCallback;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 6

    .line 1344
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$event:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/Apptentive;->access$000(Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$preInteractionListener:Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;

    iget-object v2, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$event:Ljava/lang/String;

    iget-object v3, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$customData:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lcom/apptentive/android/sdk/Apptentive$OnPreInteractionListener;->shouldEngageInteraction(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    const-string v2, "Engagement callback allows interaction for event \'%s\': %b"

    const/4 v3, 0x2

    .line 1349
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$event:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    return v1

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$customData:Ljava/util/Map;

    iget-object v3, p0, Lcom/apptentive/android/sdk/Apptentive$27;->val$extendedData:[Lcom/apptentive/android/sdk/model/ExtendedData;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/apptentive/android/sdk/Apptentive;->access$100(Landroid/content/Context;Lcom/apptentive/android/sdk/conversation/Conversation;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)Z

    move-result p1

    return p1
.end method
