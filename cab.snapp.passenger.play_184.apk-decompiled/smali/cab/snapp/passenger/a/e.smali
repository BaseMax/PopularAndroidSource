.class public final Lcab/snapp/passenger/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/e$a;,
        Lcab/snapp/passenger/a/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/a/e$a;",
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
            "Lcab/snapp/passenger/a/e$a;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/a/e;->b:Lio/reactivex/j/b;

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/a/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/e$a;ILandroid/view/View;)V
    .locals 0

    .line 115
    iget-object p3, p0, Lcab/snapp/passenger/a/e;->b:Lio/reactivex/j/b;

    invoke-virtual {p3, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 1207
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Product"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "TapOnProductType"

    .line 1208
    invoke-virtual {p1, p3, p2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string p2, "EnterAmount"

    .line 1209
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    .line 1210
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1211
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object p2

    const-string p3, "Charge"

    invoke-virtual {p2, p3, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public static synthetic lambda$FUsrPB1HCq2kclX3UkadhBM0cIs(Lcab/snapp/passenger/a/e;Lcab/snapp/passenger/a/e$a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/e;->a(Lcab/snapp/passenger/a/e$a;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/charge/ChargePackage;

    .line 134
    iget-object v1, p0, Lcab/snapp/passenger/a/e;->a:Ljava/util/ArrayList;

    .line 1193
    new-instance v2, Lcab/snapp/passenger/a/e$a;

    invoke-direct {v2}, Lcab/snapp/passenger/a/e$a;-><init>()V

    .line 1194
    iput-object v0, v2, Lcab/snapp/passenger/a/e$a;->a:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemClicks()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/a/e$a;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/a/e;->b:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/a/e;->a:Ljava/util/ArrayList;

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
            "Lcab/snapp/passenger/a/e$a;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/a/e;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcab/snapp/passenger/a/e$b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/e;->onBindViewHolder(Lcab/snapp/passenger/a/e$b;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/e$b;I)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/a/e$a;

    .line 109
    iget-object v1, p1, Lcab/snapp/passenger/a/e$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v1, p1, Lcab/snapp/passenger/a/e$b;->itemView:Landroid/view/View;

    new-instance v2, Lcab/snapp/passenger/a/-$$Lambda$e$FUsrPB1HCq2kclX3UkadhBM0cIs;

    invoke-direct {v2, p0, v0, p2}, Lcab/snapp/passenger/a/-$$Lambda$e$FUsrPB1HCq2kclX3UkadhBM0cIs;-><init>(Lcab/snapp/passenger/a/e;Lcab/snapp/passenger/a/e$a;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v0}, Lcab/snapp/passenger/a/e$a;->getChargePackage()Lcab/snapp/passenger/data/models/charge/ChargePackage;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object p1, p1, Lcab/snapp/passenger/a/e$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getPersianType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/e;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/e$b;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/e$b;
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    new-instance p2, Lcab/snapp/passenger/a/e$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/e$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
