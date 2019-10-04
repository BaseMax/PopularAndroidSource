.class public final Lc/e/a/a/k/a/f$a;
.super Lc/e/a/a/k/i;
.source "CeaDecoder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/k/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/a/k/i;",
        "Ljava/lang/Comparable<",
        "Lc/e/a/a/k/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/a/k/i;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/k/a/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/a/k/a/f$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/k/a/f$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/e/a/a/k/a/f$a;->g:J

    return-wide p1
.end method


# virtual methods
.method public a(Lc/e/a/a/k/a/f$a;)I
    .locals 8

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/c/a;->i()Z

    move-result v0

    invoke-virtual {p1}, Lc/e/a/a/c/a;->i()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/c/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 4
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/c/f;->d:J

    iget-wide v4, p1, Lc/e/a/a/c/f;->d:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 5
    iget-wide v0, p0, Lc/e/a/a/k/a/f$a;->g:J

    iget-wide v6, p1, Lc/e/a/a/k/a/f$a;->g:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/k/a/f$a;

    invoke-virtual {p0, p1}, Lc/e/a/a/k/a/f$a;->a(Lc/e/a/a/k/a/f$a;)I

    move-result p1

    return p1
.end method
