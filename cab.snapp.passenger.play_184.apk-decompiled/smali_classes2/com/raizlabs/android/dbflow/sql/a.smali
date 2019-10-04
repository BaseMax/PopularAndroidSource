.class public Lcom/raizlabs/android/dbflow/sql/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAsync:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/raizlabs/android/dbflow/config/c;

.field private final f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private final g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/a$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/a$1;-><init>(Lcom/raizlabs/android/dbflow/sql/a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 89
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/a$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/a$2;-><init>(Lcom/raizlabs/android/dbflow/sql/a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 24
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->d:Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->e:Lcom/raizlabs/android/dbflow/config/c;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/a;->cancel()V

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->e:Lcom/raizlabs/android/dbflow/config/c;

    .line 63
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 64
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 65
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    .line 67
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->cancel()V

    :cond_0
    return-void
.end method

.method public error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g$b;",
            ")TTAsync;"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->d:Ljava/lang/Class;

    return-object v0
.end method

.method protected onSuccess$100ded9()V
    .locals 0

    return-void
.end method

.method public success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g$c;",
            ")TTAsync;"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method
