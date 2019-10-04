.class public Lc/e/a/a/a/a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lc/e/a/a/M$b;
.implements Lc/e/a/a/g/f;
.implements Lc/e/a/a/b/q;
.implements Lc/e/a/a/p/s;
.implements Lc/e/a/a/j/w;
.implements Lc/e/a/a/n/f$a;
.implements Lc/e/a/a/d/h;
.implements Lc/e/a/a/p/r;
.implements Lc/e/a/a/b/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/a/a$b;,
        Lc/e/a/a/a/a$c;,
        Lc/e/a/a/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/a/o/f;

.field public final c:Lc/e/a/a/Z$b;

.field public final d:Lc/e/a/a/a/a$c;

.field public e:Lc/e/a/a/M;


# direct methods
.method public constructor <init>(Lc/e/a/a/M;Lc/e/a/a/o/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 3
    :cond_0
    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lc/e/a/a/o/f;

    iput-object p2, p0, Lc/e/a/a/a/a;->b:Lc/e/a/a/o/f;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance p1, Lc/e/a/a/a/a$c;

    invoke-direct {p1}, Lc/e/a/a/a/a$c;-><init>()V

    iput-object p1, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    .line 6
    new-instance p1, Lc/e/a/a/Z$b;

    invoke-direct {p1}, Lc/e/a/a/Z$b;-><init>()V

    iput-object p1, p0, Lc/e/a/a/a/a;->c:Lc/e/a/a/Z$b;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/Z;ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;
    .locals 12

    .line 68
    invoke-virtual {p1}, Lc/e/a/a/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 69
    iget-object p3, p0, Lc/e/a/a/a/a;->b:Lc/e/a/a/o/f;

    invoke-interface {p3}, Lc/e/a/a/o/f;->a()J

    move-result-wide v1

    .line 70
    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 71
    invoke-interface {p3}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {p3}, Lc/e/a/a/M;->j()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 72
    invoke-virtual {v5}, Lc/e/a/a/j/v$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 73
    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 74
    invoke-interface {p3}, Lc/e/a/a/M;->n()I

    move-result p3

    iget v4, v5, Lc/e/a/a/j/v$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 75
    invoke-interface {p3}, Lc/e/a/a/M;->i()I

    move-result p3

    iget v4, v5, Lc/e/a/a/j/v$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 76
    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {p3}, Lc/e/a/a/M;->getCurrentPosition()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 77
    iget-object p3, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {p3}, Lc/e/a/a/M;->l()J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {p1}, Lc/e/a/a/Z;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lc/e/a/a/a/a;->c:Lc/e/a/a/Z$b;

    invoke-virtual {p1, p2, p3}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object p3

    invoke-virtual {p3}, Lc/e/a/a/Z$b;->a()J

    move-result-wide v6

    .line 79
    :cond_6
    :goto_2
    new-instance p3, Lc/e/a/a/a/b$a;

    iget-object v0, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 80
    invoke-interface {v0}, Lc/e/a/a/M;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    .line 81
    invoke-interface {v0}, Lc/e/a/a/M;->e()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lc/e/a/a/a/b$a;-><init>(JLc/e/a/a/Z;ILc/e/a/a/j/v$a;JJJ)V

    return-object p3
.end method

.method public final a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;
    .locals 2

    .line 82
    iget-object v0, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 83
    iget-object p1, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {p1}, Lc/e/a/a/M;->j()I

    move-result p1

    .line 84
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p1}, Lc/e/a/a/a/a$c;->b(I)Lc/e/a/a/a/a$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {v0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lc/e/a/a/Z;->b()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    sget-object v0, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lc/e/a/a/a/a;->a(Lc/e/a/a/Z;ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    .line 88
    :cond_3
    iget-object v0, p1, Lc/e/a/a/a/a$b;->b:Lc/e/a/a/Z;

    iget v1, p1, Lc/e/a/a/a/a$b;->c:I

    iget-object p1, p1, Lc/e/a/a/a/a$b;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/a/a/a;->a(Lc/e/a/a/Z;ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 56
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 27
    invoke-interface {v2, v0, p1, p2}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 8

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v6

    .line 23
    iget-object v0, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 24
    invoke-interface/range {v0 .. v5}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 3

    .line 16
    invoke-virtual {p0}, Lc/e/a/a/a/a;->g()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 18
    invoke-interface {v2, v0, p1, p2, p3}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v7

    .line 5
    iget-object v0, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILc/e/a/a/j/v$a;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p2}, Lc/e/a/a/a/a$c;->c(Lc/e/a/a/j/v$a;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 37
    invoke-interface {v0, p1}, Lc/e/a/a/a/b;->i(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V
    .locals 1

    .line 28
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 30
    invoke-interface {v0, p1, p3, p4}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;Ljava/io/IOException;Z)V
    .locals 6

    .line 31
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 33
    invoke-interface/range {v0 .. v5}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$c;)V
    .locals 1

    .line 38
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 39
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 40
    invoke-interface {v0, p1, p3}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 3

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 21
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/K;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 64
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lc/e/a/a/K;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/Z;Ljava/lang/Object;I)V
    .locals 1

    .line 41
    iget-object p2, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {p2, p1}, Lc/e/a/a/a/a$c;->a(Lc/e/a/a/Z;)V

    .line 42
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 44
    invoke-interface {v0, p1, p3}, Lc/e/a/a/a/b;->c(Lc/e/a/a/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/c/e;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/a/a;->g()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x1

    .line 9
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;ILc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 57
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lc/e/a/a/a/a;->h()Lc/e/a/a/a/b$a;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 60
    :goto_0
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 61
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 13
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x2

    .line 15
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 47
    invoke-interface {v2, v0, p1, p2}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 67
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 12
    invoke-interface/range {v0 .. v5}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 50
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ZI)V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 53
    invoke-interface {v2, v0, p1, p2}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 27
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->f()V

    .line 29
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 31
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 23
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p1}, Lc/e/a/a/a/a$c;->a(I)V

    .line 24
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 26
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(IJJ)V
    .locals 9

    .line 32
    invoke-virtual {p0}, Lc/e/a/a/a/a;->h()Lc/e/a/a/a/b$a;

    move-result-object v7

    .line 33
    iget-object v0, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 34
    invoke-interface/range {v0 .. v6}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILc/e/a/a/j/v$a;)V
    .locals 1

    .line 10
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p2}, Lc/e/a/a/a/a$c;->b(Lc/e/a/a/j/v$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 13
    invoke-interface {v0, p1}, Lc/e/a/a/a/b;->d(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V
    .locals 1

    .line 14
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 16
    invoke-interface {v0, p1, p3, p4}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$c;)V
    .locals 1

    .line 17
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 19
    invoke-interface {v0, p1, p3}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lc/e/a/a/c/e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x1

    .line 9
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 6

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 6
    invoke-interface/range {v0 .. v5}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 22
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 16
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->c(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lc/e/a/a/a/b;->d(Lc/e/a/a/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILc/e/a/a/j/v$a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/a/a$c;->a(ILc/e/a/a/j/v$a;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 10
    invoke-interface {v0, p1}, Lc/e/a/a/a/b;->f(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILc/e/a/a/j/v$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V
    .locals 1

    .line 11
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a/a;->d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/a/b;

    .line 13
    invoke-interface {v0, p1, p3, p4}, Lc/e/a/a/a/b;->c(Lc/e/a/a/a/b$a;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lc/e/a/a/c/e;)V
    .locals 4

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x2

    .line 6
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->a(Lc/e/a/a/a/b$a;ILc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 8
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0, p2}, Lc/e/a/a/a/a$c;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/a/a;->a(Lc/e/a/a/Z;ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 11
    :cond_1
    iget-object p2, p0, Lc/e/a/a/a/a;->e:Lc/e/a/a/M;

    invoke-interface {p2}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lc/e/a/a/Z;->b()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    sget-object p2, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/Z;ILc/e/a/a/j/v$a;)Lc/e/a/a/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 6
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->e(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lc/e/a/a/c/e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->g()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;ILc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->g()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 3
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->b(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/a/a;->j()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 3
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->h(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Lc/e/a/a/a/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->a()Lc/e/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lc/e/a/a/a/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->b()Lc/e/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lc/e/a/a/a/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->c()Lc/e/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lc/e/a/a/a/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->d()Lc/e/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/a/a/a;->a(Lc/e/a/a/a/a$b;)Lc/e/a/a/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v0}, Lc/e/a/a/a/a$c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/a/a;->i()Lc/e/a/a/a/b$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    invoke-virtual {v1}, Lc/e/a/a/a/a$c;->g()V

    .line 4
    iget-object v1, p0, Lc/e/a/a/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/a/b;

    .line 5
    invoke-interface {v2, v0}, Lc/e/a/a/a/b;->g(Lc/e/a/a/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/a/a/a/a;->d:Lc/e/a/a/a/a$c;

    .line 2
    invoke-static {v1}, Lc/e/a/a/a/a$c;->a(Lc/e/a/a/a/a$c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/a/a$b;

    .line 4
    iget v2, v1, Lc/e/a/a/a/a$b;->c:I

    iget-object v1, v1, Lc/e/a/a/a/a$b;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {p0, v2, v1}, Lc/e/a/a/a/a;->b(ILc/e/a/a/j/v$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
