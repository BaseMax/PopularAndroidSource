.class public final Lcom/raizlabs/android/dbflow/config/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/raizlabs/android/dbflow/sql/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/raizlabs/android/dbflow/sql/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/config/g$a<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/g$a;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->a:Ljava/lang/Class;

    .line 30
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/g$a;->b:Lcom/raizlabs/android/dbflow/sql/c/b;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->b:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 31
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/g$a;->c:Lcom/raizlabs/android/dbflow/sql/b/f;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->c:Lcom/raizlabs/android/dbflow/sql/b/f;

    .line 32
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/g$a;->d:Lcom/raizlabs/android/dbflow/sql/b/b;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/g;->d:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/g$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/config/g$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/g$a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final listModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->d:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-object v0
.end method

.method public final modelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->b:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-object v0
.end method

.method public final singleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->c:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-object v0
.end method

.method public final tableClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->a:Ljava/lang/Class;

    return-object v0
.end method
