.class public final Lc/c/a/n/p/k;
.super Ljava/lang/Object;
.source "RegisterFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/p/k$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/p/k$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/p/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/p/k$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/p/k;->a:Lc/c/a/n/p/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "dealerPackageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    iput p2, p0, Lc/c/a/n/p/k;->c:I

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/p/k;
    .locals 1

    sget-object v0, Lc/c/a/n/p/k;->a:Lc/c/a/n/p/k$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/p/k$a;->a(Landroid/os/Bundle;)Lc/c/a/n/p/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/p/k;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/n/p/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/n/p/k;

    iget-object v1, p0, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/c/a/n/p/k;->c:I

    iget p1, p1, Lc/c/a/n/p/k;->c:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/n/p/k;->c:I

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterFragmentArgs(dealerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/p/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/p/k;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
