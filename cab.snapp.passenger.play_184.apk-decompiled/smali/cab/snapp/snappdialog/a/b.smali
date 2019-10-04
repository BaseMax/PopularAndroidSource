.class public final Lcab/snapp/snappdialog/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/snappdialog/a/b$a;",
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

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcab/snapp/snappdialog/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcab/snapp/snappdialog/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcab/snapp/snappdialog/b/c;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    iput-object p1, p0, Lcab/snapp/snappdialog/a/b;->a:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    .line 76
    iput p3, p0, Lcab/snapp/snappdialog/a/b;->g:I

    .line 77
    iput-object p4, p0, Lcab/snapp/snappdialog/a/b;->h:Lcab/snapp/snappdialog/b/c;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b;->c:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b;->d:Ljava/util/List;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b;->e:Ljava/util/List;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/snappdialog/a/b;)Lcab/snapp/snappdialog/b/c;
    .locals 0

    .line 21
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b;->h:Lcab/snapp/snappdialog/b/c;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/snappdialog/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/b;->onBindViewHolder(Lcab/snapp/snappdialog/a/b$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/snappdialog/a/b$a;I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/snappdialog/a/b;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->c(Lcab/snapp/snappdialog/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/a/b$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappdialog/a/b$1;-><init>(Lcab/snapp/snappdialog/a/b;Lcab/snapp/snappdialog/a/b$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->f:Ljava/util/List;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->c(Lcab/snapp/snappdialog/a/b$a;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/a/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/snappdialog/a/b$2;-><init>(Lcab/snapp/snappdialog/a/b;Lcab/snapp/snappdialog/a/b$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    iget-object v0, p0, Lcab/snapp/snappdialog/a/b;->e:Ljava/util/List;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget v0, p0, Lcab/snapp/snappdialog/a/b;->g:I

    if-ne v0, p2, :cond_1

    .line 172
    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/b$a;
    .locals 2

    .line 96
    iget-object p2, p0, Lcab/snapp/snappdialog/a/b;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcab/snapp/snappdialog/a$f;->list_item_checkbox:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lcab/snapp/snappdialog/a/b$a;

    invoke-direct {p2, p0, p1, v1}, Lcab/snapp/snappdialog/a/b$a;-><init>(Lcab/snapp/snappdialog/a/b;Landroid/view/View;B)V

    return-object p2
.end method

.method public final bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/snappdialog/a/b$a;

    invoke-virtual {p0, p1}, Lcab/snapp/snappdialog/a/b;->onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/b$a;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/b$a;)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 189
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 192
    iput-object v0, p0, Lcab/snapp/snappdialog/a/b;->c:Ljava/util/List;

    .line 194
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 197
    iput-object v0, p0, Lcab/snapp/snappdialog/a/b;->d:Ljava/util/List;

    .line 199
    :cond_1
    iput-object v0, p0, Lcab/snapp/snappdialog/a/b;->h:Lcab/snapp/snappdialog/b/c;

    .line 200
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->e:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 208
    iput-object v0, p0, Lcab/snapp/snappdialog/a/b;->e:Ljava/util/List;

    .line 210
    :cond_3
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->f:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 214
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 217
    :cond_4
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 218
    iput-object v0, p0, Lcab/snapp/snappdialog/a/b;->f:Ljava/util/List;

    :cond_5
    return-void
.end method
