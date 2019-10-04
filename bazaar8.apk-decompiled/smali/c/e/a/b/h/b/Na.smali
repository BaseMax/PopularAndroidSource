.class public final Lc/e/a/b/h/b/Na;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Na;->e:Lc/e/a/b/h/b/Fa;

    iput-object p2, p0, Lc/e/a/b/h/b/Na;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc/e/a/b/h/b/Na;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/Na;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/e/a/b/h/b/Na;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Na;->e:Lc/e/a/b/h/b/Fa;

    iget-object v0, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/Na;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lc/e/a/b/h/b/Na;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/Na;->c:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/h/b/Na;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/e/a/b/h/b/gb;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
