.class public final Lcom/raizlabs/android/dbflow/structure/b/h;
.super Lcom/raizlabs/android/dbflow/structure/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b/d;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private final b:Lcom/raizlabs/android/dbflow/sql/language/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/d<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/sql/language/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/sql/language/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/b/d;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 22
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    return-void
.end method


# virtual methods
.method public final bindBlob(I[B)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindBlob(I[B)V

    return-void
.end method

.method public final bindDouble(ID)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindDouble(ID)V

    return-void
.end method

.method public final bindLong(IJ)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindLong(IJ)V

    return-void
.end method

.method public final bindNull(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindNull(I)V

    return-void
.end method

.method public final bindString(ILjava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    return-void
.end method

.method public final execute()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->execute()V

    return-void
.end method

.method public final executeInsert()J
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeInsert()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 60
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/d;->getTable()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    .line 61
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/d;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public final executeUpdateDelete()J
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeUpdateDelete()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 29
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/d;->getTable()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    .line 30
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/d;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public final simpleQueryForLong()J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final simpleQueryForString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
