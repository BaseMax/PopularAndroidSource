.class public final Lc/c/a/n/u/a/i;
.super Ljava/lang/Object;
.source "DeveloperReplyFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/u/a/i$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/u/a/i$a;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/u/a/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/u/a/i$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/u/a/i;->a:Lc/c/a/n/u/a/i$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/n/u/a/i;->b:I

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/u/a/i;
    .locals 1

    sget-object v0, Lc/c/a/n/u/a/i;->a:Lc/c/a/n/u/a/i$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/u/a/i$a;->a(Landroid/os/Bundle;)Lc/c/a/n/u/a/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/u/a/i;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/n/u/a/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/n/u/a/i;

    iget v1, p0, Lc/c/a/n/u/a/i;->b:I

    iget p1, p1, Lc/c/a/n/u/a/i;->b:I

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
    .locals 1

    iget v0, p0, Lc/c/a/n/u/a/i;->b:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeveloperReplyFragmentArgs(reviewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/u/a/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
