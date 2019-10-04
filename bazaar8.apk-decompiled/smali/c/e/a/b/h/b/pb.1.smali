.class public final Lc/e/a/b/h/b/pb;
.super Lc/e/a/b/h/b/c;


# instance fields
.field public final synthetic e:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/wa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/pb;->e:Lc/e/a/b/h/b/gb;

    invoke-direct {p0, p2}, Lc/e/a/b/h/b/c;-><init>(Lc/e/a/b/h/b/wa;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/pb;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void
.end method
