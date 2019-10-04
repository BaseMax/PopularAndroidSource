.class public final Lb/H/b$a;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroidx/work/NetworkType;

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lb/H/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/H/b$a;->a:Z

    .line 3
    iput-boolean v0, p0, Lb/H/b$a;->b:Z

    .line 4
    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v1, p0, Lb/H/b$a;->c:Landroidx/work/NetworkType;

    .line 5
    iput-boolean v0, p0, Lb/H/b$a;->d:Z

    .line 6
    iput-boolean v0, p0, Lb/H/b$a;->e:Z

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lb/H/b$a;->f:J

    .line 8
    iput-wide v0, p0, Lb/H/b$a;->g:J

    .line 9
    new-instance v0, Lb/H/c;

    invoke-direct {v0}, Lb/H/c;-><init>()V

    iput-object v0, p0, Lb/H/b$a;->h:Lb/H/c;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/H/b$a;
    .locals 0

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lb/H/b$a;->g:J

    return-object p0
.end method

.method public a(Landroidx/work/NetworkType;)Lb/H/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/b$a;->c:Landroidx/work/NetworkType;

    return-object p0
.end method

.method public a(Z)Lb/H/b$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/H/b$a;->d:Z

    return-object p0
.end method

.method public a()Lb/H/b;
    .locals 1

    .line 4
    new-instance v0, Lb/H/b;

    invoke-direct {v0, p0}, Lb/H/b;-><init>(Lb/H/b$a;)V

    return-object v0
.end method

.method public b(Z)Lb/H/b$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/H/b$a;->a:Z

    return-object p0
.end method

.method public c(Z)Lb/H/b$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/H/b$a;->b:Z

    return-object p0
.end method

.method public d(Z)Lb/H/b$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/H/b$a;->e:Z

    return-object p0
.end method
