.class public final Lcab/snapp/snappdialog/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/snappdialog/a/c$a;",
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
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcab/snapp/snappdialog/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcab/snapp/snappdialog/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcab/snapp/snappdialog/b/d;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    iput-object p1, p0, Lcab/snapp/snappdialog/a/c;->a:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    .line 66
    iput p3, p0, Lcab/snapp/snappdialog/a/c;->e:I

    .line 67
    iput-object p4, p0, Lcab/snapp/snappdialog/a/c;->f:Lcab/snapp/snappdialog/b/d;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappdialog/a/c;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/a/c;Landroid/widget/RadioButton;I)V
    .locals 4

    .line 1090
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1094
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 1098
    iget-object v2, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1100
    iget-object v2, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1104
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1105
    iget-object v2, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1108
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c;->f:Lcab/snapp/snappdialog/b/d;

    if-eqz p1, :cond_2

    .line 1110
    iget-object p0, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcab/snapp/snappdialog/b/d;->onSingleItemSelected(ILjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

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
    check-cast p1, Lcab/snapp/snappdialog/a/c$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/c;->onBindViewHolder(Lcab/snapp/snappdialog/a/c$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/snappdialog/a/c$a;I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->a(Lcab/snapp/snappdialog/a/c$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/snappdialog/a/c;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->c(Lcab/snapp/snappdialog/a/c$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/a/c$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappdialog/a/c$1;-><init>(Lcab/snapp/snappdialog/a/c;Lcab/snapp/snappdialog/a/c$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->d:Ljava/util/List;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->c(Lcab/snapp/snappdialog/a/c$a;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/a/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/snappdialog/a/c$2;-><init>(Lcab/snapp/snappdialog/a/c;Lcab/snapp/snappdialog/a/c$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget v0, p0, Lcab/snapp/snappdialog/a/c;->e:I

    if-ne v0, p2, :cond_1

    .line 153
    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappdialog/a/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/c$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/snappdialog/a/c$a;
    .locals 2

    .line 120
    iget-object p2, p0, Lcab/snapp/snappdialog/a/c;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcab/snapp/snappdialog/a$f;->list_item_radio_button:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 121
    new-instance p2, Lcab/snapp/snappdialog/a/c$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/snappdialog/a/c$a;-><init>(Lcab/snapp/snappdialog/a/c;Landroid/view/View;)V

    return-object p2
.end method

.method public final bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/snappdialog/a/c$a;

    invoke-virtual {p0, p1}, Lcab/snapp/snappdialog/a/c;->onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/c$a;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Lcab/snapp/snappdialog/a/c$a;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 170
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 178
    iput-object v0, p0, Lcab/snapp/snappdialog/a/c;->c:Ljava/util/List;

    .line 181
    :cond_1
    iput-object v0, p0, Lcab/snapp/snappdialog/a/c;->f:Lcab/snapp/snappdialog/b/d;

    .line 183
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c;->d:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 191
    iput-object v0, p0, Lcab/snapp/snappdialog/a/c;->d:Ljava/util/List;

    :cond_3
    return-void
.end method
