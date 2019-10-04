.class public Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

.field cellMessagesDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c5
    .end annotation
.end field

.field cellMessagesDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c6
    .end annotation
.end field

.field cellMessagesMoreBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c7
    .end annotation
.end field

.field messageContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ad
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;Landroid/view/View;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

    .line 228
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 229
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
