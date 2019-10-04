.class Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCenterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUnreadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p1, [Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->doInBackground([Lcom/apptentive/android/sdk/model/ApptentiveMessage;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/apptentive/android/sdk/model/ApptentiveMessage;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 258
    aget-object p1, p1, v0

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setRead(Z)V

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message_id"

    .line 262
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message_type"

    .line 263
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getMessageType()Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 265
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-static {v2, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;Ljava/lang/Exception;)V

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    iget-object v1, v1, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->fragment:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;

    const-string v2, "read"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    const-string/jumbo p1, "update message"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->access$100(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;->access$100(Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask;->message:Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
