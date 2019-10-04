.class public Lcom/webengage/sdk/android/utils/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/utils/a/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Exception;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/InputStream;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/utils/a/g$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->b:Ljava/lang/Exception;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->c(Lcom/webengage/sdk/android/utils/a/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/utils/a/g;->d:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->d(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->e:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->e(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->f:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->f(Lcom/webengage/sdk/android/utils/a/g$a;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/g;->g:I

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->g(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->h(Lcom/webengage/sdk/android/utils/a/g$a;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/g;->i:I

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->i(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->j(Lcom/webengage/sdk/android/utils/a/g$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/webengage/sdk/android/utils/a/g;->k:J

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->k(Lcom/webengage/sdk/android/utils/a/g$a;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/g;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/utils/a/g$a;Lcom/webengage/sdk/android/utils/a/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/utils/a/g;-><init>(Lcom/webengage/sdk/android/utils/a/g$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/utils/a/g;->d:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/g;->g:I

    return v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/g;->i:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->b:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->f:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected k()J
    .locals 2

    iget-wide v0, p0, Lcom/webengage/sdk/android/utils/a/g;->k:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/g;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public o()Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-direct {v0}, Lcom/webengage/sdk/android/utils/a/g$a;-><init>()V

    iget v1, p0, Lcom/webengage/sdk/android/utils/a/g;->a:I

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(I)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/Exception;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/webengage/sdk/android/utils/a/g;->d:Z

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Z)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget v1, p0, Lcom/webengage/sdk/android/utils/a/g;->g:I

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(I)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->e:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->f:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget v1, p0, Lcom/webengage/sdk/android/utils/a/g;->i:I

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->c(I)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->b(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/webengage/sdk/android/utils/a/g;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(J)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v0

    return-object v0
.end method
