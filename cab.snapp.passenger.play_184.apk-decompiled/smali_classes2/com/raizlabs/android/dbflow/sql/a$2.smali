.class final Lcom/raizlabs/android/dbflow/sql/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


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

    .line 89
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a$2;->a:Lcom/raizlabs/android/dbflow/sql/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a$2;->a:Lcom/raizlabs/android/dbflow/sql/a;

    .line 1014
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a$2;->a:Lcom/raizlabs/android/dbflow/sql/a;

    .line 2014
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 93
    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$c;->onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a$2;->a:Lcom/raizlabs/android/dbflow/sql/a;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/a;->onSuccess$100ded9()V

    .line 96
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a$2;->a:Lcom/raizlabs/android/dbflow/sql/a;

    const/4 v0, 0x0

    .line 3014
    iput-object v0, p1, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    return-void
.end method
