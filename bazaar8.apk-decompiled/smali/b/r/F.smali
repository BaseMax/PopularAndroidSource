.class public Lb/r/F;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/r/F$a;,
        Lb/r/F$d;,
        Lb/r/F$c;,
        Lb/r/F$b;
    }
.end annotation


# instance fields
.field public final a:Lb/r/F$b;

.field public final b:Lb/r/H;


# direct methods
.method public constructor <init>(Lb/r/H;Lb/r/F$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/r/F;->a:Lb/r/F$b;

    .line 3
    iput-object p1, p0, Lb/r/F;->b:Lb/r/H;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/r/E;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/r/E;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lb/r/F;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lb/r/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/r/E;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lb/r/F;->b:Lb/r/H;

    invoke-virtual {v0, p1}, Lb/r/H;->a(Ljava/lang/String;)Lb/r/E;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lb/r/F;->a:Lb/r/F$b;

    instance-of v1, v0, Lb/r/F$c;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lb/r/F$c;

    invoke-virtual {v0, p1, p2}, Lb/r/F$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/r/E;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, p2}, Lb/r/F$b;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p2

    .line 9
    :goto_0
    iget-object v0, p0, Lb/r/F;->b:Lb/r/H;

    invoke-virtual {v0, p1, p2}, Lb/r/H;->a(Ljava/lang/String;Lb/r/E;)V

    return-object p2
.end method
