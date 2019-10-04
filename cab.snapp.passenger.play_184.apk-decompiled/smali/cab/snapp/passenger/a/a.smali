.class public final Lcab/snapp/passenger/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/a$a;,
        Lcab/snapp/passenger/a/a$b;
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
            "Lcab/snapp/passenger/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Lcab/snapp/passenger/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/passenger/g/b<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/a$a;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(J)V
    .locals 1

    .line 45
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/a;->setSelectedAmount(J)V

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->c:Lcab/snapp/passenger/g/b;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lcab/snapp/passenger/g/b;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/a$a;ILandroid/view/View;)V
    .locals 2

    .line 5199
    iget-wide v0, p1, Lcab/snapp/passenger/a/a$a;->a:J

    .line 105
    invoke-direct {p0, v0, v1}, Lcab/snapp/passenger/a/a;->a(J)V

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "ThirdAmount"

    goto :goto_0

    :cond_1
    const-string p1, "SecondAmount"

    goto :goto_0

    :cond_2
    const-string p1, "FirstAmount"

    .line 5237
    :goto_0
    new-instance p2, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p2}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string p3, "EnterAmount"

    .line 5238
    invoke-virtual {p2, p3, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    .line 5239
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 5240
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object p2

    const-string p3, "Charge"

    invoke-virtual {p2, p3, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public static synthetic lambda$k9XY7Ix6H0rJpn32dqg2KAJpZaw(Lcab/snapp/passenger/a/a;Lcab/snapp/passenger/a/a$a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/a;->a(Lcab/snapp/passenger/a/a$a;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

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
            "Lcab/snapp/passenger/a/a$a;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSelectedAmount()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcab/snapp/passenger/a/a;->b:J

    return-wide v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/a/a$a;

    .line 99
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcab/snapp/passenger/a/-$$Lambda$a$k9XY7Ix6H0rJpn32dqg2KAJpZaw;

    invoke-direct {v3, p0, v0, p2}, Lcab/snapp/passenger/a/-$$Lambda$a$k9XY7Ix6H0rJpn32dqg2KAJpZaw;-><init>(Lcab/snapp/passenger/a/a;Lcab/snapp/passenger/a/a$a;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    check-cast p1, Lcab/snapp/passenger/a/a$b;

    .line 1199
    iget-wide v2, v0, Lcab/snapp/passenger/a/a$a;->a:J

    .line 110
    iget-object p2, p1, Lcab/snapp/passenger/a/a$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v3}, Lcab/snapp/c/j;->formatLong(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-wide v4, p0, Lcab/snapp/passenger/a/a;->b:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    .line 113
    iget-object p2, p1, Lcab/snapp/passenger/a/a$b;->c:Landroid/view/View;

    const v0, 0x7f080228

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object p2, p1, Lcab/snapp/passenger/a/a$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f06012a

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 115
    iget-object p1, p1, Lcab/snapp/passenger/a/a$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void

    .line 117
    :cond_1
    iget-object p2, p1, Lcab/snapp/passenger/a/a$b;->c:Landroid/view/View;

    const v0, 0x7f0801e0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object p2, p1, Lcab/snapp/passenger/a/a$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f060095

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 119
    iget-object p1, p1, Lcab/snapp/passenger/a/a$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance p2, Lcab/snapp/passenger/a/a$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final selectOperator(J)V
    .locals 7

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/a/a$a;

    .line 2199
    iget-wide v2, v1, Lcab/snapp/passenger/a/a$a;->a:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 3199
    iget-wide v2, v1, Lcab/snapp/passenger/a/a$a;->a:J

    .line 140
    iget-wide v4, p0, Lcab/snapp/passenger/a/a;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4199
    iget-wide v1, v1, Lcab/snapp/passenger/a/a$a;->a:J

    .line 141
    invoke-direct {p0, v1, v2}, Lcab/snapp/passenger/a/a;->a(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lcab/snapp/passenger/a/a;->a:Ljava/util/ArrayList;

    .line 1209
    new-instance v3, Lcab/snapp/passenger/a/a$a;

    invoke-direct {v3}, Lcab/snapp/passenger/a/a$a;-><init>()V

    .line 1210
    iput-wide v0, v3, Lcab/snapp/passenger/a/a$a;->a:J

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final setOnAmountSelectedListener(Lcab/snapp/passenger/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/g/b<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcab/snapp/passenger/a/a;->c:Lcab/snapp/passenger/g/b;

    return-void
.end method

.method public final setSelectedAmount(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcab/snapp/passenger/a/a;->b:J

    .line 42
    invoke-virtual {p0}, Lcab/snapp/passenger/a/a;->notifyDataSetChanged()V

    return-void
.end method
