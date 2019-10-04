.class public final Lc/c/a/n/p/a/a/n;
.super Ljava/lang/Object;
.source "VerifyEmailOtpFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/p/a/a/n$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/p/a/a/n$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/p/a/a/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/p/a/a/n$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/p/a/a/n;->a:Lc/c/a/n/p/a/a/n$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    iput-wide p2, p0, Lc/c/a/n/p/a/a/n;->c:J

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/p/a/a/n;
    .locals 1

    sget-object v0, Lc/c/a/n/p/a/a/n;->a:Lc/c/a/n/p/a/a/n$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/p/a/a/n$a;->a(Landroid/os/Bundle;)Lc/c/a/n/p/a/a/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/n/p/a/a/n;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/n/p/a/a/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/n/p/a/a/n;

    iget-object v1, p0, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lc/c/a/n/p/a/a/n;->c:J

    iget-wide v5, p1, Lc/c/a/n/p/a/a/n;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

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
    .locals 3

    iget-object v0, p0, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lc/c/a/n/p/a/a/n;->c:J

    invoke-static {v1, v2}, Lb;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyEmailOtpFragmentArgs(email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/p/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/n/p/a/a/n;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
