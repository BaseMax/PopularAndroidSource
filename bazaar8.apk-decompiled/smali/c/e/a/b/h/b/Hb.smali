.class public final Lc/e/a/b/h/b/Hb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/Tb;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Eb;Lc/e/a/b/h/b/Tb;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/e/a/b/h/b/Hb;->a:Lc/e/a/b/h/b/Tb;

    iput-object p3, p0, Lc/e/a/b/h/b/Hb;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Hb;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->y()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Hb;->a:Lc/e/a/b/h/b/Tb;

    iget-object v1, p0, Lc/e/a/b/h/b/Hb;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/Tb;->a(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Hb;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->t()V

    return-void
.end method
