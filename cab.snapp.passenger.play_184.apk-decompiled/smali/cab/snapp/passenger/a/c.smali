.class public final Lcab/snapp/passenger/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/c$a;,
        Lcab/snapp/passenger/a/c$b;
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
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/passenger/g/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/c$a;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    iput-object p1, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic a(ILcab/snapp/passenger/a/c$a;Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p3, p0, Lcab/snapp/passenger/a/c;->b:Lcab/snapp/passenger/g/b;

    if-eqz p3, :cond_0

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcab/snapp/passenger/g/b;->run(Ljava/lang/Object;)V

    .line 5234
    :cond_0
    iget-object p1, p2, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 130
    invoke-direct {p0, p1}, Lcab/snapp/passenger/a/c;->a(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    return-void
.end method

.method private a(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/a/c;->c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/a/c;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic lambda$lZBT_OdIwm8QT-F7ng5kXwcWE2k(Lcab/snapp/passenger/a/c;ILcab/snapp/passenger/a/c$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/c;->a(ILcab/snapp/passenger/a/c$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/c$a;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSelectedItem()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
    .locals 1

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/a/c$a;

    .line 121
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcab/snapp/passenger/a/-$$Lambda$c$lZBT_OdIwm8QT-F7ng5kXwcWE2k;

    invoke-direct {v2, p0, p2, v0}, Lcab/snapp/passenger/a/-$$Lambda$c$lZBT_OdIwm8QT-F7ng5kXwcWE2k;-><init>(Lcab/snapp/passenger/a/c;ILcab/snapp/passenger/a/c$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    check-cast p1, Lcab/snapp/passenger/a/c$b;

    .line 1234
    iget-object p2, v0, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    if-nez p2, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getInactiveUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 142
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/a/c;->c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    invoke-virtual {p2, v3}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v2

    iget-object p1, p1, Lcab/snapp/passenger/a/c$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 143
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v2, p0, Lcab/snapp/passenger/a/c;->c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    invoke-virtual {p2, v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/a/c$1;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/a/c$1;-><init>(Lcab/snapp/passenger/a/c;)V

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->into(Lcom/squareup/picasso/ac;)V

    :cond_4
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    new-instance p2, Lcab/snapp/passenger/a/c$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/c$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final selectOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcab/snapp/passenger/a/c;->a(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/a/c$a;

    .line 2234
    iget-object v2, v1, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 185
    invoke-virtual {p1, v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3234
    iget-object v2, v1, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 185
    iget-object v3, p0, Lcab/snapp/passenger/a/c;->c:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    invoke-virtual {v2, v3}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4234
    iget-object v1, v1, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 186
    invoke-direct {p0, v1}, Lcab/snapp/passenger/a/c;->a(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 173
    iget-object v1, p0, Lcab/snapp/passenger/a/c;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcab/snapp/passenger/a/c$a;->createOperatorItem(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)Lcab/snapp/passenger/a/c$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/a/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final setOnAmountSelectedListener(Lcab/snapp/passenger/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/g/b<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcab/snapp/passenger/a/c;->b:Lcab/snapp/passenger/g/b;

    return-void
.end method
