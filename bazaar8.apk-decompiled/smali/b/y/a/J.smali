.class public Lb/y/a/J;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lb/y/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Lb/y/a/d;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lb/y/a/d;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->h(II)V

    .line 7
    iget-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->ua:Z

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(IILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->va:Z

    return-void
.end method

.method public a(Lb/y/a/a$b;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lb/y/a/J;->c(Lb/y/a/a$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IIZ)V

    .line 2
    iget-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->ua:Z

    return-void
.end method

.method public b(Lb/y/a/a$b;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/y/a/J;->c(Lb/y/a/a$b;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->g(II)V

    .line 7
    iget-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->ua:Z

    return-void
.end method

.method public c(Lb/y/a/a$b;)V
    .locals 4

    .line 1
    iget v0, p1, Lb/y/a/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v3, p1, Lb/y/a/a$b;->b:I

    iget p1, p1, Lb/y/a/a$b;->d:I

    invoke-virtual {v2, v0, v3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v2, p1, Lb/y/a/a$b;->b:I

    iget v3, p1, Lb/y/a/a$b;->d:I

    iget-object p1, p1, Lb/y/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v2, p1, Lb/y/a/a$b;->b:I

    iget p1, p1, Lb/y/a/a$b;->d:I

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v2, p1, Lb/y/a/a$b;->b:I

    iget p1, p1, Lb/y/a/a$b;->d:I

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IIZ)V

    .line 2
    iget-object p1, p0, Lb/y/a/J;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->ua:Z

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ra:Landroidx/recyclerview/widget/RecyclerView$t;

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$t;->d:I

    add-int/2addr v0, p2

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$t;->d:I

    return-void
.end method