.class public final Lcom/raizlabs/android/dbflow/sql/language/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/c/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/structure/b/j;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p2

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->close()V

    :cond_0
    return-void
.end method

.method public final cursor()Landroid/database/Cursor;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    return-object v0
.end method

.method public final getCount()J
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItem(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final iterator()Lcom/raizlabs/android/dbflow/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;)V

    return-object v0
.end method

.method public final iterator(IJ)Lcom/raizlabs/android/dbflow/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V

    return-object v0
.end method

.method public final swapCursor(Lcom/raizlabs/android/dbflow/structure/b/j;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->close()V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    return-void
.end method

.method public final toCustomList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)",
            "Ljava/util/List<",
            "TTCustom;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final toCustomListClose(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)",
            "Ljava/util/List<",
            "TTCustom;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/i;->close()V

    return-object p1
.end method

.method public final toCustomModel(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)TTCustom;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final toCustomModelClose(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)TTCustom;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/i;->close()V

    return-object p1
.end method

.method public final toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 53
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/b/b;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final toListClose()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 63
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/i;->close()V

    return-object v0
.end method

.method public final toModel()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final toModelClose()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/i;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/i;->close()V

    return-object v0
.end method
