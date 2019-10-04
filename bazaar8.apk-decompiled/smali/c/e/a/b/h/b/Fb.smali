.class public final synthetic Lc/e/a/b/h/b/Fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/a/b/h/b/Eb;

.field public final b:I

.field public final c:Lc/e/a/b/h/b/t;

.field public final d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Eb;ILc/e/a/b/h/b/t;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/Fb;->a:Lc/e/a/b/h/b/Eb;

    iput p2, p0, Lc/e/a/b/h/b/Fb;->b:I

    iput-object p3, p0, Lc/e/a/b/h/b/Fb;->c:Lc/e/a/b/h/b/t;

    iput-object p4, p0, Lc/e/a/b/h/b/Fb;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/e/a/b/h/b/Fb;->a:Lc/e/a/b/h/b/Eb;

    iget v1, p0, Lc/e/a/b/h/b/Fb;->b:I

    iget-object v2, p0, Lc/e/a/b/h/b/Fb;->c:Lc/e/a/b/h/b/t;

    iget-object v3, p0, Lc/e/a/b/h/b/Fb;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/b/h/b/Eb;->a(ILc/e/a/b/h/b/t;Landroid/content/Intent;)V

    return-void
.end method
