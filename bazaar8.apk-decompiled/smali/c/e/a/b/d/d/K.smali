.class public final Lc/e/a/b/d/d/K;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/d/K;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/e/a/b/d/d/K;->a:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lc/e/a/b/d/d/K;->d:Z

    const/16 p1, 0x81

    .line 5
    iput p1, p0, Lc/e/a/b/d/d/K;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/K;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/d/d/K;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/K;->a:Ljava/lang/String;

    return-object v0
.end method
