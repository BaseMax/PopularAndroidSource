.class public final synthetic Lc/e/c/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/c/d/f;

.field public final b:Lc/e/c/d/n;


# direct methods
.method public constructor <init>(Lc/e/c/d/f;Lc/e/c/d/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/j;->a:Lc/e/c/d/f;

    iput-object p2, p0, Lc/e/c/d/j;->b:Lc/e/c/d/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/c/d/j;->a:Lc/e/c/d/f;

    iget-object v1, p0, Lc/e/c/d/j;->b:Lc/e/c/d/n;

    .line 2
    iget v1, v1, Lc/e/c/d/n;->a:I

    invoke-virtual {v0, v1}, Lc/e/c/d/f;->a(I)V

    return-void
.end method
