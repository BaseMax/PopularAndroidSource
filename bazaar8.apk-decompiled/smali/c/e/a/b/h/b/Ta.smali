.class public final Lc/e/a/b/h/b/Ta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ta;->b:Lc/e/a/b/h/b/Fa;

    iput-boolean p2, p0, Lc/e/a/b/h/b/Ta;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ta;->b:Lc/e/a/b/h/b/Fa;

    iget-boolean v1, p0, Lc/e/a/b/h/b/Ta;->a:Z

    invoke-static {v0, v1}, Lc/e/a/b/h/b/Fa;->a(Lc/e/a/b/h/b/Fa;Z)V

    return-void
.end method