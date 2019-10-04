.class public Lb/x/w;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$a;
.implements Landroidx/preference/PreferenceGroup$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/x/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lb/x/B;",
        ">;",
        "Landroidx/preference/Preference$a;",
        "Landroidx/preference/PreferenceGroup$b;"
    }
.end annotation


# instance fields
.field public c:Landroidx/preference/PreferenceGroup;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/x/w$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lb/x/w$a;

.field public h:Landroid/os/Handler;

.field public i:Lb/x/b;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lb/x/w;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 3
    new-instance v0, Lb/x/w$a;

    invoke-direct {v0}, Lb/x/w$a;-><init>()V

    iput-object v0, p0, Lb/x/w;->g:Lb/x/w$a;

    .line 4
    new-instance v0, Lb/x/u;

    invoke-direct {v0, p0}, Lb/x/u;-><init>(Lb/x/w;)V

    iput-object v0, p0, Lb/x/w;->j:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    .line 6
    iput-object p2, p0, Lb/x/w;->h:Landroid/os/Handler;

    .line 7
    new-instance p2, Lb/x/b;

    invoke-direct {p2, p1, p0}, Lb/x/b;-><init>(Landroidx/preference/PreferenceGroup;Lb/x/w;)V

    iput-object p2, p0, Lb/x/w;->i:Lb/x/b;

    .line 8
    iget-object p1, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$a;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/x/w;->d:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/x/w;->e:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/x/w;->f:Ljava/util/List;

    .line 12
    iget-object p1, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    instance-of p2, p1, Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 13
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->Q()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Z)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lb/x/w;->e()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 15
    iget-object v0, p0, Lb/x/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lb/x/w;->f(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroidx/preference/Preference;Lb/x/w$a;)Lb/x/w$a;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lb/x/w$a;

    invoke-direct {p2}, Lb/x/w$a;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/x/w$a;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->n()I

    move-result v0

    iput v0, p2, Lb/x/w$a;->a:I

    .line 14
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()I

    move-result p1

    iput p1, p2, Lb/x/w$a;->b:I

    return-object p2
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 1

    .line 18
    iget-object p1, p0, Lb/x/w;->h:Landroid/os/Handler;

    iget-object v0, p0, Lb/x/w;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    iget-object p1, p0, Lb/x/w;->h:Landroid/os/Handler;

    iget-object v0, p0, Lb/x/w;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lb/x/B;I)V
    .locals 0

    .line 20
    invoke-virtual {p0, p2}, Lb/x/w;->f(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->a(Lb/x/B;)V

    return-void
.end method

.method public final a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->P()V

    .line 2
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->N()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->g(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v2}, Lb/x/w;->c(Landroidx/preference/Preference;)V

    .line 6
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 7
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 8
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->O()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {p0, p1, v3}, Lb/x/w;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 10
    :cond_0
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)I
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lb/x/w;->f(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lb/x/w;->g:Lb/x/w$a;

    invoke-virtual {p0, p1, v0}, Lb/x/w;->a(Landroidx/preference/Preference;Lb/x/w$a;)Lb/x/w$a;

    move-result-object p1

    iput-object p1, p0, Lb/x/w;->g:Lb/x/w$a;

    .line 7
    iget-object p1, p0, Lb/x/w;->f:Ljava/util/List;

    iget-object v0, p0, Lb/x/w;->g:Lb/x/w$a;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 8
    :cond_0
    iget-object p1, p0, Lb/x/w;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 9
    iget-object v0, p0, Lb/x/w;->f:Ljava/util/List;

    new-instance v1, Lb/x/w$a;

    iget-object v2, p0, Lb/x/w;->g:Lb/x/w$a;

    invoke-direct {v1, v2}, Lb/x/w$a;-><init>(Lb/x/w$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/x/w;->b(Landroid/view/ViewGroup;I)Lb/x/B;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lb/x/B;
    .locals 4

    .line 10
    iget-object v0, p0, Lb/x/w;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/x/w$a;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/x/I;->BackgroundStyle:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 13
    sget v2, Lb/x/I;->BackgroundStyle_android_selectableItemBackground:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget v1, p2, Lb/x/w$a;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 19
    invoke-static {p1, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x1020018

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 21
    iget p2, p2, Lb/x/w$a;->b:I

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 23
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    :cond_3
    :goto_0
    new-instance p2, Lb/x/B;

    invoke-direct {p2, p1}, Lb/x/B;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lb/x/w;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lb/x/B;

    invoke-virtual {p0, p1, p2}, Lb/x/w;->a(Lb/x/B;I)V

    return-void
.end method

.method public final c(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lb/x/w;->a(Landroidx/preference/Preference;Lb/x/w$a;)Lb/x/w$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lb/x/w;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/x/w;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/x/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$a;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/x/w;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0, v1}, Lb/x/w;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 5
    iget-object v1, p0, Lb/x/w;->i:Lb/x/b;

    iget-object v2, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    .line 6
    invoke-virtual {v1, v2}, Lb/x/b;->b(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lb/x/w;->d:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lb/x/w;->d:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lb/x/w;->e:Ljava/util/List;

    .line 10
    iget-object v3, p0, Lb/x/w;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/Preference;->q()Lb/x/y;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Lb/x/y;->e()Lb/x/y$d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v3}, Lb/x/y;->e()Lb/x/y$d;

    move-result-object v3

    .line 13
    new-instance v4, Lb/x/v;

    invoke-direct {v4, p0, v2, v1, v3}, Lb/x/v;-><init>(Lb/x/w;Ljava/util/List;Ljava/util/List;Lb/x/y$d;)V

    invoke-static {v4}, Lb/y/a/o;->a(Lb/y/a/o$a;)Lb/y/a/o$b;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lb/y/a/o$b;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    .line 16
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 17
    invoke-virtual {v1}, Landroidx/preference/Preference;->f()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public f(I)Landroidx/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lb/x/w;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/x/w;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
