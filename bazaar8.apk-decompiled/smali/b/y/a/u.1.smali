.class public final Lb/y/a/u;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/y/a/u$a;,
        Lb/y/a/u$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/y/a/u;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lb/y/a/u$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:J

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/y/a/u$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/y/a/u;->a:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lb/y/a/t;

    invoke-direct {v0}, Lb/y/a/t;-><init>()V

    sput-object v0, Lb/y/a/u;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 5

    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lb/y/a/d;

    invoke-virtual {v0}, Lb/y/a/d;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lb/y/a/d;

    invoke-virtual {v3, v2}, Lb/y/a/d;->e(I)Landroid/view/View;

    move-result-object v3

    .line 32
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v3

    .line 33
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->o()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 2

    .line 34
    invoke-static {p1, p2}, Lb/y/a/u;->a(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->B()V

    .line 37
    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->n()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->o()Z

    move-result p3

    if-nez p3, :cond_1

    .line 39
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Z)V

    throw p2
.end method

.method public final a()V
    .locals 11

    .line 7
    iget-object v0, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    iget-object v4, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 10
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->qa:Lb/y/a/u$a;

    invoke-virtual {v5, v4, v1}, Lb/y/a/u$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 11
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->qa:Lb/y/a/u$a;

    iget v4, v4, Lb/y/a/u$a;->d:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 13
    iget-object v4, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    .line 15
    :cond_2
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->qa:Lb/y/a/u$a;

    .line 16
    iget v6, v5, Lb/y/a/u$a;->a:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Lb/y/a/u$a;->b:I

    .line 17
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v3

    const/4 v3, 0x0

    .line 18
    :goto_2
    iget v8, v5, Lb/y/a/u$a;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_5

    .line 19
    iget-object v8, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 20
    new-instance v8, Lb/y/a/u$b;

    invoke-direct {v8}, Lb/y/a/u$b;-><init>()V

    .line 21
    iget-object v9, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_3
    iget-object v8, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/y/a/u$b;

    .line 23
    :goto_3
    iget-object v9, v5, Lb/y/a/u$a;->c:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    if-gt v9, v6, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 24
    :goto_4
    iput-boolean v10, v8, Lb/y/a/u$b;->a:Z

    .line 25
    iput v6, v8, Lb/y/a/u$b;->b:I

    .line 26
    iput v9, v8, Lb/y/a/u$b;->c:I

    .line 27
    iput-object v4, v8, Lb/y/a/u$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    iget-object v9, v5, Lb/y/a/u$a;->c:[I

    aget v9, v9, v3

    iput v9, v8, Lb/y/a/u$b;->e:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_5
    move v3, v7

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_6
    iget-object v0, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    sget-object v1, Lb/y/a/u;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lb/y/a/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/y/a/u$b;

    .line 62
    iget-object v2, v1, Lb/y/a/u$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lb/y/a/u;->a(Lb/y/a/u$b;J)V

    .line 64
    invoke-virtual {v1}, Lb/y/a/u$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lb/y/a/u;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/y/a/u;->d:J

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->qa:Lb/y/a/u$a;

    invoke-virtual {p1, p2, p3}, Lb/y/a/u$a;->b(II)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Lb/y/a/d;

    .line 43
    invoke-virtual {v0}, Lb/y/a/d;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->I()V

    .line 45
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->qa:Lb/y/a/u$a;

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Lb/y/a/u$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 47
    iget v1, v0, Lb/y/a/u$a;->d:I

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    .line 48
    invoke-static {v1}, Lb/i/g/a;->a(Ljava/lang/String;)V

    .line 49
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->ra:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->v:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 v1, 0x0

    .line 50
    :goto_0
    iget v2, v0, Lb/y/a/u$a;->d:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    .line 51
    iget-object v2, v0, Lb/y/a/u$a;->c:[I

    aget v2, v2, v1

    .line 52
    invoke-virtual {p0, p1, v2, p2, p3}, Lb/y/a/u;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Lb/i/g/a;->a()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {}, Lb/i/g/a;->a()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lb/y/a/u$b;J)V
    .locals 3

    .line 54
    iget-boolean v0, p1, Lb/y/a/u$b;->a:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    .line 55
    :goto_0
    iget-object v2, p1, Lb/y/a/u$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget p1, p1, Lb/y/a/u$b;->e:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lb/y/a/u;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lb/y/a/u;->a(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lb/y/a/u;->a()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/y/a/u;->a(J)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    .line 1
    invoke-static {v2}, Lb/i/g/a;->a(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    :goto_0
    iput-wide v0, p0, Lb/y/a/u;->d:J

    .line 4
    invoke-static {}, Lb/i/g/a;->a()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 6
    iget-object v6, p0, Lb/y/a/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lb/y/a/u;->e:J

    add-long/2addr v2, v4

    .line 10
    invoke-virtual {p0, v2, v3}, Lb/y/a/u;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iput-wide v0, p0, Lb/y/a/u;->d:J

    .line 12
    invoke-static {}, Lb/i/g/a;->a()V

    return-void

    :catchall_0
    move-exception v2

    .line 13
    iput-wide v0, p0, Lb/y/a/u;->d:J

    .line 14
    invoke-static {}, Lb/i/g/a;->a()V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
