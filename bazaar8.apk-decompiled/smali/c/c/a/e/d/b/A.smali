.class public final Lc/c/a/e/d/b/A;
.super Lc/c/a/e/d/b/I;
.source "SharedDataSource.kt"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/e/d/b/I;-><init>(Landroid/content/Context;)V

    const-string p1, "Payment"

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/b/A;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/A;->d:Ljava/lang/String;

    return-object v0
.end method
