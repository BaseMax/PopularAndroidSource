.class public final Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/structure/b/a/c;

.field final b:Lcom/raizlabs/android/dbflow/config/c;

.field c:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field d:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/c;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->f:Z

    .line 186
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/c;

    .line 187
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->b:Lcom/raizlabs/android/dbflow/config/c;

    return-void
.end method


# virtual methods
.method public final build()Lcom/raizlabs/android/dbflow/structure/b/a/g;
    .locals 1

    .line 252
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/g$a;)V

    return-object v0
.end method

.method public final error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method public final execute()V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    return-void
.end method

.method public final name(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final runCallbacksOnSameThread(Z)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->g:Z

    return-object p0
.end method

.method public final shouldRunInTransaction(Z)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->f:Z

    return-object p0
.end method

.method public final success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method
