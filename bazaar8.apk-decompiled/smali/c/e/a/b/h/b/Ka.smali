.class public final Lc/e/a/b/h/b/Ka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/Ca;

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Lc/e/a/b/h/b/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ka;->b:Lc/e/a/b/h/b/Fa;

    iput-object p2, p0, Lc/e/a/b/h/b/Ka;->a:Lc/e/a/b/h/b/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ka;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, p0, Lc/e/a/b/h/b/Ka;->a:Lc/e/a/b/h/b/Ca;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/Fa;->a(Lc/e/a/b/h/b/Ca;)V

    return-void
.end method
