.class public final Lcab/snapp/passenger/units/main/a/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/main/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/units/main/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/units/main/a/e$e;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcab/snapp/passenger/units/main/a/e$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;",
            "Lcab/snapp/passenger/units/main/a/e$e;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/f;->a:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcab/snapp/passenger/units/main/a/f;->b:Lcab/snapp/passenger/units/main/a/e$e;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/a/f;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/f;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/main/a/f;)Lcab/snapp/passenger/units/main/a/e$e;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/f;->b:Lcab/snapp/passenger/units/main/a/e$e;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/passenger/units/main/a/f$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/main/a/f;->onBindViewHolder(Lcab/snapp/passenger/units/main/a/f$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/units/main/a/f$a;I)V
    .locals 0

    .line 48
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/main/a/f$a;->bindView(I)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/main/a/f;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/main/a/f$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/main/a/f$a;
    .locals 3

    .line 42
    new-instance p2, Lcab/snapp/passenger/units/main/a/f$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/main/a/f$a;-><init>(Lcab/snapp/passenger/units/main/a/f;Landroid/view/View;)V

    return-object p2
.end method
