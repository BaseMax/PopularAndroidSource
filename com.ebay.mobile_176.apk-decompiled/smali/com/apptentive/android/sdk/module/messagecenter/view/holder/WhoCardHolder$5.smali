.class Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder$5;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "WhoCardHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;->bindView(Landroidx/recyclerview/widget/RecyclerView;Lcom/apptentive/android/sdk/module/messagecenter/model/WhoCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder$5;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder$5;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
