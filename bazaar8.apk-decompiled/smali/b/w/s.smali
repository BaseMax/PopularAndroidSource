.class public Lb/w/s;
.super Lb/w/K;
.source "NavGraphNavigator.java"


# annotations
.annotation runtime Lb/w/K$b;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/w/K<",
        "Lb/w/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/w/L;


# direct methods
.method public constructor <init>(Lb/w/L;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/w/K;-><init>()V

    .line 2
    iput-object p1, p0, Lb/w/s;->a:Lb/w/L;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lb/w/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/s;->a()Lb/w/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 0

    .line 2
    check-cast p1, Lb/w/r;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/w/s;->a(Lb/w/r;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/w/r;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 2

    .line 4
    invoke-virtual {p1}, Lb/w/r;->h()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lb/w/r;->a(IZ)Lb/w/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lb/w/s;->a:Lb/w/L;

    .line 7
    invoke-virtual {v0}, Lb/w/o;->e()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Lb/w/L;->a(Ljava/lang/String;)Lb/w/K;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p2}, Lb/w/o;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3, p4}, Lb/w/K;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lb/w/r;->g()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "navigation destination "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of this NavGraph"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "no start destination defined via app:startDestination for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lb/w/r;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()Lb/w/r;
    .locals 1

    .line 3
    new-instance v0, Lb/w/r;

    invoke-direct {v0, p0}, Lb/w/r;-><init>(Lb/w/K;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
