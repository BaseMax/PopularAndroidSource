.class public final Lcom/adyen/threeds2/internal/ui/c/f;
.super Lcom/adyen/threeds2/internal/ui/c/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/ui/c/f$c;,
        Lcom/adyen/threeds2/internal/ui/c/f$a;,
        Lcom/adyen/threeds2/internal/ui/c/f$d;,
        Lcom/adyen/threeds2/internal/ui/c/f$e;,
        Lcom/adyen/threeds2/internal/ui/c/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/ui/c/d<",
        "Lcom/adyen/threeds2/internal/a/a/b/o;",
        "Lcom/adyen/threeds2/internal/ui/b/d;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/ListView;

.field private final c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/c/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/c/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    .line 67
    sget p1, Lcom/adyen/threeds2/R$id;->selectChallengeView:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->setId(I)V

    .line 69
    sget p1, Lcom/adyen/threeds2/R$id;->listView_selectInfoItems:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    .line 70
    sget p1, Lcom/adyen/threeds2/R$id;->button_next:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->c:Landroid/widget/Button;

    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adyen/threeds2/internal/a/a/b/p;

    .line 192
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Lcom/adyen/threeds2/internal/a/a/b/o;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/o;->n()Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->b()V

    const/4 v0, 0x0

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/p;

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    .line 164
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/adyen/threeds2/internal/ui/c/f$1;

    invoke-direct {v1, p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f$1;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private c(Lcom/adyen/threeds2/internal/a/a/b/o;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/o;->n()Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->b()V

    .line 178
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/adyen/threeds2/internal/ui/c/f$2;

    invoke-direct {v1, p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f$2;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setState(Lcom/adyen/threeds2/internal/ui/c/f$c;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->b()V

    .line 200
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/c/f$c;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/p;

    .line 201
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->c()V

    .line 204
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/p;

    .line 205
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/c/f;->d(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/adyen/threeds2/internal/a/a/b/o;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/adyen/threeds2/internal/ui/c/f$3;->a:[I

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/o;->a()Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x378

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/o;->a()Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->c(Lcom/adyen/threeds2/internal/a/a/b/o;)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->b(Lcom/adyen/threeds2/internal/a/a/b/o;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/o;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/adyen/threeds2/internal/a/a/b/p;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected synthetic b(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/o;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/o;)V

    return-void
.end method

.method b(Lcom/adyen/threeds2/internal/a/a/b/p;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 152
    sget v3, Lcom/adyen/threeds2/R$id;->checkBox_selected:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 153
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method c(Lcom/adyen/threeds2/internal/a/a/b/p;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(Lcom/adyen/threeds2/internal/a/a/b/p;)V
    .locals 3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 142
    sget v2, Lcom/adyen/threeds2/R$id;->checkBox_selected:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 143
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getChallengeLayoutId()I
    .locals 1

    .line 103
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_select:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->onClick(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->c:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/f;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/ui/b/d;

    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/ui/b/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/adyen/threeds2/internal/ui/c/f$c;

    .line 85
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/c/f;->setState(Lcom/adyen/threeds2/internal/ui/c/f$c;)V

    .line 87
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/c/d;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/adyen/threeds2/internal/ui/c/f$c;

    invoke-direct {v1, v0}, Lcom/adyen/threeds2/internal/ui/c/f$c;-><init>(Landroid/os/Parcelable;)V

    .line 77
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f;->a:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/adyen/threeds2/internal/ui/c/f$c;->a(Ljava/util/Set;)V

    return-object v1
.end method
