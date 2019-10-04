.class public final Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Messages;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/g/a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Messages;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 161
    iget-object p3, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->b:Lcab/snapp/passenger/g/a;

    if-eqz p3, :cond_0

    .line 163
    iget-object p1, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$95H24bW3iAU-2n0wC_bSLjJ7w7c(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Messages;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getItemAtPosition(I)Lcab/snapp/passenger/data/models/Messages;
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/Messages;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->onBindViewHolder(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;I)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/Messages;

    .line 120
    iget-object v1, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDate:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Messages;->getMessageDate()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Lcab/snapp/c/a/b;->getJalaliTimeDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Messages;->getMessageDesc()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u202b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDesc:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u202a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDesc:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    :goto_0
    iget-object v2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Messages;->getMessageSeen()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDate:Landroid/widget/TextView;

    iget-object v2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060098

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 148
    :cond_1
    iget-object v1, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesDate:Landroid/widget/TextView;

    iget-object v2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003a

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_1
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Messages;->getMessageUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Messages;->getMessageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    iget-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 157
    iget-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_2
    iget-object v0, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    new-instance v1, Lcab/snapp/passenger/units/messages/adapter/-$$Lambda$MessagesAdapter$95H24bW3iAU-2n0wC_bSLjJ7w7c;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/passenger/units/messages/adapter/-$$Lambda$MessagesAdapter$95H24bW3iAU-2n0wC_bSLjJ7w7c;-><init>(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 169
    :cond_3
    iget-object p2, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 171
    iget-object p1, p1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;->cellMessagesMoreBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;
    .locals 3

    .line 111
    new-instance p2, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter$ViewHolder;-><init>(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setItemClickListener(Lcab/snapp/passenger/g/a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->b:Lcab/snapp/passenger/g/a;

    return-void
.end method
