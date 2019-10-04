.class public final Lcab/snapp/passenger/a/l;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/l$a;,
        Lcab/snapp/passenger/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/l$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcab/snapp/passenger/a/l$a;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILcab/snapp/passenger/a/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;I",
            "Lcab/snapp/passenger/a/l$a;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcab/snapp/passenger/a/l;->e:I

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/a/l;->a:Ljava/util/List;

    .line 53
    iput p2, p0, Lcab/snapp/passenger/a/l;->d:I

    .line 54
    iput-object p3, p0, Lcab/snapp/passenger/a/l;->c:Lcab/snapp/passenger/a/l$a;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/a/l;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcab/snapp/passenger/a/l;->d:I

    return p1
.end method

.method static synthetic a(Lcab/snapp/passenger/a/l;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/a/l;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/a/l;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcab/snapp/passenger/a/l;->e:I

    return p1
.end method

.method static synthetic b(Lcab/snapp/passenger/a/l;)Lcab/snapp/passenger/a/l$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/a/l;->c:Lcab/snapp/passenger/a/l$a;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/a/l;)I
    .locals 0

    .line 31
    iget p0, p0, Lcab/snapp/passenger/a/l;->d:I

    return p0
.end method

.method static synthetic d(Lcab/snapp/passenger/a/l;)I
    .locals 0

    .line 31
    iget p0, p0, Lcab/snapp/passenger/a/l;->e:I

    return p0
.end method

.method static synthetic e(Lcab/snapp/passenger/a/l;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/a/l;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcab/snapp/passenger/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcab/snapp/passenger/a/l$b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/l;->onBindViewHolder(Lcab/snapp/passenger/a/l$b;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/l$b;I)V
    .locals 0

    .line 73
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/a/l$b;->bindView(I)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/l;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/l$b;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/l$b;
    .locals 3

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/a/l;->b:Landroid/content/Context;

    .line 67
    new-instance p2, Lcab/snapp/passenger/a/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/l$b;-><init>(Lcab/snapp/passenger/a/l;Landroid/view/View;)V

    return-object p2
.end method
