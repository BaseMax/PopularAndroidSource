.class public final Lc/e/a/a/z$a;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/J;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/e/a/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/a/l/r;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/J;Lc/e/a/a/J;Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/l/r;ZIIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/J;",
            "Lc/e/a/a/J;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/e/a/a/o$a;",
            ">;",
            "Lc/e/a/a/l/r;",
            "ZIIZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput-object p4, p0, Lc/e/a/a/z$a;->c:Lc/e/a/a/l/r;

    .line 5
    iput-boolean p5, p0, Lc/e/a/a/z$a;->d:Z

    .line 6
    iput p6, p0, Lc/e/a/a/z$a;->e:I

    .line 7
    iput p7, p0, Lc/e/a/a/z$a;->f:I

    .line 8
    iput-boolean p8, p0, Lc/e/a/a/z$a;->g:Z

    .line 9
    iput-boolean p9, p0, Lc/e/a/a/z$a;->l:Z

    .line 10
    iget p3, p2, Lc/e/a/a/J;->g:I

    iget p4, p1, Lc/e/a/a/J;->g:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lc/e/a/a/z$a;->h:Z

    .line 11
    iget-object p3, p2, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object p4, p1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    if-ne p3, p4, :cond_2

    iget-object p3, p2, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget-object p4, p1, Lc/e/a/a/J;->c:Ljava/lang/Object;

    if-eq p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lc/e/a/a/z$a;->i:Z

    .line 12
    iget-boolean p3, p2, Lc/e/a/a/J;->h:Z

    iget-boolean p4, p1, Lc/e/a/a/J;->h:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lc/e/a/a/z$a;->j:Z

    .line 13
    iget-object p2, p2, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object p1, p1, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lc/e/a/a/z$a;->k:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lc/e/a/a/M$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget v2, p0, Lc/e/a/a/z$a;->f:I

    invoke-interface {p1, v1, v0, v2}, Lc/e/a/a/M$b;->a(Lc/e/a/a/Z;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic b(Lc/e/a/a/M$b;)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/z$a;->e:I

    invoke-interface {p1, v0}, Lc/e/a/a/M$b;->b(I)V

    return-void
.end method

.method public synthetic c(Lc/e/a/a/M$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v0, v0, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-interface {p1, v1, v0}, Lc/e/a/a/M$b;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V

    return-void
.end method

.method public synthetic d(Lc/e/a/a/M$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    iget-boolean v0, v0, Lc/e/a/a/J;->h:Z

    invoke-interface {p1, v0}, Lc/e/a/a/M$b;->a(Z)V

    return-void
.end method

.method public synthetic e(Lc/e/a/a/M$b;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/z$a;->l:Z

    iget-object v1, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    iget v1, v1, Lc/e/a/a/J;->g:I

    invoke-interface {p1, v0, v1}, Lc/e/a/a/M$b;->a(ZI)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/z$a;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc/e/a/a/z$a;->f:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/g;

    invoke-direct {v1, p0}, Lc/e/a/a/g;-><init>(Lc/e/a/a/z$a;)V

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    .line 3
    :cond_1
    iget-boolean v0, p0, Lc/e/a/a/z$a;->d:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/f;

    invoke-direct {v1, p0}, Lc/e/a/a/f;-><init>(Lc/e/a/a/z$a;)V

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lc/e/a/a/z$a;->k:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lc/e/a/a/z$a;->c:Lc/e/a/a/l/r;

    iget-object v1, p0, Lc/e/a/a/z$a;->a:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v1, v1, Lc/e/a/a/l/s;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/e/a/a/l/r;->a(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/i;

    invoke-direct {v1, p0}, Lc/e/a/a/i;-><init>(Lc/e/a/a/z$a;)V

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    .line 8
    :cond_3
    iget-boolean v0, p0, Lc/e/a/a/z$a;->j:Z

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/h;

    invoke-direct {v1, p0}, Lc/e/a/a/h;-><init>(Lc/e/a/a/z$a;)V

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    .line 10
    :cond_4
    iget-boolean v0, p0, Lc/e/a/a/z$a;->h:Z

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/j;

    invoke-direct {v1, p0}, Lc/e/a/a/j;-><init>(Lc/e/a/a/z$a;)V

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    .line 12
    :cond_5
    iget-boolean v0, p0, Lc/e/a/a/z$a;->g:Z

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lc/e/a/a/z$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lc/e/a/a/a;->a:Lc/e/a/a/a;

    invoke-static {v0, v1}, Lc/e/a/a/z;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    :cond_6
    return-void
.end method
