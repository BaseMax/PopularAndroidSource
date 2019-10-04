.class public final Lc/e/a/a/j/B$a;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lc/e/a/a/n/d;

.field public e:Lc/e/a/a/j/B$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lc/e/a/a/j/B$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lc/e/a/a/j/B$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 4
    iget-wide v0, p0, Lc/e/a/a/j/B$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    iget p1, p1, Lc/e/a/a/n/d;->b:I

    add-int/2addr p2, p1

    return p2
.end method

.method public a()Lc/e/a/a/j/B$a;
    .locals 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    .line 6
    iget-object v1, p0, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    .line 7
    iput-object v0, p0, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    return-object v1
.end method

.method public a(Lc/e/a/a/n/d;Lc/e/a/a/j/B$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/B$a;->d:Lc/e/a/a/n/d;

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/B$a;->e:Lc/e/a/a/j/B$a;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lc/e/a/a/j/B$a;->c:Z

    return-void
.end method
