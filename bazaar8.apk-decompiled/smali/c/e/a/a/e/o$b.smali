.class public final Lc/e/a/a/e/o$b;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lc/e/a/a/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lc/e/a/a/e/o$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lc/e/a/a/e/o$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lc/e/a/a/e/o$b;->a:J

    .line 4
    new-instance p1, Lc/e/a/a/e/o$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lc/e/a/a/e/p;->a:Lc/e/a/a/e/p;

    goto :goto_0

    :cond_0
    new-instance p2, Lc/e/a/a/e/p;

    invoke-direct {p2, v0, v1, p3, p4}, Lc/e/a/a/e/p;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    iput-object p1, p0, Lc/e/a/a/e/o$b;->b:Lc/e/a/a/e/o$a;

    return-void
.end method


# virtual methods
.method public b(J)Lc/e/a/a/e/o$a;
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/e/o$b;->b:Lc/e/a/a/e/o$a;

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/o$b;->a:J

    return-wide v0
.end method
