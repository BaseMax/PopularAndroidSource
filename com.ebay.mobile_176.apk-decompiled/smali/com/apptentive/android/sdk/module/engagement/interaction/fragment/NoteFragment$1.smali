.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;
.super Ljava/lang/Object;
.source "NoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

.field final synthetic val$buttonAction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->val$buttonAction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    iput p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 108
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "action_id"

    .line 110
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->val$buttonAction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "label"

    .line 111
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->val$buttonAction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "position"

    .line 112
    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->val$position:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating Event data object."

    const/4 v2, 0x0

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    const-string v1, "dismiss"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->transit()V

    return-void
.end method
