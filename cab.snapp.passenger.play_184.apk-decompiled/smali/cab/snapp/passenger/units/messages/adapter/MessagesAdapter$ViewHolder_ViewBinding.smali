.class public Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    .line 22
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a00ad

    const-string v2, "field \'messageContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->messageContainer:Landroid/widget/FrameLayout;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00c5

    const-string v2, "field \'cellMessagesDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDate:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00c6

    const-string v2, "field \'cellMessagesDesc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDesc:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00c7

    const-string v2, "field \'cellMessagesMoreBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    .line 35
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->messageContainer:Landroid/widget/FrameLayout;

    .line 36
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDate:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDesc:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
