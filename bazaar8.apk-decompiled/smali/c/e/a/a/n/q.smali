.class public final Lc/e/a/a/n/q;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lc/e/a/a/n/j$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/e/a/a/n/A;

.field public final c:Lc/e/a/a/n/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/e/a/a/n/A;Lc/e/a/a/n/j$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/n/q;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lc/e/a/a/n/q;->b:Lc/e/a/a/n/A;

    .line 6
    iput-object p3, p0, Lc/e/a/a/n/q;->c:Lc/e/a/a/n/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lc/e/a/a/n/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lc/e/a/a/n/A;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lc/e/a/a/n/A;)V
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/a/n/s;

    invoke-direct {v0, p2, p3}, Lc/e/a/a/n/s;-><init>(Ljava/lang/String;Lc/e/a/a/n/A;)V

    invoke-direct {p0, p1, p3, v0}, Lc/e/a/a/n/q;-><init>(Landroid/content/Context;Lc/e/a/a/n/A;Lc/e/a/a/n/j$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lc/e/a/a/n/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/n/q;->a()Lc/e/a/a/n/p;

    move-result-object v0

    return-object v0
.end method

.method public a()Lc/e/a/a/n/p;
    .locals 3

    .line 2
    new-instance v0, Lc/e/a/a/n/p;

    iget-object v1, p0, Lc/e/a/a/n/q;->a:Landroid/content/Context;

    iget-object v2, p0, Lc/e/a/a/n/q;->c:Lc/e/a/a/n/j$a;

    .line 3
    invoke-interface {v2}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/e/a/a/n/p;-><init>(Landroid/content/Context;Lc/e/a/a/n/j;)V

    .line 4
    iget-object v1, p0, Lc/e/a/a/n/q;->b:Lc/e/a/a/n/A;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/A;)V

    :cond_0
    return-object v0
.end method
