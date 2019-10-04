.class public final Lj/L;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/L$a;
    }
.end annotation


# instance fields
.field public final a:Lj/D;

.field public final b:Ljava/lang/String;

.field public final c:Lj/C;

.field public final d:Lj/O;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lj/h;


# direct methods
.method public constructor <init>(Lj/L$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lj/L$a;->a:Lj/D;

    iput-object v0, p0, Lj/L;->a:Lj/D;

    .line 3
    iget-object v0, p1, Lj/L$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lj/L;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lj/L$a;->c:Lj/C$a;

    invoke-virtual {v0}, Lj/C$a;->a()Lj/C;

    move-result-object v0

    iput-object v0, p0, Lj/L;->c:Lj/C;

    .line 5
    iget-object v0, p1, Lj/L$a;->d:Lj/O;

    iput-object v0, p0, Lj/L;->d:Lj/O;

    .line 6
    iget-object p1, p1, Lj/L$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lj/a/e;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lj/L;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lj/O;
    .locals 1

    .line 2
    iget-object v0, p0, Lj/L;->d:Lj/O;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/L;->c:Lj/C;

    invoke-virtual {v0, p1}, Lj/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lj/h;
    .locals 1

    .line 2
    iget-object v0, p0, Lj/L;->f:Lj/h;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/L;->c:Lj/C;

    invoke-static {v0}, Lj/h;->a(Lj/C;)Lj/h;

    move-result-object v0

    iput-object v0, p0, Lj/L;->f:Lj/h;

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/L;->c:Lj/C;

    invoke-virtual {v0, p1}, Lj/C;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Lj/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/L;->c:Lj/C;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/L;->a:Lj/D;

    invoke-virtual {v0}, Lj/D;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/L;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lj/L$a;
    .locals 1

    .line 1
    new-instance v0, Lj/L$a;

    invoke-direct {v0, p0}, Lj/L$a;-><init>(Lj/L;)V

    return-object v0
.end method

.method public g()Lj/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/L;->a:Lj/D;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/L;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/L;->a:Lj/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/L;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
