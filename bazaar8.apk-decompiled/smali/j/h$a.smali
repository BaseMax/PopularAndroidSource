.class public final Lj/h$a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lj/h$a;->c:I

    .line 3
    iput v0, p0, Lj/h$a;->d:I

    .line 4
    iput v0, p0, Lj/h$a;->e:I

    return-void
.end method


# virtual methods
.method public a(ILjava/util/concurrent/TimeUnit;)Lj/h$a;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    .line 2
    :goto_0
    iput p1, p0, Lj/h$a;->d:I

    return-object p0

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()Lj/h;
    .locals 1

    .line 4
    new-instance v0, Lj/h;

    invoke-direct {v0, p0}, Lj/h;-><init>(Lj/h$a;)V

    return-object v0
.end method

.method public b()Lj/h$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/h$a;->a:Z

    return-object p0
.end method

.method public c()Lj/h$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/h$a;->b:Z

    return-object p0
.end method

.method public d()Lj/h$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/h$a;->f:Z

    return-object p0
.end method
