.class public final Lcab/snapp/passenger/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/b$a;,
        Lcab/snapp/passenger/a/b$d;,
        Lcab/snapp/passenger/a/b$b;,
        Lcab/snapp/passenger/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_HEADER:I = 0x0

.field public static final ITEM_TYPE_ITEM:I = 0x1

.field public static final ITEM_TYPE_LOADING:I = 0x2


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/b$a;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/a/b;->b:Lio/reactivex/j/b;

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/a/b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemClicks()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/a/b$a;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/a/b;->b:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcab/snapp/passenger/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 184
    iget-object v0, p0, Lcab/snapp/passenger/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/a/b$a;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/b$a;->getType()I

    move-result p1

    return p1
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/b$a;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/a/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/a/b$a;

    .line 141
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/a/b$a;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    instance-of v1, p1, Lcab/snapp/passenger/a/b$c;

    if-eqz v1, :cond_4

    .line 149
    check-cast p1, Lcab/snapp/passenger/a/b$c;

    .line 150
    invoke-virtual {p2}, Lcab/snapp/passenger/a/b$a;->getChargeHistoryInfo()Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v3

    iget-object v4, p1, Lcab/snapp/passenger/a/b$c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 160
    :cond_2
    iget-object v3, p1, Lcab/snapp/passenger/a/b$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p1, Lcab/snapp/passenger/a/b$c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 163
    iget-object v1, p1, Lcab/snapp/passenger/a/b$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getChargeAmount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lcab/snapp/c/j;->formatLong(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 168
    iget-object v4, p1, Lcab/snapp/passenger/a/b$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p1, Lcab/snapp/passenger/a/b$c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getPersianPaidDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p1, Lcab/snapp/passenger/a/b$c;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getPersianType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%s\u060c %s"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p1, Lcab/snapp/passenger/a/b$c;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1201c6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->getInvoiceCode()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0086

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    new-instance p2, Lcab/snapp/passenger/a/b$c;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/b$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0089

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    new-instance p2, Lcab/snapp/passenger/a/b$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/b$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0087

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 132
    new-instance p2, Lcab/snapp/passenger/a/b$d;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/b$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
