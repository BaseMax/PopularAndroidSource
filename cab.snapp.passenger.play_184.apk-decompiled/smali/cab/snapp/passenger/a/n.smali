.class public final Lcab/snapp/passenger/a/n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/n$b;,
        Lcab/snapp/passenger/a/n$c;,
        Lcab/snapp/passenger/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcab/snapp/passenger/a/n$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcab/snapp/passenger/a/n$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;",
            "Lcab/snapp/passenger/a/n$a;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x3e9

    .line 28
    iput v0, p0, Lcab/snapp/passenger/a/n;->a:I

    const/16 v0, 0x3ea

    .line 33
    iput v0, p0, Lcab/snapp/passenger/a/n;->b:I

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcab/snapp/passenger/a/n;->d:Lcab/snapp/passenger/a/n$a;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/a/n;)Lcab/snapp/passenger/a/n$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/passenger/a/n;->d:Lcab/snapp/passenger/a/n$a;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/a/n;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getFirstSectionIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 206
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getFirstSectionIndex()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSecondSectionIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x3ea

    return p1
.end method

.method public final getSecondSectionIndex()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getSnappBoxSupportCallIndex()I
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSnappSupportCallIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getSnappSupportCallIndex()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSecondSectionIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getFirstSectionIndex()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 131
    check-cast p1, Lcab/snapp/passenger/a/n$b;

    const p2, 0x7f1202a6

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/a/n$b;->a(I)V

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSecondSectionIndex()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 135
    check-cast p1, Lcab/snapp/passenger/a/n$b;

    const p2, 0x7f12007a

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/a/n$b;->a(I)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSnappSupportCallIndex()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 139
    check-cast p1, Lcab/snapp/passenger/a/n$c;

    const p2, 0x7f120045

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/a/n$c;->a(I)V

    .line 140
    invoke-static {p1}, Lcab/snapp/passenger/a/n$c;->a(Lcab/snapp/passenger/a/n$c;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/a/n$1;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/a/n$1;-><init>(Lcab/snapp/passenger/a/n;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Lcab/snapp/passenger/a/n;->getSnappBoxSupportCallIndex()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 153
    check-cast p1, Lcab/snapp/passenger/a/n$c;

    const p2, 0x7f120046

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/a/n$c;->a(I)V

    .line 154
    invoke-static {p1}, Lcab/snapp/passenger/a/n$c;->a(Lcab/snapp/passenger/a/n$c;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/a/n$2;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/a/n$2;-><init>(Lcab/snapp/passenger/a/n;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 167
    :cond_3
    iget-object p2, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 171
    :cond_4
    iget-object p2, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 172
    :goto_0
    move-object v2, p1

    check-cast v2, Lcab/snapp/passenger/a/n$c;

    iget-object v3, p0, Lcab/snapp/passenger/a/n;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1277
    iget-object v3, v2, Lcab/snapp/passenger/a/n$c;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_6

    .line 1280
    iget-object p2, v2, Lcab/snapp/passenger/a/n$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1284
    :cond_6
    iget-object p2, v2, Lcab/snapp/passenger/a/n$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_1
    invoke-static {v2}, Lcab/snapp/passenger/a/n$c;->a(Lcab/snapp/passenger/a/n$c;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcab/snapp/passenger/a/n$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/a/n$3;-><init>(Lcab/snapp/passenger/a/n;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3ea

    if-ne p2, v1, :cond_0

    .line 118
    new-instance p2, Lcab/snapp/passenger/a/n$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d009b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/n$b;-><init>(Lcab/snapp/passenger/a/n;Landroid/view/View;)V

    return-object p2

    .line 122
    :cond_0
    new-instance p2, Lcab/snapp/passenger/a/n$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d009c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/n$c;-><init>(Lcab/snapp/passenger/a/n;Landroid/view/View;)V

    return-object p2
.end method
