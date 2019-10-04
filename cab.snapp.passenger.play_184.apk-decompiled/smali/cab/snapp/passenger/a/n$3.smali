.class final Lcab/snapp/passenger/a/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/a/n;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcab/snapp/passenger/a/n;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/n;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcab/snapp/passenger/a/n$3;->b:Lcab/snapp/passenger/a/n;

    iput-object p2, p0, Lcab/snapp/passenger/a/n$3;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 177
    iget-object p1, p0, Lcab/snapp/passenger/a/n$3;->b:Lcab/snapp/passenger/a/n;

    invoke-static {p1}, Lcab/snapp/passenger/a/n;->a(Lcab/snapp/passenger/a/n;)Lcab/snapp/passenger/a/n$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcab/snapp/passenger/a/n$3;->b:Lcab/snapp/passenger/a/n;

    invoke-static {p1}, Lcab/snapp/passenger/a/n;->a(Lcab/snapp/passenger/a/n;)Lcab/snapp/passenger/a/n$a;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/a/n$3;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/a/n$3;->b:Lcab/snapp/passenger/a/n;

    invoke-static {v1}, Lcab/snapp/passenger/a/n;->b(Lcab/snapp/passenger/a/n;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/a/n$3;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-interface {p1, v0, v1}, Lcab/snapp/passenger/a/n$a;->onItemClicked(ILcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V

    :cond_0
    return-void
.end method
