.class public final Lc/e/a/a/e/a$f;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lc/e/a/a/e/a$f;


# instance fields
.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lc/e/a/a/e/a$f;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/e/a$f;-><init>(IJJ)V

    sput-object v6, Lc/e/a/a/e/a$f;->a:Lc/e/a/a/e/a$f;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/e/a$f;->b:I

    .line 3
    iput-wide p2, p0, Lc/e/a/a/e/a$f;->c:J

    .line 4
    iput-wide p4, p0, Lc/e/a/a/e/a$f;->d:J

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/a$f;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/e/a$f;->b:I

    return p0
.end method

.method public static a(J)Lc/e/a/a/e/a$f;
    .locals 7

    .line 3
    new-instance v6, Lc/e/a/a/e/a$f;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/e/a$f;-><init>(IJJ)V

    return-object v6
.end method

.method public static a(JJ)Lc/e/a/a/e/a$f;
    .locals 7

    .line 2
    new-instance v6, Lc/e/a/a/e/a$f;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/e/a$f;-><init>(IJJ)V

    return-object v6
.end method

.method public static synthetic b(Lc/e/a/a/e/a$f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$f;->c:J

    return-wide v0
.end method

.method public static b(JJ)Lc/e/a/a/e/a$f;
    .locals 7

    .line 2
    new-instance v6, Lc/e/a/a/e/a$f;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/e/a$f;-><init>(IJJ)V

    return-object v6
.end method

.method public static synthetic c(Lc/e/a/a/e/a$f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$f;->d:J

    return-wide v0
.end method
