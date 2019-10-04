.class public Lb/w/o$a;
.super Ljava/lang/Object;
.source "NavDestination.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/w/o$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/w/o;

.field public final b:Landroid/os/Bundle;

.field public final c:Z


# direct methods
.method public constructor <init>(Lb/w/o;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/w/o$a;->a:Lb/w/o;

    .line 3
    iput-object p2, p0, Lb/w/o$a;->b:Landroid/os/Bundle;

    .line 4
    iput-boolean p3, p0, Lb/w/o$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lb/w/o$a;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/w/o$a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lb/w/o$a;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lb/w/o$a;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lb/w/o$a;->c:Z

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lb/w/o$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object p1, p1, Lb/w/o$a;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/w/o$a;

    invoke-virtual {p0, p1}, Lb/w/o$a;->a(Lb/w/o$a;)I

    move-result p1

    return p1
.end method

.method public f()Lb/w/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/o$a;->a:Lb/w/o;

    return-object v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/o$a;->b:Landroid/os/Bundle;

    return-object v0
.end method
