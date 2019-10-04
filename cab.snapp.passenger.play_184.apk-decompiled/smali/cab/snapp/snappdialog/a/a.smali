.class public final Lcab/snapp/snappdialog/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/snappdialog/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcab/snapp/snappdialog/a/a;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcab/snapp/snappdialog/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/a;->onBindViewHolder(Lcab/snapp/snappdialog/a/a$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/snappdialog/a/a$a;I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcab/snapp/snappdialog/a/a$a;->a(Lcab/snapp/snappdialog/a/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/a$a;
    .locals 2

    .line 50
    iget-object p2, p0, Lcab/snapp/snappdialog/a/a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcab/snapp/snappdialog/a$f;->list_item_bullet:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcab/snapp/snappdialog/a/a$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/snappdialog/a/a$a;-><init>(Lcab/snapp/snappdialog/a/a;Landroid/view/View;)V

    return-object p2
.end method

.method public final bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcab/snapp/snappdialog/a/a$a;

    invoke-virtual {p0, p1}, Lcab/snapp/snappdialog/a/a;->onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/a$a;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/a$a;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 77
    iget-object p1, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcab/snapp/snappdialog/a/a;->b:Ljava/util/List;

    :cond_0
    return-void
.end method
