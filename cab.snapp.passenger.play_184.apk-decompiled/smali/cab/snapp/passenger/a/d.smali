.class public final Lcab/snapp/passenger/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/d$a;,
        Lcab/snapp/passenger/a/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/a/d$a;",
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
            "Lcab/snapp/passenger/a/d$a;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/a/d;->b:Lio/reactivex/j/b;

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/a/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic a(ILcab/snapp/passenger/a/d$a;Landroid/view/View;)V
    .locals 1

    .line 1213
    new-instance p3, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p3}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Recently"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapOnRecently"

    .line 1214
    invoke-virtual {p3, v0, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string p3, "EnterPhoneNumber"

    .line 1215
    invoke-virtual {p1, p3}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    .line 1216
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1217
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object p3

    const-string v0, "Charge"

    invoke-virtual {p3, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 119
    iget-object p1, p0, Lcab/snapp/passenger/a/d;->b:Lio/reactivex/j/b;

    invoke-virtual {p1, p2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$p2ZIdtDAZC79WOdrbo8dc0SAVpU(Lcab/snapp/passenger/a/d;ILcab/snapp/passenger/a/d$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/d;->a(ILcab/snapp/passenger/a/d$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcab/snapp/passenger/a/d;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcab/snapp/passenger/a/d$a;->createItem(Ljava/lang/String;)Lcab/snapp/passenger/a/d$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/a/d;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemClicks()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/a/d$a;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/a/d;->b:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/a/d;->a:Ljava/util/ArrayList;

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
            "Lcab/snapp/passenger/a/d$a;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/a/d;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcab/snapp/passenger/a/d$b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/d;->onBindViewHolder(Lcab/snapp/passenger/a/d$b;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/d$b;I)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcab/snapp/passenger/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/a/d$a;

    .line 112
    iget-object v1, p1, Lcab/snapp/passenger/a/d$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p1, Lcab/snapp/passenger/a/d$b;->itemView:Landroid/view/View;

    new-instance v2, Lcab/snapp/passenger/a/-$$Lambda$d$p2ZIdtDAZC79WOdrbo8dc0SAVpU;

    invoke-direct {v2, p0, p2, v0}, Lcab/snapp/passenger/a/-$$Lambda$d$p2ZIdtDAZC79WOdrbo8dc0SAVpU;-><init>(Lcab/snapp/passenger/a/d;ILcab/snapp/passenger/a/d$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v0}, Lcab/snapp/passenger/a/d$a;->getMobileNumber()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 125
    :cond_1
    iget-object p1, p1, Lcab/snapp/passenger/a/d$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/d$b;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/d$b;
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0052

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance p2, Lcab/snapp/passenger/a/d$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/d$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
