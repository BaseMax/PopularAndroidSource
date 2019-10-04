.class final Lcom/raizlabs/android/dbflow/sql/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/sql/a;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a$1;->a:Lcom/raizlabs/android/dbflow/sql/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a$1;->a:Lcom/raizlabs/android/dbflow/sql/a;

    .line 1014
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a$1;->a:Lcom/raizlabs/android/dbflow/sql/a;

    .line 2014
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/a/g$b;->onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a$1;->a:Lcom/raizlabs/android/dbflow/sql/a;

    const/4 p2, 0x0

    .line 3014
    iput-object p2, p1, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    return-void
.end method
