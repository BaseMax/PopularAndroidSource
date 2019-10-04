.class public Lcab/snapp/passenger/units/messages/MessagesView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/messages/MessagesView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/messages/MessagesView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/messages/MessagesView_ViewBinding;-><init>(Lcab/snapp/passenger/units/messages/MessagesView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/messages/MessagesView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/MessagesView_ViewBinding;->target:Lcab/snapp/passenger/units/messages/MessagesView;

    .line 27
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a03a7

    const-string v2, "field \'viewMessagesRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03a6

    const-string v2, "field \'viewMessagesEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesEmpty:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView_ViewBinding;->target:Lcab/snapp/passenger/units/messages/MessagesView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcab/snapp/passenger/units/messages/MessagesView_ViewBinding;->target:Lcab/snapp/passenger/units/messages/MessagesView;

    .line 38
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesEmpty:Landroid/widget/LinearLayout;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
