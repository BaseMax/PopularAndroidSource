.class public final Lc/e/a/b/d/d/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ComponentName;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    .line 5
    iput p3, p0, Lc/e/a/b/d/d/j$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 2
    iget-object p1, p0, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/d/d/j$a;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc/e/a/b/d/d/j$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/d/d/j$a;

    .line 3
    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    iget-object v3, p1, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    .line 5
    invoke-static {v1, v3}, Lc/e/a/b/d/d/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lc/e/a/b/d/d/j$a;->d:I

    iget p1, p1, Lc/e/a/b/d/d/j$a;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lc/e/a/b/d/d/j$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lc/e/a/b/d/d/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/j$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/d/d/j$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
